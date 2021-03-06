import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

ListView{
    id: list
    property int menuIndex: null
    signal menu()

    clip: true
    boundsBehavior: ListView.StopAtBounds
    ScrollBar.vertical: ScrollBar{}
    delegate: ContactItem{
        text: name
        icon: pic
        status: condition
        selected: list.currentIndex === index
        onLeftClick:{
            list.currentIndex = index
        }
        onRightClick: {
            menuIndex = index;
            menu();
        }
    }
}
