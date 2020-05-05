import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

RowLayout {
    signal newItem(string text)

    RoundButton{
        leftInset: 5
        highlighted: true
        Image {
            anchors.centerIn: parent
            width: 42
            height: 40
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 1
            source: "icons/add1.png"
        }
        onClicked: {
            add();
        }
    }

    TextField{
        placeholderText: qsTr("Новый контакт")
        Layout.fillWidth: true
        id: textField
        selectByMouse: true
        focus: true
    }

    function add(){
        newItem(textField.text);
        textField.clear();
    }

    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:50;width:300}
}
##^##*/
