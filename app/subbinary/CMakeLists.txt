# 设置项目名称
project(subbinary)

# 设置查找库的路径
# 指向安装目录，用于查找已安装的库
set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../install)
set(EXTLIB_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../../extlib_install)

# 输出调试信息
message(STATUS "CMAKE_PREFIX_PATH: ${CMAKE_PREFIX_PATH}")
message(STATUS "EXTLIB_PATH: ${EXTLIB_PATH}")

# 查找必需的库
# REQUIRED 表示如果找不到库就报错
find_package(sublibrary1 REQUIRED)
find_package(sublibrary2 REQUIRED)
find_package(sublibrary3 REQUIRED)

# 输出调试信息
message(STATUS "sublibrary1_FOUND: ${sublibrary1_FOUND}")
message(STATUS "sublibrary1_DIR: ${sublibrary1_DIR}")

# 创建可执行文件
add_executable(${PROJECT_NAME} main.cpp)

# 链接所需的库
# 使用 PRIVATE 表示这些依赖仅在当前目标内部使用
target_link_libraries(${PROJECT_NAME} PRIVATE
    ${EXTLIB_PATH}/lib/libextlib1.a
    SubLib::sublibrary1
    SubLib::sublibrary2
    SubLib::sublibrary3
)

target_include_directories(${PROJECT_NAME} PRIVATE
    ${EXTLIB_PATH}/include
)

target_link_directories(${PROJECT_NAME} PRIVATE
    ${EXTLIB_PATH}/lib
)