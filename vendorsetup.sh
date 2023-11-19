# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi/grus
rm -rf vendor/xiaomi/sdm710-common
rm -rf vendor/xiaomi-backup
rm -rf kernel/xiaomi
rm -rf hardware/xiaomi
# clone
git clone https://github.com/SakuraKyuo/device_xiaomi_sdm710-common device/xiaomi/sdm710-common -b UDC
mkdir vendor/xiaomi-backup
mv vendor/xiaomi/* vendor/xiaomi-backup/
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_grus vendor/xiaomi -b UDC
mv vendor/xiaomi-backup/* vendor/xiaomi/
git clone --depth=1 https://github.com/SakuraNotStupid/android_kernel_xiaomi_sdm710 kernel/xiaomi/sdm710 -b UDC
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
