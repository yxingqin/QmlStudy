import QtQuick 2.15
// 拖动移动
MouseArea {
    id: root
    //属性
     property var control: parent //控制对象
     property bool mask:false     //true 屏蔽
    //私有变量
    QtObject {
        id: own
        property real lastX: 0
        property real lastY: 0
    }

    onPressed: {
        own.lastX=mouseX
        own.lastY=mouseY
    }
    onContainsMouseChanged: {
         cursorShape= containsMouse==true?  Qt.SizeAllCursor:Qt.ArrowCursor;
    }
    onPositionChanged: {
            if(!mask&&pressed&&control)
            {
                control.x+=mouseX-own.lastX;
                control.y+=mouseY-own.lastY;
            }
    }

}
