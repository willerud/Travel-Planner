import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: searchPage
    tools: commonTools

    Label {
        anchors.verticalCenter: fromTextField.verticalCenter
        anchors.right: fromTextField.left
        anchors.rightMargin: 20
        text: qsTr("From")
    }

    TextField {
        id: fromTextField
        width: 300
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
        placeholderText: qsTr("Input departure location")
    }

    Label {
        anchors.verticalCenter: toTextField.verticalCenter
        anchors.right: toTextField.left
        anchors.rightMargin: 20
        text: qsTr("To")
    }

    TextField {
        id: toTextField
        width: 300
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: fromTextField.bottom
        anchors.topMargin: 20
        placeholderText: qsTr("Input arrival location")
    }
}
