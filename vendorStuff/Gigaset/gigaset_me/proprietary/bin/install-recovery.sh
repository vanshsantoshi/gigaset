#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 26828800 81f1a586f9db2c13e4acc9ac87602dbae626ec87 23216128 60eabd8d1333d2294c29223d1530f9f8c2b53a0e
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26828800:81f1a586f9db2c13e4acc9ac87602dbae626ec87; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23216128:60eabd8d1333d2294c29223d1530f9f8c2b53a0e EMMC:/dev/block/bootdevice/by-name/recovery 81f1a586f9db2c13e4acc9ac87602dbae626ec87 26828800 60eabd8d1333d2294c29223d1530f9f8c2b53a0e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
