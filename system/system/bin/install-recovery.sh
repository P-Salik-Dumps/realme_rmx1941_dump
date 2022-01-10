#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:8ada2a9d38b27862c999be887ced65f6612138ad; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:1ccdf326bd47a85f1210ec6e919757a8735c1d92 EMMC:/dev/block/platform/bootdevice/by-name/recovery 8ada2a9d38b27862c999be887ced65f6612138ad 33554432 1ccdf326bd47a85f1210ec6e919757a8735c1d92:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
