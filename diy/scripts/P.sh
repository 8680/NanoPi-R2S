#自用---旁路由

#禁用DHCP
sed -i '/^uci commit fstab/a\uci set dhcp.lan.ignore="1" ' package/lean/default-settings/files/zzz-default-settings
sed -i '/^uci commit fstab/a\uci commit dhcp' package/lean/default-settings/files/zzz-default-settings

#配置DNS & 网关
sed -i 's/#set network.$1.gateway/set network.$1.gateway/g' package/base-files/files/bin/config_generate
sed -i 's/#set network.$1.dns/set network.$1.dns/g' package/base-files/files/bin/config_generate
