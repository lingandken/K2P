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

#### 稳定版修改R21xxx+自己的名字
sed -i 's/R22.2.2/R22.3.15_By J/g' package/lean/default-settings/files/zzz-default-settings

sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=Home_5G/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i '/set wireless.default_radio0.ssid=RT-ACRH17/a\ set wireless.default_radio1.ssid=Home_2G' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#sed -i 's/"Frp 内网穿透"/"超级服务器外网穿透"/g' feeds/luci/applications/luci-app-frpc/po/zh-cn/frp.po

sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

sed -i 's/"CPU 性能优化调节"/"处理器性能优化调节"/g' feeds/luci/applications/luci-app-cpufreq/po/zh-cn/cpufreq.po
