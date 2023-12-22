# Function
export TOME="$GITHUB_WORKSPACE"
export User="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"

mkdir -p $TOME/{tmp,Unpack,Repack,Unzip,Payload,Super,Apk,Mod/tmp,VH,Up}

Xem () { curl -s -L -G -N -H "$User" "$1"; }
Taive () { curl -s -L "$1" -o "$2"; }
Taiver () { curl -S -k "$1" -o "$2"; }
Taivewget() { wget "$1" -O "$2"; }
Taivewgetr() { wget --no-check-certificate "$1" -O "$2"; }

# Thêm ad=123, thêm env v.v
GITENV(){ [ "$2" ] || ( echo "- Error: $1"); echo "$1=$2" >> $GITHUB_ENV; eval "export $1='$2'"; }

# check chữ 
checktc(){ grep -co 'dir="auto">.*'$1'' $TOME/1.ht 2>/dev/null; }

# check box tích
checkbox(){ grep -m1 "$1</li>" $TOME/1.ht 2>/dev/null | grep -cm1 'checked=' 2>/dev/null; }

# bot chat, thêm thẻ, đóng và chat, hủy chạy work, xoá thẻ 
Chatbot(){ gh issue comment $NUMBIE --body "$1" >/dev/null & echo "$1"; }
addlabel(){ gh issue edit $NUMBIE --add-label "$1" >/dev/null; }
closechat(){ gh issue close $NUMBIE -c "$1" >/dev/null; }
cancelrun(){ gh run cancel $GITHUB_RUN_ID >/dev/null; }
removelabel(){ gh issue edit $NUMBIE --remove-label "$1" >/dev/null; }
addtitle(){ gh issue edit $NUMBIE --title "$1" >/dev/null; }

bug(){
closechat "$1"
closechat "Báo lỗi tại: [Discussions](https://github.com/chamchamfy/RROM/discussions)"
addlabel "Thất bại"
removelabel "Wait"
removelabel "Build"
cancelrun
exit 0
}
