# qml 学习笔记

环境：window11（理论上linux也是没问题的） 

Qt 5.15.2

## 说明

B站视频解说：https://www.bilibili.com/video/BV19u41167eJ

我不喜欢 QtCreator，被迫使用vscode 等工具去编写，但是cmake配置项目是一个头疼的问题。该项目提供了一个cmake配置qml模板，给大伙一个参考

- [x] 自定义Qml Plugin
- [x] 导入Plugin IDE不会报错，并且QtCreator 有提示
- [x] cmake 自动完成，无需手动干预
- [x] 支持vscode clion

### 参考文档：

1. https://cmake.org/documentation/
2. https://doc.qt.io/qt-6.2/cmake-target-property-qt-qml-import-path.html
3. https://doc.qt.io/qtcreator/creator-qml-modules-with-plugins.html
4. https://doc.qt.io/qtcreator/creator-qml-modules-with-plugins.html

### 项目结构

```tcl
├─bin # 输出
│  └─XQuick
├─Example # 主程序 
│  ├─assets
│  │  └─qml
│  └─src
└─XQuick # 自定义模块
    ├─assets
    │  └─qml
    │      ├─Button
    │      ├─Item
    │      └─MouseArea
    └─src
```



## 杂谈

我查阅了很多qt文档，设计qml很多知识点，我集中放在视频了说明吧

