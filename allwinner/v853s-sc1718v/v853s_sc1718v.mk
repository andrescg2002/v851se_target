$(call inherit-product-if-exists, target/allwinner/v853s-common/v853s-common.mk)

PRODUCT_PACKAGES +=

PRODUCT_COPY_FILES +=

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := musicbox

PRODUCT_BRAND := allwinner
PRODUCT_NAME := v853s_sc1718v
PRODUCT_DEVICE := v853s-sc1718v
PRODUCT_MODEL := Allwinner v853s sc1718v board
