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
checkbox(){ grep -m1 "$1</li>" $TOME/1.ht 2>/dev/null | grep -cm1 'checked=' 2>/dev/null; }

# CÁC TÙY CHỌN WEB
Xem "https://github.com/chamchamfy/RROM/issues/$NUMBIE" > $TOME/1.ht

# get delete app
if [ "$(grep -cm1 'data-snippet-clipboard-copy-content=' $TOME/1.ht)" == 1 ];then
kjgghh=0
while true; do
grep -A"$kjgghh" -m2 'data-snippet-clipboard-copy-content=' $TOME/1.ht > $TOME/Delete_apps.md
kjgghh=$(($kjgghh + 1))
[ "$(grep -c '">' $TOME/Delete_apps.md)" == 1 ] && break
done
uc1="$(head -n1 $TOME/Delete_apps.md | grep -o 'data-snippet-clipboard-copy-content=.*' | cut -d '"' -f2)"
[ "$(wc -l < $TOME/Delete_apps.md)" -gt 1 ] && uc2="$(tail -n1 $TOME/Delete_apps.md | cut -d '"' -f1)"
sed -i -e '1d' -e '$d' $TOME/Delete_apps.md
echo "$uc1
$uc2" >> $TOME/Delete_apps.md
fi

# link url rom và size 
URLKK="$(grep -m1 'dir="auto">Url:' $TOME/1.ht | grep -o 'Url:.*<' | cut -d '"' -f2)"
#SIZEKK="$(grep -o 'dir="auto">.*GB' $TOME/1.ht | cut -d '>' -f2 | sed 's|GB||')"
RECOVERYMOD="$(checktc OrangeFox)"

# Gắn lên git env
GITENV URL $URLKK
GITENV NEMEROM "RROM_${URL##*/}"
GITENV DINHDANG "${URL##*.}"

# Thêm tiếng Việt 1=Bật, 0=Tắt
GITENV TTV "$(checkbox 'Thêm Tiếng Việt')"

# Chọn sv upload
GITENV SEVERUP "$(checktc Transfer)"

(
sudo apt-get update >/dev/null
sudo apt-get install zstd binutils e2fsprogs erofs-utils simg2img img2simg zipalign f2fs-tools p7zip >/dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome >/dev/null
echo "protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt >/dev/null;
) & ( 
echo "- Tải về: $URL";
Taive "$URL" "$TOME/rom.zip" || exit 0
mv "$TOME/rom.zip" "$TOME/$NEMEROM"
) & (
# Tải rom và tải file khác
while true; do
if [ "$(gh issue view $NUMBIE | grep -cm1 CLOSED)" == 1 ];then
gh run cancel $GITHUB_RUN_ID
else
[ -e "$TOME/$NEMEROM" ] && break
sleep 1
fi
done
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
