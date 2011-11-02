USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/kyocera/M9300/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := M9300

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Graphics
BOARD_EGL_CFG := ~/cm7/device/kyocera/M9300/prebuilt/lib/egl/egl.cfg
BOARD_HAS_LIMITED_EGL := true

# USB mass storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

TARGET_PREBUILT_KERNEL := device/kyocera/M9300/kernel

# Recovery 
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/kyocera/M9300/recovery/recovery_ui.c

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
