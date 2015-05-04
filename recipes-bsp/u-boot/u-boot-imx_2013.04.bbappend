FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-The-TON-signal-must-be-raised-as-soon-as-possible-by.patch"
SRC_URI += "file://0002-Init-other-GPIO-s-camera-illuminators-CAN-transceive.patch"
SRC_URI += "file://0003-Pin-STBY-must-stay-low-and-pin-RESN-must-be-an-open-.patch"
SRC_URI += "file://0004-WF111-reset-pin-handled.patch"

