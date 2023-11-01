# kakathic
TOME="$GITHUB_WORKSPACE"
cd $TOME/.github/libpy/Flash2in1
GITENV(){ [ "$2" ] || ( echo "- Error: $1" ); echo "$1=$2" >> $GITHUB_ENV; eval "$1='$2'"; }
Chatbot(){ gh issue comment $NUMBIE --body "$1" & echo "$1"; }

if [ -e $TOME/ok ]; then
# Nén rom zip
Chatbot "Nén ROM: $NEMEROM"
zip -qr $TOME/$NEMEROM *

echo
Chatbot '- ROM đang tải lên sever vui lòng chờ...'

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

Chatbot "Tạo rom thành công <br/><br/>Link Download: $LINKROM"
gh issue edit $NUMBIE --add-label "Hoàn thành"

else
Chatbot "Tạo rom thất bại, Xem log: 📱[Actions runs](https://github.com/chamchamfy/RROM/actions/runs/$GITHUB_RUN_ID)"
gh issue edit $NUMBIE --add-label "Thất bại"
fi

gh issue edit $NUMBIE --remove-label "Build"
gh issue edit $NUMBIE --remove-label "Wait"
