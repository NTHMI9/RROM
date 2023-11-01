# kakathic
TOME="$GITHUB_WORKSPACE"
cd $TOME/.github/libpy/Flash2in1
GITENV(){ [ "$2" ] || ( echo "- Error: $1" ); echo "$1=$2" >> $GITHUB_ENV; eval "$1='$2'"; }

if [ -e $TOME/ok ]; then
# Nén rom zip
echo "Tên ROM: $NEMEROM"
zip -qr $TOME/$NEMEROM *

echo
echo '- ROM đang tải lên sever vui lòng chờ...'

if [ "$SEVERUP" = 1 ];then
Dangtailen="$(curl --upload-file "$TOME/$NEMEROM" https://transfer.sh)"
GITENV LINKROM "$Dangtailen"
else
url2="$(curl -s https://api.gofile.io/getServer | jq -r .data.server)"
eval "curl -F 'file=@$TOME/$NEMEROM' 'https://$url2.gofile.io/uploadFile' > $TOME/1.json"
GITENV LINKROM "$(cat $TOME/1.json | jq -r .data.downloadPage)"
fi

# Link download 
echo
echo "Link download: $LINKROM"

GITENV THATBAI "Tạo rom thành công <br/><br/>Link Download: $LINKROM"
GITENV THETB "Hoàn thành"

else
echo '- Tạo ROM thất bại'
GITENV THATBAI "Tạo rom thất bại, Xem log: 📱[Actions runs](https://github.com/chamchamfy/RROM/actions/runs/$GITHUB_RUN_ID)"
GITENV THETB "Thất bại"
fi
