SET(LIB_NAME XQuick)
set(LIB_VERSION 1.0)
# 设置该模块输出目录
SET(LIBRARY_OUTPUT_PATH ${OUT_PATH}/${LIB_NAME})


#获取源码目录
file(GLOB_RECURSE   SRCS  RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}  LIST_DIRECTORIES false 
        ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp 
        ${CMAKE_CURRENT_SOURCE_DIR}/*.h
    )
LIST(APPEND SRCS "assets/assets.qrc")

add_library(${LIB_NAME} SHARED)
target_sources(${LIB_NAME} PRIVATE ${SRCS} )
target_link_libraries(${LIB_NAME} PRIVATE
        Qt5::Core
        Qt5::Quick
        Qt5::Qml
)

#输出的dll会带`lib前缀`,这是linux的习惯，我们手动取消掉
if(WIN32)
    SET_TARGET_PROPERTIES (${LIB_NAME} PROPERTIES PREFIX "")
endif()


#拷贝 qmldir 到 输出目录
add_custom_target(${LIB_NAME}_QMLFILE ALL
    COMMAND
        ${CMAKE_COMMAND} -E 
        copy
        ${CMAKE_CURRENT_LIST_DIR}/qmldir
        $<TARGET_FILE_DIR:${LIB_NAME}>/qmldir   
)
#生成plugin.qmltypes qmlplugindump xx.xx 1.0 ./ >  ./xxxx/plugin.qmltypes
add_custom_target(${LIB_NAME}_PLUGIN_INFO ALL
    qmlplugindump -nonrelocatable ${LIB_NAME} ${LIB_VERSION}  ${OUT_PATH}  > $<TARGET_FILE_DIR:${LIB_NAME}>/plugin.qmltypes
    DEPENDS ${LIB_NAME}
)