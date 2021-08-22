sudo dpkg --add-architecture i386
sudo apt update
sudo apt install git gnupg flex bison gperf build-essential \
zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
libgl1-mesa-dev g++-multilib mingw-w64-i686-dev tofrodos \
python-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool \
liblz4-tool bc lzop imagemagick libncurses5 rsync \
python-is-python3 screen
mkdir -p ~/bin
echo export PATH=\$PATH:\$HOME/bin >> ~/.bashrc
source ~/.bashrc
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+rx ~/bin/repo
mkdir halium-10.0 && cd halium-10.0
~/bin/repo init -u https://github.com/Halium/android -b halium-10.0 --depth=1
~/bin/repo sync -c -j 16
curl https://raw.githubusercontent.com/Halium/halium-devices/aa82ba147c27c7d2ede8b267b14ab2a93df42bea/manifests/xiaomi_olive.xml > halium/devices/manifests/xiaomi_olive.xml
~/halium-10.0/halium/devices/setup olive
~/halium-10.0/hybris-patches/apply-patches.sh --mb
source ~/halium-10.0/build/envsetup.sh
lunch olive
wget https://raw.githubusercontent.com/Halium/halium-boot/master/check-kernel-config
~/halium-10.0/check-kernel-config ~/halium-10.0/kernel/xiaomi/olive/arch/arm64/configs/olive-perf-defconfig -w
~/halium-10.0/check-kernel-config ~/halium-10.0/kernel/xiaomi/olive/arch/arm64/configs/olive-perf-defconfig -w
~/halium-10.0/check-kernel-config ~/halium-10.0/kernel/xiaomi/olive/arch/arm64/configs/olive-perf-defconfig -w
~/halium-10.0/check-kernel-config ~/halium-10.0/kernel/xiaomi/olive/arch/arm64/configs/olive-perf-defconfig -w
~/halium-10.0/check-kernel-config ~/halium-10.0/kernel/xiaomi/olive/arch/arm64/configs/olive-perf-defconfig -w
~/halium-10.0/check-kernel-config ~/halium-10.0/kernel/xiaomi/olive/arch/arm64/configs/olive-perf-defconfig -w
mka mkbootimg
