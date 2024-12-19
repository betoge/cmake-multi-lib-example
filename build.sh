#!/bin/bash

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 进入 extlib 目录并编译安装
cd "$SCRIPT_DIR/extlib" || exit
mkdir -p build
cd build || exit

# 运行 cmake，并检查是否成功
if cmake -DCMAKE_BUILD_TYPE=Debug ..; then
    make
    make install
else
    echo "extlib 的 CMake 配置失败，停止执行。"
    exit 1
fi

# 进入 sublib 目录并编译安装
cd "$SCRIPT_DIR/sublib" || exit
mkdir -p build
cd build || exit

# 运行 cmake，并检查是否成功
if cmake -DCMAKE_BUILD_TYPE=Debug ..; then
    make
    make install
else
    echo "sublib 的 CMake 配置失败，停止执行。"
    exit 1
fi

# 返回主目录并编译 app
cd "$SCRIPT_DIR/app" || exit
mkdir -p build
cd build || exit

# 运行 cmake，并检查是否成功
if cmake -DCMAKE_BUILD_TYPE=Debug ..; then
    make
else
    echo "app 的 CMake 配置失败，停止执行。"
    exit 1
fi

echo "extlib 、 sublib 和 app 编译安装完成。"
