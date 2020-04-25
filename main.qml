import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Контакты")
    ListModel{
        id: contactsModel
        ListElement {
            name: "Милена"
            pic: "icons/Milena.png"
            condition: "На работе."
        }
        ListElement {
            name: "Аня"
            pic: "icons/Anya.png"
            condition: "На связи."
        }
        ListElement {
            name: "Алёна"
            pic: "icons/Alyona.png"
            condition: "Hey there! I am using WhatsApp"
        }
    }

    ColumnLayout{
        anchors.fill: parent

        Header{
            Layout.fillWidth: true
        }

        MainToolBar{
            Layout.fillWidth: true
            Layout.margins: 4
            onNewItem: {
                contactsModel.append({name: text});
            }
        }
        ContactList{
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: contactsModel
        }
    }
}
