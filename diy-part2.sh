#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/10.10.10.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# Modify device Name
sed -i 's/OpenWrt/Redmi AX6/g' package/base-files/files/bin/config_generate

# Modify root Password
sed -i 's/root::0:0:99999:7:::/root:$1$wFECtu7f$TN5VYXH0jHoWEH0ing1pY.:18888:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i 's/root:$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7:::/root:$1$wFECtu7f$TN5VYXH0jHoWEH0ing1pY.:18888:0:99999:7:::/g' package/base-files/files/etc/shadow


# Modify Web UI Theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify connection number
echo net.netfilter.nf_conntrack_max=65535 >> package/base-files/files/etc/sysctl.conf

# modify default pppoe
sed -i 's/exit 0/uci set network.wan.proto=pppoe\nuci set network.wan.username=\'hzgsb05812203\'\nuci set network.wan.password=\'497765\'\nuci commit network\n/etc/init.d/network restart\nexit 0/g' package/lean/default-settings/files/zzz-default-settings

# Modify wifi Name & Password
sed -i 's/OpenWrt_2.4/Redmi_1394/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/OpenWrt_5G/Redmi_1394_5G/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/1234567890/zp961203/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=Redmi_1394_5G\n			set wireless.default_radio1.ssid=Redmi_1394/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# sed -i 's/set wireless.default_radio${devidx}.encryption=none/set wireless.default_radio${devidx}.encryption=sae-mixed\n			set wireless.default_radio${devidx}.key=zp961203/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
