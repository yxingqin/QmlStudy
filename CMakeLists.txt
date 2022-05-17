cmake_minimum_required(VERSION 3.21.1)

project(QmlStudy)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#指定输出路径
SET(OUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
if (NOT EXISTS ${OUT_PATH})
    file(MAKE_DIRECTORY ${OUT_PATH})
endif ()
SET(EXECUTABLE_OUTPUT_PATH ${OUT_PATH})
SET(LIBRARY_OUTPUT_PATH ${OUT_PATH})
# 指定 自定模块目录
set(QML_IMPORT_PATH ${OUT_PATH})

#查找依赖
find_package(Qt5 REQUIRED COMPONENTS Quick Core Qml)


add_subdirectory(XQuick)
add_subdirectory(Example)

