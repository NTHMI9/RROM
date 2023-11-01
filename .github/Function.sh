# Function
export TOME="$GITHUB_WORKSPACE"
mkdir -p $TOME/{tmp,Unpack,Repack,Unzip,Payload,Super,Apk,Mod/tmp,VH,Up}

Xem () { curl -s -G -L -N -H --connect-timeout 20 "$1"; }
Taive () { curl -L -N -H --connect-timeout 20 "$1" -o "$2"; }
GITENV(){ [ "$2" ] || ( echo "- Error: $1"); echo "$1=$2" >> $GITHUB_ENV; eval "export $1='$2'"; }
checktc(){ grep -co 'dir="auto">.*'$1'' $TOME/1.ht 2>/dev/null; }
checkbox(){ grep -m1 "$1</li>" $TOME/1.ht 2>/dev/null | grep -cm1 'checked=' 2>/dev/null; }
Chatbot(){ gh issue comment $NUMBIE --body "$1" & echo "$1"; }
