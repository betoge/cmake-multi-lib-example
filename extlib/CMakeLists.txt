# 设置最低CMake版本要求
cmake_minimum_required(VERSION 3.5)

# 设置主项目名称
project(extlib)

# 设置安装路径
# 如果用户没有指定安装路径，则使用默认值
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set(CMAKE_INSTALL_PREFIX "${CMAKE_CURRENT_SOURCE_DIR}/../extlib_install" CACHE PATH "Installation Directory" FORCE)
endif()

# 按照依赖顺序添加子目录
# 必须先构建被依赖的库
add_subdirectory(extlib1) 