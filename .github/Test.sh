sudo rm -rf /usr/share/dotnet
sudo rm -rf /opt/ghc
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"

export TOME="$GITHUB_WORKSPACE"
export PATH="$TOME/.github/bin:$PATH"
chmod -R 777 $TOME/.github/bin/* >/dev/null
chmod -R 777 $TOME/.github/*.sh >/dev/null
sed -i -e 's/\r$//' $TOME/.github/bin/Rebuild >/dev/null 

echo "▼ Tên máy chủ"
uname -a
echo

sudo apt-get update > /dev/null
sudo apt-get install curl zstd binutils e2fsprogs erofs-utils simg2img img2simg zipalign > /dev/null
pip3 install protobuf bsdiff4 six crypto construct google docopt pycryptodome > /dev/null

echo "protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt > /dev/null

echo "- Chạy thử nghiệm lệnh"

TOME="$GITHUB_WORKSPACE"
Phanvung="system system_a vendor vendor_a product product_a system_ext odm odm_a mi_ext mi_ext_a system_dlkm system_dlkm_a vendor_dlkm vendor_dlkm_a"; 
danhsach='system vendor system_ext product odm mi_ext system_dlkm vendor_dlkm'; 
Boot="boot boot_a vendor_boot vendor_boot_a"; 

User="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"
Taive() { curl -S "$1" -o "$2"; }
mkdir -p $TOME/{tmp,Unpack,Repack,Unzip,Payload,Super,Apk,Mod/tmp,VH,Up} 

Taidulieu() { 
Tenrom=${URL##*/} && Tenr=${Tenrom%.*} && Dinhdang=${URL##*.}; 
echo "- Link Rom: $URL"
echo "TENZ=$Tenr" >> $GITHUB_ENV

echo "- Tải về" 
Taive "$URL" "$TOME/$Tenrom" 

echo "- Giải nén rom" 
if [[ -s $TOME/$Tenrom ]]; then 
[[ "$Dinhdang" == "zip" ]] && unzip -qo "$TOME/$Tenrom" -d "$TOME/Unzip"
else echo "- Không có tập tin rom"
fi 
}

Taidulieu
ls $TOME/$Tenrom
ls $TOME/Unzip
#. $TOME/Option.md
echo "- Kết thúc" 
