#include "XQuickPlugin.h"

#include <qqml.h>

void MyPlugin::registerTypes(const char *uri)
{
    //建议cpp 和qml 文件的item都进行注册
    // qmlRegisterType<MyQuickItem>(uri, 1, 0, "MyQuickItem");
    qmlRegisterType(QUrl("qrc:/qml/Button/XButton.qml"), uri, 1, 0, "XButton");
}
