import QtQuick 1.1
import com.nokia.meego 1.0
import com.nokia.extras 1.1

Page {
    id: searchPage
    tools: commonTools
    onPageStackChanged:  setDialogDateToToday()

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
        id: departureArrivalButton
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: toTextField.bottom
        anchors.topMargin: 40
        text: departureArrivalDialog.selectedIndex === 0 ? qsTr("Departure") : qsTr("Arrival")
        onClicked: departureArrivalDialog.open()
    }

    DatePickerDialog {
        id: dateDialog
        titleText: qsTr("Date")
        rejectButtonText: qsTr("Cancel")
        acceptButtonText: qsTr("Use")
    }

    function setDialogDateToToday() {
        var d = new Date();
        dateDialog.year = d.getFullYear();
        dateDialog.month = d.getMonth();
        dateDialog.day = d.getDate();
    }

    TumblerButton {
        id: dateButton
        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: departureArrivalButton.bottom
        anchors.topMargin: 40
        text: dateDialog.year + " " + dateDialog.month + " " + dateDialog.day
        onClicked: dateDialog.open()
    }
}
