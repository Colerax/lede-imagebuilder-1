#!/bin/bash

. lib/ib.sh

function main() {
	release_version "snapshots"
	firmware_packages "luci luci-proto-ipv6 luci-i18n-base-es kmod-bridge kmod-ipt-nathelper-rtsp swconfig bird4 igmpproxy udpxy luci-app-udpxy nfs-utils kmod-fs-nfs kmod-fs-nfs-common kmod-nls-cp437 kmod-nls-cp850 kmod-nls-cp852 kmod-nls-iso8859-1 kmod-nls-iso8859-15 kmod-nls-utf8 miniupnpd luci-app-upnp tcpdump htop ddns-scripts ddns-scripts_no-ip_com luci-app-ddns kmod-usb-storage kmod-fs-ntfs kmod-fs-ext4 kmod-fs-vfat block-mount block-hotplug kmod-scsi-core e2fsprogs samba36-server luci-app-samba ntfs-3g fdisk kmod-usb2 nfs-kernel-server usbutils kmod-loop kmod-usb-core kmod-usb-ohci luci-proto-ipv6 luci-app-wol ip ipsec-tools kmod-ipsec4 kmod-ipsec6 openssl-util iptables-mod-nat-extra ip6tables iptables-mod-ipsec kmod-ipt-ipsec luci-proto-relay relayd blkid mount-utils"

	prepare_imagebuilder "ar71xx" "generic"
	build_firmware "ar71xx/generic" "tl-wdr4300-v1" "lede-*-tl-wdr4300*.*"
}

main

exit 0
