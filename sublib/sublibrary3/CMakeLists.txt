# Set the project name
project (sublibrary3)

add_library(${PROJECT_NAME} src/sublib3.cpp)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:include>
)

# 安装库文件
install(TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin
    INCLUDES DESTINATION include
)

# 安装头文件
install(DIRECTORY include/
    DESTINATION include
)

# 安装导出目标
install(EXPORT ${PROJECT_NAME}Targets
    FILE ${PROJECT_NAME}Targets.cmake
    NAMESPACE SubLib::
    DESTINATION lib/cmake/${PROJECT_NAME}
)

# 安装 Config 文件
install(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/sublibrary3Config.cmake"
    DESTINATION lib/cmake/${PROJECT_NAME}
)
