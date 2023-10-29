#kakathic & chamchamfy

sudo rm -rf /usr/share/dotnet
sudo rm -rf /opt/ghc
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"

export TOME="$GITHUB_WORKSPACE"
export PATH="$TOME/.github/bin:$PATH"
chmod -R 777 .github/bin/* >/dev/null
chmod -R 777 .github/*.sh >/dev/null

echo "▼ Tên máy chủ"
uname -a
echo

sudo apt-get update > /dev/null
sudo apt-get install curl zstd binutils e2fsprogs erofs-utils simg2img img2simg zipalign f2fs-tools p7zip > /dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome > /dev/null

echo "pycryptodome
docopt
protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt > /dev/null

sudo cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
User="User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"
Xem () { curl -s -G -L -N -H "$User" --connect-timeout 20 "$1"; }
Turl1="https://github.com$(Xem 'https://github.com/chamchamfy/RROM/issues' | grep -m1 'Link to Issue' | grep -o 'Xây dựng ROM.*"' | cut -d '"' -f3)"
Xem "$Turl1" > $TOME/1.ht
export URL="$(grep -m1 'dir="auto">Url:' $TOME/1.ht | grep -o 'Url:.*<' | cut -d '"' -f2)"
export SIZE="$(grep -o 'dir="auto">.*GB' $TOME/1.ht | cut -d '>' -f2 | sed 's|GB||')"

echo
echo "NEMEROM=${URL##*/}" >> $GITHUB_ENV
exit 0
#Rebuild; 

echo "- Kết thúc"
