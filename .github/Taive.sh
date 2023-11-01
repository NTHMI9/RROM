# kakathic
. .github/Function.sh


# Cài giờ Việt Nam
sudo apt-get install curl > /dev/null;
sudo cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime

# chat bot chào & thêm nhãn chờ
Chatbot "Bắt đầu xây dựng, vui lòng chờ...<br/><br/>Sau khi xong link sẽ được gửi vào bài viết này, hoặc xem quá trình xây dựng 📱[Actions](https://github.com/chamchamfy/RROM/actions/runs/$GITHUB_RUN_ID)<br/><br/>Muốn sửa quá trình xây dựng hãy ấn nút `Close Issues`, chỉ có thể sửa khi đang tải rom về."
addlabel "Wait"

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
URLKK="$(grep -m1 'dir="auto">Url:' $TOME/1.ht | grep -o 'Url:.*<' | sed 's|Url:<||' | cut -d '"' -f2)"
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

# check url
if [ "$URL" ];then

(
sudo apt-get update >/dev/null
sudo apt-get install zstd binutils e2fsprogs erofs-utils simg2img img2simg zipalign f2fs-tools p7zip >/dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome >/dev/null
echo "protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt >/dev/null;
) & ( 


Chatbot "- Bắt đầu tải ROM: $URL...";
Taive "$URL" "$TOME/rom.zip" || exit 0
mv "$TOME/rom.zip" "$TOME/$NEMEROM"
[ -e "$TOME/$NEMEROM" ] || echo "$TOME/lag"

) & (
# Tải rom và tải file khác
while true; do
if [ "$(gh issue view $NUMBIE | grep -cm1 CLOSED)" == 1 ];then
Chatbot "Đã nhận được lệnh hủy quá trình."
cancelrun
else
[ -e "$TOME/$NEMEROM" ] && break
[ -e "$TOME/lag" ] && break
sleep 10
fi
done
)

echo
Chatbot "- Giải nén ROM ${URL##*/}..."

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
else
Chatbot "- Liên kết tải lỗi $URL..."
removelabel "Build"
removelabel "Wait"
closechat "Tạo rom thất bại, Xem log: 📱[Actions runs](https://github.com/chamchamfy/RROM/actions/runs/$GITHUB_RUN_ID)"
addlabel "Thất bại"
fi
