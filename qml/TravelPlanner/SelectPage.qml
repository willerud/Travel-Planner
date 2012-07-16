import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: selectPage
    tools: commonTools

    BusyIndicator {
        id: busyIndicator
        anchors.centerIn: parent
        platformStyle: BusyIndicatorStyle { size: "large" }
        running: true
    }
}
