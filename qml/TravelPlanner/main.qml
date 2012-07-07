import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
    id: appWindow

    initialPage: mainPage

    MainPage {
        id: mainPage
    }

    LocationPage {
        id: locationPage
    }

    ToolBarLayout {
        id: commonTools
        visible: true

        ToolIcon {
            iconId: pageStack.depth === 1 ? (myMenu.status === DialogStatus.Open ? "icon-m-toolbar-back" : "icon-m-toolbar-back-dimmed") : "icon-m-toolbar-back"
            anchors.left: (parent === undefined) ? undefined : parent.left
            onClicked: {
                myMenu.close()
                pageStack.pop()
            }
        }

        ButtonRow {
            TabButton {
                text: qsTr("Search")
                onClicked: {
                    pageStack.clear()
                    pageStack.push(mainPage)
                }
            }
            TabButton {
                text: qsTr("Location")
                onClicked: {
                    pageStack.clear()
                    pageStack.push(locationPage)
                }
            }
        }

        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }

    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem { text: qsTr("Settings") }
            MenuItem { text: qsTr("About Travel Planner") }
        }
    }
}
