# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi/grus
rm -rf vendor/xiaomi/sdm710-common
rm -rf vendor/xiaomi/empty
rm -rf vendor/xiaomi-backup
rm -rf kernel/xiaomi/sdm710
# backup
mkdir vendor/xiaomi/empty
mv vendor/xiaomi vendor/xiaomi-backup
# clone
git clone https://github.com/SakuraKyuo/device_xiaomi_sdm710-common_Personal device/xiaomi/sdm710-common -b UDC
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_grus vendor/xiaomi -b UDC
git clone --depth=1 https://github.com/SakuraNotStupid/android_kernel_xiaomi_sdm710 kernel/xiaomi/sdm710 -b UDC
# restore
mv vendor/xiaomi-backup/* vendor/xiaomi/
rm -rf vendor/xiaomi-backup
