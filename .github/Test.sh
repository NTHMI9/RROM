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

echo "pycryptodome
docopt
protobuf<=3.20.1" > requirements.txt
pip3 install -r requirements.txt > /dev/null

echo "- Chạy thử nghiệm lệnh"

TOME="$GITHUB_WORKSPACE"
Phanvung="system system_a vendor vendor_a product product_a system_ext odm odm_a mi_ext mi_ext_a system_dlkm system_dlkm_a vendor_dlkm vendor_dlkm_a"; 
danhsach='system vendor system_ext product odm mi_ext system_dlkm vendor_dlkm'; 
Boot="boot boot_a vendor_boot vendor_boot_a"; 
pydump="python3 $TOME/.github/lib/Libpy/payload_dumper.py" 
sdat2img="python3 $TOME/.github/lib/Libpy/sdat2img.py"
lpunpack="python3 $TOME/.github/lib/Libpy/lpunpack.py"
lpmake="sudo $TOME/.github/bin/lpmake"
erofsextract="sudo $TOME/.github/bin/extract.erofs"
mkerofs="sudo $TOME/.github/bin/mkerofs"
mkext4="sudo $TOME/.github/bin/make_ext4fs"
mkuserimg="sudo $TOME/.github/bin/mkuserimg_mke2fs"
imgextract="sudo python3 $TOME/.github/lib/Libpy/imgextractor.py"
User="User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0"
Taive() { curl -s -L -H "$User" "$1" -o "$2"; }
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

Unpack() { 
if [[ -s $TOME/Unzip/payload.bin ]]; then 
 echo "- Trích xuất payload.bin" 
 $pydump $TOME/Unzip/payload.bin --out $TOME/Payload > /dev/null 
 for Ten in $Phanvung; do [[ -f $TOME/Payload/$Ten.img ]] && mv -f $TOME/Payload/$Ten.img $TOME/Super; done 
 [[ -n "$(ls $TOME/Super/*.img)" ]] && echo "- Trích xuất xong!"  
fi 

echo "- Trích xuất ứng dụng" 
cd $TOME/Super 
mkdir -p $TOME/Apk

for Doi in $Phanvung; do [[ -s $TOME/Super/$Doi.img ]] && mv -f $TOME/Super/$Doi.img $TOME/Super/${Doi//_a/}.img 2>/dev/null; done 

for Ten in system; do 
cd $TOME/Super 
 if [[ -s $TOME/Super/$Ten.img ]]; then 
  sudo mkdir -p /mnt/tmp/$Ten 
  if [[ -n "$(hexdump -n 4000 $Ten.img | grep 'e1e2 e0f5')" ]]; then 
   echo " ✓ Trích xuất $Ten.img erofs"
   cd /mnt/tmp && $erofsextract -x -f -i $TOME/Super/$Ten.img >/dev/null 2>&1
   cd $TOME/Super 
  [[ -n "$(ls /mnt/tmp/$Ten)" ]] && echo " ✓ Trích xuất $Ten.img xong"
  fi 
 fi
done 
[[ -d /mnt/tmp/config ]] && sudo cp -af /mnt/tmp/config $TOME/tmp
}

Debloat() {
Phanvung="system vendor product system_ext odm mi_ext system_dlkm vendor_dlkm"; 
Danhsachxoa=$(cat $TOME/Delete_apps.md)
API=$(sudo grep 'ro.build.version.sdk=' /mnt/tmp/system/system/build.prop | awk -F= '{print $2}');
Dinhdangphanvung="ext4"

Xoataptin() { 
for DS in $Danhsachxoa; do Tim=$(sudo find $DATA -name "$DS") && [[ -e $Tim ]] && sudo rm -rf $Tim; done 
for TT in auto-install dynamicicons; do T=$(sudo find $DATA -name "*${TT}*") && [[ -e $T ]] && sudo rm -rf $T; done 
for S in service.art service.odex service.vdex miui-service.art miui-service.odex miui-service.vdex; do s=$(sudo find $DATA -type f -name "$S") && [[ -f $s ]] && sudo rm -rf $s; done 
} 

Phanquyen() { 
cd $DATA 
if [[ -n "$(ls $DATA 2> /dev/null)" ]]; then 
 sudo find $(pwd) -type d -name "*app*" -exec sudo chmod -R 755 {} +;
 sudo find $(pwd) -type f -name "*.apk" -exec sudo chmod 644 {} +; 
 sudo find $(pwd) -type f -name "*.jar" -exec sudo chmod 644 {} +;
 sudo find $(pwd) -type f -name "*.prop" -exec sudo chmod 600 {} +;
fi 
}


Cauhinh() {
Tenfc=$TOME/tmp/config/${Ten}_file_contexts
Tenfs=$TOME/tmp/config/${Ten}_fs_config
if [[ "$Ten" == "system" ]]; then 
sudo sed -i '/system\/lost/d' $Tenfc
sudo bash -c "echo '$(grep 'system/' $Tenfc | sed -e '/\/system\/system\//d' -e '/+found/d' -e 's|system/||1' -e '/\/system /d; /\/system(/d')' >> $Tenfc"
sudo bash -c "echo '/lost\+found u:object_r:rootfs:s0
/system/lost\+found u:object_r:rootfs:s0
/system/system/media/theme/default/framework-miui-res u:object_r:system_file:s0
/system/system/bin/spm u:object_r:system_file:s0
/system/system/etc/init/init\.spm\.rc u:object_r:system_file:s0
/system/system/etc/sysconfig/nexus\.xml u:object_r:system_file:s0' >> $Tenfc"

echo "$(grep 'system/' $Tenfs | sed -e '/system\/ 0 0/d' -e 's|system/||1')
system/system/media/theme/default/framework-miui-res 0 0 0644
system/system/bin/spm 0 0 0777
system/system/etc/init/init.spm.rc 0 0 0644
system/system/etc/sysconfig/nexus.xml 0 0 0644" | sudo tee -a $Tenfs
fi
[ -d $HOME/$TEN/media ] && sudo bash -c "echo '$TEN/media/theme 0 0 0755
$TEN/media/theme/default 0 0 0755
$TEN/media/theme/default/framework-miui-res 0 0 0644' >> $Tenfs"
} 

Taoext() {
 cd $DATA
 Xoataptin 
 Phanquyen
 Cauhinh
 echo "- Tạo $Ten.img ext4" 
if [[ "$Ten" == "system" ]]; then DIEM='/'; TEN='/'; else DIEM="/$Ten"; TEN="$Ten"; fi 

if [[ "$API" -lt 28 ]]; then 
 Size=$(sudo du -sk $DATA | awk '{print int($1*1.09)}')K 
 sudo $mkext4 -J -T "1230768000" -a "$DIEM" -l "$Size" -L "$TEN" -S $Tenfc -C $Tenfs $TOME/tmp/$Ten.raw $DATA/; 
 sudo rm -rf $DATA
 [[ -n "$(ls $TAM)" ]] && sudo umount $TAM
 [[ -n "$(ls $NEW)" ]] && sudo umount $NEW
 dd if=/dev/zero of=$TOME/tmp/$Ten.img bs=3k count=1048576 >/dev/null 2>&1
 mkfs.ext4 $TOME/tmp/$Ten.img >/dev/null 2>&1
 tune2fs -c0 -i0 $TOME/tmp/$Ten.img >/dev/null 2>&1
 e2fsck -fy $TOME/tmp/$Ten.img >/dev/null 2>&1
 resize2fs $TOME/tmp/$Ten.img $Size >/dev/null 2>&1
 e2fsck -fy $TOME/tmp/$Ten.raw >/dev/null 2>&1
 sudo mount -o rw,loop $TOME/tmp/$Ten.img $NEW
 sudo mount -o ro,loop $TOME/tmp/$Ten.raw $TAM
 sudo cp -frp $TAM/* $NEW
 sudo sync
 sudo umount $TAM
 sudo umount $NEW
 sudo rm -f $TOME/tmp/$Ten.raw
else
 Size=$(sudo du -sb $DATA | awk '{print int($1*1.09)}')
 for K in odm mi_ext vendor_dlkm system_dlkm; do [[ "$Ten" == "$K" ]] && Size=$(echo "16" | awk '{print int($1*1024*1024)}'); done 
 
 sudo $mkuserimg $DATA/ $TOME/tmp/$Ten.img ext4 "$DIEM" $Size -j "0" -T "1230768000" -C $Tenfs -L "$TEN" -I "256" -M "$DIEM" -m "0" $Tenfc 

 for K in odm mi_ext vendor_dlkm system_dlkm; do [[ "$Ten" == "$K" ]] && e2fsck -fy $TOME/tmp/$K.img >/dev/null 2>&1 && resize2fs -f -M $TOME/tmp/$K.img >/dev/null 2>&1; done 
fi 

tune2fs -E hash_alg=half_md4 -O dir_index,filetype,extent,sparse_super,large_file,huge_file,uninit_bg,dir_nlink,extra_isize -e continue -o +user_xattr $TOME/tmp/$Ten.img >/dev/null 2>&1 
tune2fs -o +acl -L "$TEN" -M "$DIEM" $TOME/tmp/$Ten.img >/dev/null 2>&1;
} 

Taoerofs() { 
   cd $DATA
   Xoataptin 
   Phanquyen
   Cauhinh
   echo "- Tạo $Ten.img erofs" 
  if [[ "$Ten" == "system" ]]; then DIEM='/'; TEN='/'; else DIEM="/$Ten"; TEN="$Ten"; fi 
  $mkerofs -z lz4 -T "1230768000" $DIEM --file-contexts $Tenfc --fs-config-file $Tenfs $TOME/tmp/$Ten.img $DATA/ 2> /dev/null
} 

cd $TOME/Super 
for Ten in system; do 
 TAM=/mnt/$Ten
 DATA=/mnt/tmp/$Ten
 NEW=/mnt/new
 if [[ -s $TOME/Super/$Ten.img ]]; then 
  [[ ! -e $TAM ]] && sudo mkdir -p $TAM
  [[ ! -e $NEW ]] && sudo mkdir -p $NEW
  echo "+ Xử lý $Ten.img"
  case $Dinhdangphanvung in 
ext4) Taoext;; 
erofs) Taoerofs;; 
*) 
  if [[ -n "$(hexdump -n 4000 $Ten.img | grep 'e1e2 e0f5')" ]]; then 
   echo " ✓ $Ten.img là: erofs"
   Taoerofs
  elif [[ -n "$(hexdump -n 4000 $Ten.img | grep 'ef53')" ]]; then 
   echo " ✓ $Ten.img là: ext4 raw" 
   Taoext
  else echo " ✓ Không biết định dạng!" 
  fi 
;; 
esac 
  [[ -s $TOME/tmp/$Ten.img ]] && sudo mv -f $TOME/tmp/$Ten.img $TOME/Super && echo "+ Xử lý $Ten.img xong" || echo "- Xử lý $Ten.img lỗi"
 fi 
done 
}

Taidulieu
Unpack
Debloat
echo "- Kết thúc" 
