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
            iconId: pageStack.depth === 1 ? "icon-m-toolbar-back-dimmed" : "icon-m-toolbar-back"
            anchors.left: (parent === undefined) ? undefined : parent.left
            onClicked: pageStack.pop()
        }

        ToolButtonRow {
            ToolIcon {
                platformIconId: "toolbar-search"
                onClicked: {
                    pageStack.clear()
                    pageStack.push(mainPage)
                }
            }
            ToolIcon {
                platformIconId: "toolbar-home"
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
        MenuLayout {
            MenuItem { text: qsTr("Settings") }
            MenuItem { text: qsTr("About Travel Planner") }
        }
    }
}
