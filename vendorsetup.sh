# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi
rm -rf hardware/xiaomi
rm -rf hardware/qcom-caf/sdm845
rm -rf device/qcom/sepolicy_vndr-legacy-um
# clone
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_sdm710-common device/xiaomi/sdm710-common -b UDC
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_grus vendor/xiaomi -b UDC
git clone --depth=1 https://github.com/SakuraNotStupid/android_kernel_xiaomi_sdm710 kernel/xiaomi/sdm710
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
git clone https://github.com/DerpFest-AOSP/hardware_qcom_audio -b 14-caf-sdm845 hardware/qcom-caf/sdm845/audio
git clone https://github.com/DerpFest-AOSP/hardware_qcom_display -b 14-caf-sdm845 hardware/qcom-caf/sdm845/display
git clone https://github.com/DerpFest-AOSP/hardware_qcom_media -b 14-caf-sdm845 hardware/qcom-caf/sdm845/media
git clone https://github.com/SakuraKyuo/device_qcom_sepolicy_vndr-legacy-um -b patch-1 device/qcom/sepolicy_vndr-legacy-um
