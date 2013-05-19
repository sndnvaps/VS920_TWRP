# inherit from the proprietary version
-include vendor/lge/vs920/BoardConfigVendor.mk

-include device/lge/iprj-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := vs920
TARGET_OTA_ASSERT_DEVICE := vs920

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_vs920_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/vs920/kernel

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/vs920/bluetooth

# TRWP
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_ALWAYS_RMRF := true
TW_DEFAULT_EXTERNAL_STORAGE := true
# Device doesn't allow booting into the bootloader directly
TW_NO_REBOOT_BOOTLOADER := true
BOARD_CUSTOM_GRAPHICS := device/lge/vs920/recovery/graphics.c

TARGET_RECOVERY_INITRC := device/lge/vs920/init.twrp.rc


# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
