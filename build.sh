export ARCH=arm64
export CLANG_PATH="/opt/homebrew/Cellar/llvm/14.0.6_1/bin/"
export CROSS_COMPILE="$HOME/src/proton-clang/bin/aarch64-linux-gnu-"
export LLVM=1
export LLVM_IAS=1
export python="python3"

lkmake O=out vendor/kona-perf_defconfig -j69
lkmake O=out -j69
