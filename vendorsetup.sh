# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi
rm -rf hardware/xiaomi
rm -rf device/qcom/sepolicy_vndr-legacy-um
# clone
git clone https://github.com/SakuraKyuo/device_xiaomi_sdm710-common_Personalon device/xiaomi/sdm710-common -b UDC
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_grus vendor/xiaomi -b UDC
git clone --depth=1 https://github.com/SakuraNotStupid/android_kernel_xiaomi_sdm710 kernel/xiaomi/sdm710 -b UDC
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
git clone https://github.com/Evolution-X/device_qcom_sepolicy_vndr-legacy-um device/qcom/sepolicy_vndr-legacy-um/
