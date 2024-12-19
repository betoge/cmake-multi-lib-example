# 设置最低CMake版本要求
cmake_minimum_required(VERSION 3.5)

# 设置主项目名称
project(sublib)

# 设置安装路径
# 如果用户没有指定安装路径，则使用默认值
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/../install" CACHE PATH "Installation Directory" FORCE)
endif()

# 按照依赖顺序添加子目录
# 必须先构建被依赖的库
add_subdirectory(sublibrary3)  # 基础库，不依赖其他库
add_subdirectory(sublibrary2)  # 依赖 sublibrary3
add_subdirectory(sublibrary1)  # 依赖 sublibrary2 和 sublibrary3