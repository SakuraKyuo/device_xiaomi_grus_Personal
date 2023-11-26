# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi/grus
rm -rf vendor/xiaomi/sdm710-common
rm -rf vendor/xiaomi/empty
rm -rf vendor/xiaomi-backup
rm -rf kernel/xiaomi/sdm710
rm -rf hardware/xiaomi
rm -rf device/qcom/sepolicy_vndr-legacy-um
# backup
mkdir vendor/xiaomi/empty
mv vendor/xiaomi vendor/xiaomi-backup
# clone
git clone https://github.com/SakuraKyuo/device_xiaomi_sdm710-common_Personal device/xiaomi/sdm710-common -b UDC
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_grus vendor/xiaomi -b UDC
git clone --depth=1 https://github.com/SakuraNotStupid/android_kernel_xiaomi_sdm710 kernel/xiaomi/sdm710 -b UDC
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
git clone https://github.com/Evolution-X/device_qcom_sepolicy_vndr-legacy-um device/qcom/sepolicy_vndr-legacy-um/
# restore
mv vendor/xiaomi-backup/* vendor/xiaomi/
rm -rf vendor/xiaomi-backup
