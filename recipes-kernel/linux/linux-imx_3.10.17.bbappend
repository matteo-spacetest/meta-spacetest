FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://defconfig"
SRC_URI += "file://0001-Added-DTS-file-for-Space20010-just-a-copy-of-Engicam.patch"
SRC_URI += "file://0002-DTS-file-modified-for-Space-20010-carrier-board.-Jus.patch"
SRC_URI += "file://0003-Added-GPIO-s-LED-s-I2C-SPI-to-device-tree-WIP.patch"
SRC_URI += "file://0004-Added-SPIDEV-to-device-tree.patch"
SRC_URI += "file://0005-Modified-DTS-to-handle-other-board-GPIO-s-camera-ill.patch"
SRC_URI += "file://0006-Serial-EEPROM-added-to-DTS.patch"
SRC_URI += "file://0007-WF111-reset-pin-handled.patch"
SRC_URI += "file://0008-Integration-of-experimental-Aptina-MT9P031-CMOS-sens.patch"

