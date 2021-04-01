#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:39959408:ce7f4ad14e5a80bd3d299f46a4b785340166d374; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:10838896:ff5b44cd3a35b26bc9fb39681e5fa6564d7ec4e3 EMMC:/dev/block/platform/bootdevice/by-name/recovery ce7f4ad14e5a80bd3d299f46a4b785340166d374 39959408 ff5b44cd3a35b26bc9fb39681e5fa6564d7ec4e3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
