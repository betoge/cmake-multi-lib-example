include(CMakeFindDependencyMacro)

# 添加依赖项
find_dependency(sublibrary2)
find_dependency(sublibrary3)

include("${CMAKE_CURRENT_LIST_DIR}/sublibrary1Targets.cmake") 