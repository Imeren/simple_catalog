import QtQuick 2.14
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14

Rectangle {
    id: me
    property alias icon: icon.source
    property alias text: label.text
    property alias status: status.text // свойство для статуса
    property bool selected: false

    signal leftClick()
    signal rightClick()

    width: parent.width
    height: 60

    color: {
        if (selected)
            return "#ebebeb"
        if (area.containsMouse)
            return "#f1f1f1"
        return "white";
    }

    RowLayout{
        anchors.fill: parent
        spacing: 5
        Image {
            id: icon
            source: "icons/user-profile.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 10
        }
        ColumnLayout{
            Label{
                id: label
                Layout.fillWidth: true
                font.bold: true
            }
            // lable для отображение статуса
            Label{
                id: status
                font.bold: false
                color: "grey"
                text: "Всем привет! Я использую WhatsApp."
            }
        }
    }
    MouseArea{
        id: area
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button === Qt.LeftButton)
                leftClick();
            if (mouse.button === Qt.RightButton)
                rightClick();
        }
    }
}
