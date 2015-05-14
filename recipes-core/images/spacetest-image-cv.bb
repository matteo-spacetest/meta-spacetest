inherit core-image
inherit distro_features_check

DESCRIPTION = "Space srl - image for computer vision applications"

IMAGE_INSTALL_append = " mtd-utils imx-kobs "

FSL_KERNEL_DEFCONFIG="icore-defconfig"

SOC_IMAGE_INSTALL = ""
SOC_IMAGE_INSTALL_mx6 = "gpu-viv-bin-mx6q gpu-viv-g2d fsl-gpu-sdk"

IMAGE_INSTALL += " \
    ${SOC_IMAGE_INSTALL} \
    cpufrequtils \
    "

UBOOT_CONFIG = "sd"

LICENSE = "MIT"


SOC_EXTRA_IMAGE_FEATURES ?= "tools-testapps"

IMAGE_INSTALL_append = " mtd-utils imx-kobs "

# Add extra image features
EXTRA_IMAGE_FEATURES += " \
    ${SOC_EXTRA_IMAGE_FEATURES} \
    nfs-server \
    tools-debug \
    tools-profile \
    ssh-server-dropbear \
"

IMAGE_INSTALL += " \
    packagegroup-fsl-gstreamer \
    packagegroup-fsl-gstreamer-streamer \
    packagegroup-fsl-tools-testapps \
    packagegroup-fsl-tools-benchmark \
    gpu-viv-bin-mx6q \
    alsa-utils \
    alsa-tools \
    libfslcodec \
    libfslparser \
    libfslvpuwrap \
    firmware-imx \
    engicam-emmc-script \
    engicam-mtd-script \
    imx-lib \
    imx-test \
    imx-vpu \
    tslib \
    iproute2 \
    cantest \
    wf111-driver \
    wireless-tools \
    wpa-supplicant \
    space20010-hwtest \
"	

# TODO:
# Add the following packages below.
#    opencv
#    opencv-samples

CORE_IMAGE_EXTRA_INSTALL += " \
    packagegroup-fsl-gstreamer-full \
"

CONFLICT_DISTRO_FEATURES = "x11 wayland"

export IMAGE_BASENAME = "spacetest-image-cv"

