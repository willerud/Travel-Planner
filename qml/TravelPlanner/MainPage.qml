import QtQuick 1.1
import com.nokia.meego 1.0

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
}
