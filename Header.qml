import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Rectangle{
    height: 50
    color: "#128c7e"
    ColumnLayout
    {
        anchors.fill: parent
        Label{
            Layout.leftMargin: 10
            Layout.topMargin: 5
            font.bold: true
            color: "white"
            text: "Выбрать"
            font.pointSize: 12
        }
        Label{
            Layout.leftMargin: 10
            Layout.bottomMargin: 5
            font.bold: false
            color: "white"
            text: "Контакты"
            font.pointSize: 10
        }
    }
}




