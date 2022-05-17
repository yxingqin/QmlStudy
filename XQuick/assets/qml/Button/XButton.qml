import QtQuick 2.15

Rectangle {
    id:root
    implicitWidth: 100
    implicitHeight: 100
    signal click()
    property color btnColor:"#00CED1"
    property alias btnBorderColor: root.border.color
    property alias text: btnText.text
    border.color: "black"
    color: btnArea.pressed ? Qt.darker(btnColor, 1.2): (btnArea.containsMouse ? Qt.lighter(btnColor, 1.2): btnColor)
    Text {
        id: btnText
        anchors.centerIn: parent
        text: "XButton"
    }
    MouseArea {
        id: btnArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            click()
        }
    }
}
