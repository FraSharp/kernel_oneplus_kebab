export CLANG_PATH="/opt/homebrew/Cellar/llvm/14.0.6_1/bin/"
export CROSS_COMPILE="$HOME/src/proton-clang/bin/aarch64-linux-gnu-"
export python="python3"

lkmake ARCH=arm64 SUBARCH=arm64 LLVM=1 LLVM_IAS=1 O=out vendor/kona-perf_defconfig -j69
lkmake ARCH=arm64 SUBARCH=arm64 LLVM=1 LLVM_IAS=1 O=out -j69

rm $HOME/Downloads/s/Image
rm $HOME/Downloads/s/dtbo.img
cp ./out/arch/arm64/boot/Image $HOME/Downloads/s
cp ./out/arch/arm64/boot/dtbo.img $HOME/Downloads/s
