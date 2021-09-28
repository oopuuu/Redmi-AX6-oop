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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify device Name
#sed -i 's/'OpenWrt'/Redmi AX6/g' package/base-files/files/bin/config_generate

# Modify root Password
#sed -i 's/root::0:0:99999:7:::/root:$1$wFECtu7f$TN5VYXH0jHoWEH0ing1pY.:18888:0:99999:7:::/g' package/base-files/files/etc/shadow

# Modify wifi Name & Password
#sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=Redmi_1394_5G\n			set wireless.default_radio1.ssid=Redmi_1394/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i 's/set wireless.default_radio${devidx}.encryption=none/set wireless.default_radio${devidx}.encryption=sae-mixed\n			set wireless.default_radio${devidx}.key=zp961203/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
