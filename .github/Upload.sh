# kakathic
TOME="$GITHUB_WORKSPACE"
cd $TOME/.github/libpy/Flash2in1

if [ -e $TOME/ok ]; then
echo "Tên ROM: $NEMEROM"
zip -qr $TOME/$NEMEROM *
url2="$(curl -s https://api.gofile.io/getServer | jq -r .data.server)"
eval "curl -F 'file=@$TOME/$NEMEROM' 'https://$url2.gofile.io/uploadFile' > $TOME/1.json"
echo
echo "LINKROM=$(cat $TOME/1.json | jq -r .data.downloadPage)" | tee -a $GITHUB_ENV
echo "MD5=$(cat $TOME/1.json | jq -r .data.md5)" | tee -a $GITHUB_ENV
echo "NAMER=$(cat $TOME/1.json | jq -r .data.fileName)" | tee -a $GITHUB_ENV
else
echo '- Tạo ROM thất bại'

fi
