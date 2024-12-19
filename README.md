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
subbinary
├── depends on ──> sublibrary1
│   ├── depends on ──> sublibrary2
│   │   └── depends on ──> sublibrary3
│   └── depends on ──> sublibrary3
└── depends on ──> sublibrary2
└── depends on ──> sublibrary3
```

# 项目结构
.
├── README.md
├── app
│   ├── CMakeLists.txt
│   └── subbinary
│       ├── CMakeLists.txt
│       └── main.cpp
├── build.sh
├── clean.sh
├── install
│   ├── include
│   │   ├── sublib1
│   │   │   └── sublib1.h
│   │   ├── sublib2
│   │   │   └── sublib2.h
│   │   └── sublib3
│   │       └── sublib3.h
│   └── lib
│       ├── cmake
│       │   ├── sublibrary1
│       │   │   ├── sublibrary1Config.cmake
│       │   │   ├── sublibrary1Targets-noconfig.cmake
│       │   │   └── sublibrary1Targets.cmake
│       │   ├── sublibrary2
│       │   │   ├── sublibrary2Config.cmake
│       │   │   ├── sublibrary2Targets-noconfig.cmake
│       │   │   └── sublibrary2Targets.cmake
│       │   └── sublibrary3
│       │       ├── sublibrary3Config.cmake
│       │       ├── sublibrary3Targets-noconfig.cmake
│       │       └── sublibrary3Targets.cmake
│       ├── libsublibrary1.a
│       ├── libsublibrary2.a
│       └── libsublibrary3.a
└── sublib
    ├── CMakeLists.txt
    ├── sublibrary1
    │   ├── CMakeLists.txt
    │   ├── include
    │   │   └── sublib1
    │   │       └── sublib1.h
    │   ├── src
    │   │   └── sublib1.cpp
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