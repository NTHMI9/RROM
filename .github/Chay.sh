#kakathic & chamchamfy
. .github/Function.sh

sudo rm -rf /usr/share/dotnet
sudo rm -rf /opt/ghc
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"

export PATH="$TOME/.github/bin:$PATH"
chmod -R 777 .github/bin/* >/dev/null
chmod -R 777 .github/*.sh >/dev/null

echo "▼ Tên máy chủ"
uname -a
echo

Rebuild; 

echo "- Kết thúc"
