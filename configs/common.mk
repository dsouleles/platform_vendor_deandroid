<<<<<<< HEAD
SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/aicp/overlay/dictionaries

PRODUCT_PACKAGES += \
    BluetoothExt \
    CellBroadcastReceiver \
    libemoji \
    LatinImeDictionaryPack \
    Microbes \
    Stk \
    su \
    procmem \
    procrank \
    Superuser \
    Torch

# AICP packages
PRODUCT_PACKAGES += \
    PhotoPhase \
    SlimLauncher \
    Eleven \
    Development \
    LockClock \
    AICP_OTA \
    AudioFX \
    PhotoPhase \
    CMFileManager \
    OmniSwitch

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
    libnamparser

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aicp/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/aicp/prebuilt/bin/blacklist:system/addon.d/blacklist

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/common/bin/otasigcheck.sh:system/bin/otasigcheck.sh

# Installer
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/common/bin/persist.sh:install/bin/persist.sh \
    vendor/aicp/prebuilt/common/etc/persist.conf:system/etc/persist.conf

PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/aicp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/common/etc/init.local.rc:root/init.aicp.rc \
    vendor/aicp/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/aicp/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/aicp/prebuilt/common/etc/init.d/99crontab:system/etc/init.d/99crontab \
    vendor/aicp/prebuilt/common/etc/init.d/99trim_partitions:system/etc/init.d/99trim_partitions \
    vendor/aicp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/aicp/prebuilt/common/etc/cron.d/root:system/etc/cron.d/root \
    vendor/aicp/prebuilt/common/bin/trim_partitions:system/bin/trim_partitions \
    vendor/aicp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Bring in camera effects
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aicp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
# SuperSU
PRODUCT_COPY_FILES += \
    vendor/deandroid/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/deandroid/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon


