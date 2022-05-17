import QtQuick 2.0

Item {
    property var control: parent
    id:root
    anchors.fill: parent
    XDragItem {
        id:leftTop
        posType: posLeftTop
        //左上角  无需设置位置 默认就在左上角
        onPosChanage: {
//            console.log(' xoffset: ' + xOffset ,'yOffset: '+ yOffset)
//            console.log(' x: ' + control.x ,'y '+ control.y)
//            console.log('width '+ control.width)
            //防止宽高变为负数
            if (control.width - xOffset > 0)
                control.width-= xOffset;
            if (control.height -yOffset > 0)
                control.height -= yOffset;

            //窗口变化后的 左界限 大于 右界
            if (control.x + xOffset < control.x + control.width)
                control.x += xOffset;
            if (control.y + yOffset < control.y + control.height)
                control.y += yOffset;
        }
    }
    XDragItem {
        id:leftBottom
        posType: posLeftBottom
        anchors.bottom: parent.bottom
        onPosChanage: {

            if (control.width - xOffset > 0)
                control.width-= xOffset;
            if (control.height +yOffset > 0)
                control.height += yOffset;
            if (control.x + xOffset < control.x + control.width)
                control.x += xOffset;
        }
    }
    XDragItem {
        posType: posLeft
        anchors.top: leftTop.bottom
        anchors.bottom: leftBottom.top
        onPosChanage: {

            if (control.width - xOffset > 0)
                control.width-= xOffset;
            if (control.x + xOffset < control.x + control.width)
                control.x += xOffset;
        }
    }

    XDragItem {
        id:rightTop
        posType: posRightTop
        anchors.top: parent.top
        anchors.right: parent.right
        onPosChanage: {
            if(control.width+xOffset>0)
                control.width+=xOffset
            if(control.y+yOffset<control.y+control.height)
                control.y+=yOffset;
            if(control.height-yOffset>0)
                control.height-=yOffset
        }
    }
    XDragItem {
        id:rightBottom
        posType: posRightBottom
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        onPosChanage: {
            if(control.width+xOffset>0)
                control.width+=xOffset
            if(control.height+yOffset>0)
                control.height+=yOffset
            parent.x=5
        }
    }

}
