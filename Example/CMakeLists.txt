set(BIN_NAME qmlStudy)


#寻找源码
file(GLOB_RECURSE   SRCS  RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}  LIST_DIRECTORIES false 
        ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp 
        ${CMAKE_CURRENT_SOURCE_DIR}/*.h
    )
LIST(APPEND SRCS "assets/assets.qrc")

add_executable(${BIN_NAME})
target_sources(${BIN_NAME} PRIVATE ${SRCS})
target_link_libraries(${BIN_NAME} PRIVATE
        Qt5::Core
        Qt5::Quick
        Qt5::Qml
    )

