echo 'Starting to clone stuffs needed for your device. Please Wait...'

# Stuffs to rm -rf
rm -rf kernel/google/wahoo
rm -rf device/google/wahoo
rm -rf vendor/google/taimen
rm -rf hardware/qcom/audio
rm -rf hardware/qcom/camera
rm -rf hardware/qcom/display
rm -rf hardware/qcom/gps
rm -rf hardware/qcom/data/ipacfg-mgr
rm -rf hardware/qcom/media
rm -rf hardware/qcom/wlan
rm -rf hardware/lineage/compat
rm -rf packages/apps/GcamMod

# Tree Dependencies
git clone --depth=1 https://github.com/PixelExperience-Devices/device_google_wahoo.git -b thirteen device/google/wahoo
git clone --depth=1 https://github.com/PixelExperience-Devices/kernel_google_wahoo.git -b thirteen kernel/google/wahoo
git clone --depth=1 https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_google_taimen.git -b thirteen vendor/google/taimen

# Common Hardware Qcom
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_audio.git -b lineage-20.0 hardware/qcom/audio
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_camera.git -b lineage-20.0 hardware/qcom/camera
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_display.git -b lineage-20.0 hardware/qcom/display
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_gps.git -b lineage-20.0 hardware/qcom/gps
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_data_ipacfg-mgr.git -b lineage-20.0 hardware/qcom/data/ipacfg-mgr
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_media.git -b lineage-20.0 hardware/qcom/media
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_wlan.git -b lineage-20.0 hardware/qcom/wlan
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git -b lineage-20.0 hardware/lineage/compat
git clone --depth=1 https://gitlab.com/asriadirahim/google_camera.git -b thirteen packages/apps/GcamMod

echo 'Cloning process has been completed...'
