# 构建
```bash
./build.sh
```

# 运行
```bash
./run.sh
```

# 清理
```bash
./clean.sh
```

# 依赖关系图示
```
├── README.md
├── app
│   ├── CMakeLists.txt
│   └── subbinary
│       ├── CMakeLists.txt
│       └── main.cpp
├── build.sh
├── clean.sh
├── docs
├── extlib
│   ├── CMakeLists.txt
│   └── extlib1
│       ├── CMakeLists.txt
│       ├── extlib1.h
│       ├── src
│       │   └── extlib1.cpp
│       └── sync
│           ├── sync.cpp
│           └── sync.hpp
├── run.sh
└── sublib
    ├── CMakeLists.txt
    ├── sublibrary1
    │   ├── CMakeLists.txt
    │   ├── load
    │   │   ├── load.cpp
    │   │   └── load.h
    │   ├── mes
    │   │   ├── mes.cpp
    │   │   └── mes.hpp
    │   ├── src
    │   │   └── sublib1.cpp
    │   ├── sublib1
    │   │   └── sublib1.h
    │   └── sublibrary1Config.cmake
    ├── sublibrary2
    │   ├── CMakeLists.txt
    │   ├── include
    │   │   └── sublib2
    │   │       └── sublib2.h
    │   ├── src
    │   │   └── sublib2.cpp
    │   └── sublibrary2Config.cmake
    └── sublibrary3
        ├── CMakeLists.txt
        ├── include
        │   └── sublib3
        │       └── sublib3.h
        ├── src
        │   └── sublib3.cpp
        └── sublibrary3Config.cmake
```
