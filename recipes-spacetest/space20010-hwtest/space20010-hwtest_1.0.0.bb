SUMMARY = "Space 20010 Carrier Board - Hardware Test"
DESCRIPTION = "This package provides scripts to test the Space 20010 Carrier Board."
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

MY_INSTALL_DIR = "${ROOT_HOME}/${PN}"

FILES_${PN} = "${MY_INSTALL_DIR}"
FILES_${PN}-dbg += "${MY_INSTALL_DIR}/spi/.debug"

S = "${WORKDIR}/spi"

SRC_URI = "file://hwtest.sh                      \
           file://i2c-camregs/test-camregs.sh    \
           file://i2c-eeprom/test-eeprom.sh      \
           file://keypad/add-curdir-to-path.sh   \
           file://keypad/export-gpios.sh         \
           file://keypad/rd                      \
           file://keypad/wr                      \
           file://keypad/test-keypad.sh          \
           file://keypad/unexport-gpios.sh       \
           file://led/test-leds.sh               \
           file://serial/serial-loopback-test.sh \
           file://serial/test-second-serial.sh   \
           file://spi/Makefile                   \
           file://spi/spidev_fdx.c               \
           file://spi/spidev_test.c              \
           file://unused-gpio/export-gpios.sh    \
           file://unused-gpio/unexport-gpios.sh  \
           file://wifi/test-wifi.sh              \
           "

do_compile () {
    make
}

do_install () {
    install -D -m 0755 ${WORKDIR}/hwtest.sh                      ${D}${MY_INSTALL_DIR}/hwtest.sh
    install -D -m 0755 ${WORKDIR}/i2c-camregs/test-camregs.sh    ${D}${MY_INSTALL_DIR}/i2c-camregs/test-camregs.sh
    install -D -m 0755 ${WORKDIR}/i2c-eeprom/test-eeprom.sh      ${D}${MY_INSTALL_DIR}/i2c-eeprom/test-eeprom.sh
    install -D -m 0755 ${WORKDIR}/keypad/add-curdir-to-path.sh   ${D}${MY_INSTALL_DIR}/keypad/add-curdir-to-path.sh
    install -D -m 0755 ${WORKDIR}/keypad/export-gpios.sh         ${D}${MY_INSTALL_DIR}/keypad/export-gpios.sh
    install -D -m 0755 ${WORKDIR}/keypad/rd                      ${D}${MY_INSTALL_DIR}/keypad/rd
    install -D -m 0755 ${WORKDIR}/keypad/wr                      ${D}${MY_INSTALL_DIR}/keypad/wr
    install -D -m 0755 ${WORKDIR}/keypad/test-keypad.sh          ${D}${MY_INSTALL_DIR}/keypad/test-keypad.sh
    install -D -m 0755 ${WORKDIR}/keypad/unexport-gpios.sh       ${D}${MY_INSTALL_DIR}/keypad/unexport-gpios.sh
    install -D -m 0755 ${WORKDIR}/led/test-leds.sh               ${D}${MY_INSTALL_DIR}/led/test-leds.sh
    install -D -m 0755 ${WORKDIR}/serial/serial-loopback-test.sh ${D}${MY_INSTALL_DIR}/serial/serial-loopback-test.sh
    install -D -m 0755 ${WORKDIR}/serial/test-second-serial.sh   ${D}${MY_INSTALL_DIR}/serial/test-second-serial.sh
    install -D -m 0755 ${WORKDIR}/spi/Makefile                   ${D}${MY_INSTALL_DIR}/spi/Makefile
    install -D -m 0755 ${WORKDIR}/spi/spidev_fdx                 ${D}${MY_INSTALL_DIR}/spi/spidev_fdx
    install -D -m 0755 ${WORKDIR}/spi/spidev_fdx.c               ${D}${MY_INSTALL_DIR}/spi/spidev_fdx.c
    install -D -m 0755 ${WORKDIR}/spi/spidev_test                ${D}${MY_INSTALL_DIR}/spi/spidev_test
    install -D -m 0755 ${WORKDIR}/spi/spidev_test.c              ${D}${MY_INSTALL_DIR}/spi/spidev_test.c
    install -D -m 0755 ${WORKDIR}/unused-gpio/export-gpios.sh    ${D}${MY_INSTALL_DIR}/unused-gpio/export-gpios.sh
    install -D -m 0755 ${WORKDIR}/unused-gpio/unexport-gpios.sh  ${D}${MY_INSTALL_DIR}/unused-gpio/unexport-gpios.sh
    install -D -m 0755 ${WORKDIR}/wifi/test-wifi.sh              ${D}${MY_INSTALL_DIR}/wifi/test-wifi.sh
}

