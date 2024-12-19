# 设置子项目名称
project(extlib1)

# 添加库目标，将源文件编译为库
add_library(${PROJECT_NAME}  
    sync/sync.cpp
    src/extlib1.cpp
)

# 设置包含目录
# BUILD_INTERFACE: 在构建时使用的包含路径
# INSTALL_INTERFACE: 在安装后使用的包含路径
target_include_directories(${PROJECT_NAME}
    PUBLIC 
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:include>
)

# 安装库文件
# EXPORT: 导出供其他项目使用的目标
# LIBRARY: 动态库的安装位置 (.so/.dylib)
# ARCHIVE: 静态库的安装位置 (.a/.lib)
# RUNTIME: 可执行文件的安装位置 (.dll)
install(TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    INCLUDES DESTINATION include
)

# 安装头文件
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
DESTINATION include
    FILES_MATCHING PATTERN "*.h"
)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
DESTINATION include
    FILES_MATCHING PATTERN "*.hpp"
)


# # 安装导出目标
# # FILE: 生成的CMake文件名
# # NAMESPACE: 为导出的目标添加命名空间前缀
# # DESTINATION: 安装路径
# install(EXPORT ${PROJECT_NAME}Targets
#     FILE ${PROJECT_NAME}Targets.cmake
#     NAMESPACE ExtLib::
#     DESTINATION lib/cmake/${PROJECT_NAME}
# )

# # 安装配置文件
# # 这个文件包含了查找和使用库所需的所有信息
# install(FILES
#     "${CMAKE_CURRENT_SOURCE_DIR}/extlib1Config.cmake"
#     DESTINATION lib/cmake/${PROJECT_NAME}
# )