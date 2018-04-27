import QtQuick 2.10
import QtQuick.Window 2.10


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle {
        width: 330
        height: 330
        color: "yellow"
    }


    Grid {
        x: 20
        y: 20

        rows: 5
        columns: 5
        spacing: 10

        ListModel{
            id: kbo_model
            ListElement { name: "KT"        }
            ListElement { name: "Doosan"    }
            ListElement { name: "NC"        }
            ListElement { name: "Samsung"   }
            ListElement { name: "Lotte"     }
            ListElement { name: "LG"        }
            ListElement { name: "KIA"       }
            ListElement { name: "Hanwha"    }
            ListElement { name: "Nexen"     }
            ListElement { name: "SK"        }
        }
        Repeater {

                model: kbo_model
                Rectangle {
                width: 50
                height: 50
                color: "lightblue"

                Text {
                    text: modelData
                    font.pointSize: 18
                    anchors.centerIn: parent
                }
            }
        }
    }
}
