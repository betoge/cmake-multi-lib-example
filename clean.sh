#!/bin/bash

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 删除 install 和 build 目录
rm -rf "$SCRIPT_DIR/install"
rm -rf "$SCRIPT_DIR/app/build"
rm -rf "$SCRIPT_DIR/sublib/build"
rm -rf "$SCRIPT_DIR/extlib/build"
rm -rf "$SCRIPT_DIR/extlib_install"
echo "已删除 install 和 build 目录。"