#Add Packages
mkdir package/openwrt-packages
pushd package/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
popd

#Add passwall依赖
mkdir package/small
pushd package/small
git clone --depth=1 https://github.com/kenzok8/small
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