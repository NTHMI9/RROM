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
GITENV(){ [ "$2" ] || ( echo "- Error: $1"); echo "$1=$2" >> $GITHUB_ENV; eval "export $1='$2'"; }
checktc(){ grep -co 'dir="auto">.*'$1'' $TOME/1.ht 2>/dev/null; }

# CÁC TÙY CHỌN WEB

Turl1="https://github.com$(Xem 'https://github.com/chamchamfy/RROM/issues' | grep -m1 'Link to Issue' | grep -o 'Xây dựng ROM.*"' | cut -d '"' -f3)"
Xem "$Turl1" > $TOME/1.ht

# get delete app
if [ "$(grep -cm1 'data-snippet-clipboard-copy-content=' $TOME/1.ht)" == 1 ];then
while true; do
kjgghh=0
grep -A"$kjgghh" -m2 'data-snippet-clipboard-copy-content=' $TOME/1.ht > $TOME/delete_app.md
kjgghh=$(($kjgghh + 1))
[ "$(grep -c '">' $TOME/delete_app.md)" == 1 ] && break
done
uc1="$(head -n1 $TOME/delete_app.md | grep -o 'data-snippet-clipboard-copy-content=.*' | cut -d '"' -f2)"
[ "$(wc -l < $TOME/delete_app.md)" -gt 1 ] && uc2="$(tail -n1 $TOME/delete_app.md | cut -d '"' -f1)"
sed -i -e '1d' -e '$d' $TOME/delete_app.md
echo "$uc1
$uc2" >> $TOME/delete_app.md
fi

# link url rom và size 
URLKK="$(grep -m1 'dir="auto">Url:' $TOME/1.ht | grep -o 'Url:.*<' | cut -d '"' -f2)"
#SIZEKK="$(grep -o 'dir="auto">.*GB' $TOME/1.ht | cut -d '>' -f2 | sed 's|GB||')"
RECOVERYMOD="$(checktc OrangeFox)"

# Gắn lên git env
GITENV URL $URLKK
GITENV NEMEROM "${URL##*/}"
GITENV DINHDANG "${URL##*.}"
GITENV NUMBERI "${Turl1##*/}"

# Tải rom và tải file khác 
(
sudo apt-get update >/dev/null
sudo apt-get install zstd binutils e2fsprogs erofs-utils simg2img img2simg zipalign f2fs-tools p7zip >/dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome >/dev/null
echo "protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt >/dev/null;
) & ( 
echo "- Tải về: $URL";
Taive "$URL" "$TOME/$NEMEROM" || exit 0
)

echo
echo "- Giải nén ROM..."

if [[ -e "$TOME/$NEMEROM" ]] && [[ -s "$TOME/$NEMEROM" ]]; then
 if [ "$DINHDANG" == "zip" ]; then
 unzip -qo "$TOME/$NEMEROM" -d "$TOME/Unzip" 2>/dev/null
 cp -rf $TOME/Unzip/META-INF/com/android $TOME/.github/libpy/Flash2in1/META-INF/com 2>/dev/null
 elif [ "$DINHDANG" == "tgz" ] || [ "$DINHDANG" == "gz" ]; then
 tar -xf "$TOME/$NEMEROM" -C "$TOME/Unzip"
 else
 echo "- Rom không phải file zip hoặc tgz, gz"
 exit 0
 fi 
fi

# Xoá tập tin rom sau khi giải nén 
sudo rm -f $TOME/$NEMEROM 2>/dev/null
