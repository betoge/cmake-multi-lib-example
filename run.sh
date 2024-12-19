#!/bin/bash

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 运行主项目
cd "$SCRIPT_DIR/app/build/subbinary" || exit
./subbinary
