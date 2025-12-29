#!/bin/bash

# 修改默认IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

rm -rf package/emortal/luci-app-athena-led
rm -rf package/luci/applications/luci-app-lucky
rm -rf package/luci/applications/luci-app-oaf

git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

# Lucky
git clone --depth=1 https://github.com/gdy666/luci-app-lucky.git package/lucky

git clone --depth=1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter    
