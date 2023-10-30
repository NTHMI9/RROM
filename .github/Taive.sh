# kakathic
export TOME="$GITHUB_WORKSPACE"
mkdir -p $TOME/{tmp,Unpack,Repack,Unzip,Payload,Super,Apk,Mod/tmp,VH,Up}

# Cài giờ Việt Nam
sudo apt-get install curl > /dev/null;
sudo cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
# Fuc
User="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"
Xem () { curl -s -G -L -N -H "$User" --connect-timeout 20 "$1"; }
Taive () { curl -L -N -H "$User" --connect-timeout 20 "$1" -o "$2"; }
GITENV(){ [ "$2" ] || ( echo "- Error: $1" && exit 1 ); echo "$1=$2" >> $GITHUB_ENV; eval "$1=$2"; }

# CÁC TÙY CHỌN WEB

# link url rom và size
Turl1="https://github.com$(Xem 'https://github.com/chamchamfy/RROM/issues?q=is%3Aissue+is%3Aclosed' | grep -m1 'Link to Issue' | grep -o 'Xây dựng ROM.*"' | cut -d '"' -f3)"
Xem "$Turl1" > $TOME/1.ht
URLKK="$(grep -m1 'dir="auto">Url:' $TOME/1.ht | grep -o 'Url:.*<' | cut -d '"' -f2)"
#URLKK="$(grep -m1 'dir="auto">Url:' $TOME/1.ht | awk -F'Url:' '{print $2}')"
SIZEKK="$(grep -o 'dir="auto">.*GB' $TOME/1.ht | cut -d '>' -f2 | sed 's|GB||')"

# Gắn lên git env
GITENV URL $URLKK
GITENV SIZE $SIZEKK
GITENV NEMEROM "${URL##*/}"
GITENV DINHDANG "${URL##*.}"

# Tải rom và tải file khác 
(
sudo apt-get update >/dev/null
sudo apt-get install zstd binutils e2fsprogs erofs-utils simg2img img2simg zipalign f2fs-tools p7zip >/dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome >/dev/null
echo "protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt >/dev/null;
) & ( 
echo "- Tải về: $URL";
Taive "$URL" "$TOME/$NEMEROM"
)

echo
echo "- Giải nén ROM..."

if [[ -s "$TOME/$NEMEROM" ]]; then
 if [ "$DINHDANG" == "zip" ]; then
 unzip -qo "$TOME/$NEMEROM" -d "$TOME/Unzip"
 cp -rf $TOME/Unzip/META-INF/com/android $TOME/.github/libpy/Flash2in1/META-INF/com 2>/dev/null
 elif [ "$DINHDANG" == "tgz" ] || [ "$DINHDANG" == "gz" ]; then
 tar -xf "$TOME/$NEMEROM" -C "$TOME/Unzip"
 fi
 [[ -s "$TOME/Unzip/images/super.img" ]] && mv -f $TOME/Unzip/images/super.img $TOME/Unzip/super.img
 [[ -s "$TOME/Unzip/images/super.img.zst" ]] && zstd -d $TOME/Unzip/images/super.img.zst -o $TOME/Unzip/super.img
 [[ -s "$TOME/Unzip/images/super.img.brx" ]] && zstd -D $TOME/Unzip/images/super.transfer.list -d $TOME/Unzip/images/super.img.brx -o $TOME/Unzip/super.img
 else
 echo "- Rom không phải file zip hoặc tgz, gz"
 exit 1
fi
sudo rm -f $TOME/$NEMEROM 2>/dev/null
