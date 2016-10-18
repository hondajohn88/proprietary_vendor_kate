#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35601742:62c61f7a022744d57f57739aff0637e06ab2815e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:34710858:9899597f76817d5618cab39c41e86a23e38a0117 EMMC:/dev/block/bootdevice/by-name/recovery 62c61f7a022744d57f57739aff0637e06ab2815e 35601742 9899597f76817d5618cab39c41e86a23e38a0117:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
