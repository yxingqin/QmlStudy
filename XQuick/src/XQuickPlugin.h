#ifndef MYPLUGIN_H
#define MYPLUGIN_H

#include <QQmlExtensionPlugin>

class MyPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "XQuick/1.0")
public:
    void registerTypes(const char *uri) override;
};

#endif // MYPLUGIN_H
