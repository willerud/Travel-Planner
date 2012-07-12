import QtQuick 1.1
import com.nokia.meego 1.0
import com.nokia.extras 1.1

Page {
    id: searchPage
    tools: commonTools

    TextField {
        id: fromTextField
        Label {
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.bottom: parent.top
            anchors.bottomMargin: 2
            text: qsTr("From")
        }
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 40
        placeholderText: qsTr("Input departure location")
    }

    TextField {
        id: toTextField
        Label {
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.bottom: parent.top
            anchors.bottomMargin: 2
            text: qsTr("To")
        }
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: fromTextField.bottom
        anchors.topMargin: 40
        placeholderText: qsTr("Input arrival location")
    }

    SelectionDialog {
        id: departureArrivalDialog
        titleText: qsTr("When?")
        selectedIndex: 0

        model: ListModel {
            ListElement {
                name: "Departure"
            }
            ListElement {
                name: "Arrival"
            }
        }
    }

    TumblerButton {
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: toTextField.bottom
        anchors.topMargin: 40
        text: departureArrivalDialog.selectedIndex === 0 ? qsTr("Departure") : qsTr("Arrival")
        onClicked: departureArrivalDialog.open()
    }
}
