

`Targets-noconfig.cmake` 是CMake在安装过程中自动生成的一个配置文件，主要用于处理不同构建类型（build configurations）的目标属性。

1. **命名规则**：
- `Targets.cmake`: 基本的目标定义
- `Targets-noconfig.cmake`: 默认配置的具体属性
- `Targets-debug.cmake`: Debug配置的具体属性
- `Targets-release.cmake`: Release配置的具体属性

2. **noconfig的作用**：
```cmake
# Targets-noconfig.cmake 的典型内容
set_target_properties(SubLib::sublibrary1 PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsublibrary1.so"
  IMPORTED_SONAME_NOCONFIG "libsublibrary1.so"
)
```

这个文件定义了：
- 当没有指定构建类型时使用的属性
- 库文件的具体位置
- 动态库的SONAME等信息

3. **与其他配置文件的关系**：
```cmake
# Targets.cmake 会根据当前配置加载对应的文件
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets-debug.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets-debug.cmake")
endif()

if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets-release.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets-release.cmake")
endif()

# 如果没有特定配置，使用noconfig
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets-noconfig.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets-noconfig.cmake")
endif()
```

4. **使用场景**：
- 当项目没有明确指定`CMAKE_BUILD_TYPE`时
- 在单配置生成器（如Unix Makefiles）中
- 作为默认配置的后备选项

所以，`Targets-noconfig.cmake`主要是为了：
- 提供默认的构建配置
- 确保在没有特定构建类型时，库仍然可以被正确导入和使用
- 作为多配置系统中的基础配置文件

这是CMake构建系统中处理不同构建配置的一个重要组成部分。
