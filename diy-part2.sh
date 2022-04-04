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
sed -i 's/R22.4.1/Build $(TZ=UTC-8 date "+%Y.%m.%d") By JJ/g' package/lean/default-settings/files/zzz-default-settings
