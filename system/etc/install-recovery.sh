#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS:5353472:ec7dff738a33b6d540b0f431d6261dc1f4f0c140; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/platform/sdhci-tegra.3/by-name/LNX:5001216:48b9459443dcd1765532c561048feca231708766 EMMC:/dev/block/platform/sdhci-tegra.3/by-name/SOS ec7dff738a33b6d540b0f431d6261dc1f4f0c140 5353472 48b9459443dcd1765532c561048feca231708766:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
