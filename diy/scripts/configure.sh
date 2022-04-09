#Add Packages
pushd package
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
popd

#Add passwall依赖
pushd package
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall
popd

#Add pushbot全能推送
rm -rf package/openwrt-packages/luci-app-pushbot
rm -rf feeds/luci/applications/luci-app-pushbot
mkdir package/pushbot
pushd package/pushbot
git clone --depth=1 https://github.com/8680/luci-app-pushbot
popd

# 将默认 shell 更改为 zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

#取消首次登陆WEB页密码 设置ttyd免帐号登录
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings
sed -i 's/\/bin\/login/\/bin\/login -f root/' feeds/packages/utils/ttyd/files/ttyd.config
