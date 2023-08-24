# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi
rm -rf hardware/xiaomi
rm -rf packages/apps/GCamGOPrebuilt
# clone
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_sdm710-common device/xiaomi/sdm710-common
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_grus vendor/xiaomi
git clone --depth=1 https://github.com/SakuraNotStupid/android_kernel_xiaomi_sdm710 kernel/xiaomi/sdm710
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/ArrowOS-Devices/android_packages_apps_GCamGOPrebuilt -b arrow-13.1 packages/apps/GCamGOPrebuilt
