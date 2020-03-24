unset SED
unset GREP_OPTIONS 
export GREP_OPTIONS= 
export PATH=$PATH:~/openwrt/openwrt/staging_dir/host/bin 
export PATH=$PATH:~/openwrt/openwrt/staging_dir/toolchain-mips_34kc_gcc-5.3.0_musl-1.1.16
./scripts/feeds update -a
./scripts/feeds install -a
cp ../configs/openwrt-dot-config .config
make V=s
