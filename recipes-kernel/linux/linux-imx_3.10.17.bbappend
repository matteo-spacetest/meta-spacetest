FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://defconfig"
SRC_URI += "file://0001-Added-DTS-file-for-Space20010-just-a-copy-of-Engicam.patch"
SRC_URI += "file://0002-DTS-file-modified-for-Space-20010-carrier-board.-Jus.patch"
SRC_URI += "file://0003-Added-GPIO-s-LED-s-I2C-SPI-to-device-tree-WIP.patch"

