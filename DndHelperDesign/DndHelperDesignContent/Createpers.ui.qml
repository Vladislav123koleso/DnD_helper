

/*
    This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
    It is supposed to be strictly declarative and only uses a subset of QML. If you edit
    this file manually, you might introduce QML code that is not supported by Qt Design Studio.
    Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
    */
import QtQuick
import QtQuick.Controls
import DndHelperDesign

//import "PageController.qml"
Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    layer.enabled: false
    color: "#f1eabd"

    property int racesPerPage: 10
    property int currentPage: 0
    property int totalPages: Math.ceil(racesModel.count / racesPerPage)

    property int racesPerPageProperty: 10

    ListModel {
        id: fullRacesModel
        ListElement {
            name: "Человек"
            normalImage: "images/race/human.jpg"
            hoverImage: "images/race/human2.jpg"
            hoverText: "Человек - ебейшая раса"
        }
        ListElement {
            name: "Эльф"
            normalImage: "images/race/elf.jpg"
            hoverImage: "images/race/elf2.jpg"
            hoverText: "Секси Эльф"
        }
        ListElement {
            name: "Человек"
            normalImage: "images/race/human.jpg"
            hoverImage: "images/race/human2.jpg"
            hoverText: "Человек - ебейшая раса"
        }
        ListElement {
            name: "Эльф"
            normalImage: "images/race/elf.jpg"
            hoverImage: "images/race/elf2.jpg"
            hoverText: "Секси Эльф"
        }
        ListElement {
            name: "Человек"
            normalImage: "images/race/human.jpg"
            hoverImage: "images/race/human2.jpg"
            hoverText: "Человек - ебейшая раса"
        }
        ListElement {
            name: "Эльф"
            normalImage: "images/race/elf.jpg"
            hoverImage: "images/race/elf2.jpg"
            hoverText: "Секси Эльф"
        }
        ListElement {
            name: "Человек"
            normalImage: "images/race/human.jpg"
            hoverImage: "images/race/human2.jpg"
            hoverText: "Человек - ебейшая раса"
        }
        ListElement {
            name: "Эльф"
            normalImage: "images/race/elf.jpg"
            hoverImage: "images/race/elf2.jpg"
            hoverText: "Секси Эльф"
        }
        ListElement {
            name: "Человек"
            normalImage: "images/race/human.jpg"
            hoverImage: "images/race/human2.jpg"
            hoverText: "Человек - ебейшая раса"
        }
        ListElement {
            name: "Эльф"
            normalImage: "images/race/elf.jpg"
            hoverImage: "images/race/elf2.jpg"
            hoverText: "Секси Эльф"
        }
        ListElement {
            name: "Человек"
            normalImage: "images/race/human.jpg"
            hoverImage: "images/race/human2.jpg"
            hoverText: "11"
        }
        ListElement {
            name: "Эльф"
            normalImage: "images/race/elf.jpg"
            hoverImage: "images/race/elf2.jpg"
            hoverText: "12"
        }
    }

    // Подключаем компонент для управления страницами
    PageController {
        id: pageController
        racesModel: fullRacesModel // Передаем полную модель
        racesPerPage: root.racesPerPageProperty // Передаем количество элементов на страницу
    }

    Text {
        id: _text
        x: 659
        y: 0
        width: 480
        height: 63
        text: qsTr("Создание Персонажа")
        font.pixelSize: 48
        activeFocusOnTab: false
        layer.enabled: false
        layer.smooth: false
    }

    Text {
        id: _text1
        x: 79
        y: 95
        width: 480
        height: 63
        text: qsTr("Выберите расу")
        font.pixelSize: 42
    }

    Row {
        id: mainRow
        x: 76
        y: 164
        width: Math.min(parent.width - 80, 1786) // Адаптивная ширина
        //width: 1786
        height: 850
        anchors {
            bottom: parent.bottom
            bottomMargin: 40
        }
        spacing: 0

        ArrowButton {
            id: backArrowButton
            width: 112
            height: 106
            rotation: 180
            anchors.verticalCenter: parent.verticalCenter

            enabled: pageController.currentPage > 0
        }

        // Connections {
        //     target: backArrowButton
        //     onPressed: pageController.previousPage()
        // }

        // Связь сигнала кнопки с функцией через Connections

        // GridView {
        //     id: racesGridView
        //     //width: 1486
        //     width: parent.width - nextArrowButton.width - backArrowButton.width - 2 * parent.spacing
        //     height: parent.height
        //     anchors.centerIn: parent
        //     clip: true
        //     interactive: false

        //     model: ListModel {
        //         id: racesModel
        //         ListElement {
        //             name: "Человек"
        //             normalImage: "images/race/human.jpg"
        //             hoverImage: "images/race/human2.jpg"
        //             hoverText: "Человек - ебейшая раса"
        //         }
        //         ListElement {
        //             name: "Эльф"
        //             normalImage: "images/race/elf.jpg"
        //             hoverImage: "images/race/elf2.jpg"
        //             hoverText: "Секси Эльф"
        //         }
        //         ListElement {
        //             name: "Человек"
        //             normalImage: "images/race/human.jpg"
        //             hoverImage: "images/race/human2.jpg"
        //             hoverText: "Человек - ебейшая раса"
        //         }
        //         ListElement {
        //             name: "Эльф"
        //             normalImage: "images/race/elf.jpg"
        //             hoverImage: "images/race/elf2.jpg"
        //             hoverText: "Секси Эльф"
        //         }
        //         ListElement {
        //             name: "Человек"
        //             normalImage: "images/race/human.jpg"
        //             hoverImage: "images/race/human2.jpg"
        //             hoverText: "Человек - ебейшая раса"
        //         }
        //         ListElement {
        //             name: "Эльф"
        //             normalImage: "images/race/elf.jpg"
        //             hoverImage: "images/race/elf2.jpg"
        //             hoverText: "Секси Эльф"
        //         }
        //         ListElement {
        //             name: "Человек"
        //             normalImage: "images/race/human.jpg"
        //             hoverImage: "images/race/human2.jpg"
        //             hoverText: "Человек - ебейшая раса"
        //         }
        //         ListElement {
        //             name: "Эльф"
        //             normalImage: "images/race/elf.jpg"
        //             hoverImage: "images/race/elf2.jpg"
        //             hoverText: "Секси Эльф"
        //         }
        //         ListElement {
        //             name: "Человек"
        //             normalImage: "images/race/human.jpg"
        //             hoverImage: "images/race/human2.jpg"
        //             hoverText: "Человек - ебейшая раса"
        //         }
        //         ListElement {
        //             name: "Эльф"
        //             normalImage: "images/race/elf.jpg"
        //             hoverImage: "images/race/elf2.jpg"
        //             hoverText: "Секси Эльф"
        //         }
        //         ListElement {
        //             name: "Человек"
        //             normalImage: "images/race/human.jpg"
        //             hoverImage: "images/race/human2.jpg"
        //             hoverText: "11"
        //         }
        //         ListElement {
        //             name: "Эльф"
        //             normalImage: "images/race/elf.jpg"
        //             hoverImage: "images/race/elf2.jpg"
        //             hoverText: "12"
        //         }
        //     }
        //     delegate: Item {
        //         x: 5
        //         height: 50

        //         visible: index >= (currentPage * racesPerPage)
        //                  && index < ((currentPage + 1) * racesPerPage)

        //         Column {
        //             spacing: 5
        //             RasaButtonAnimation {
        //                 id: btn1
        //                 height: 357
        //                 width: 212
        //                 x: 6
        //                 y: 5
        //                 normalImage: model.normalImage
        //                 hoverImage: model.hoverImage || model.normalImage
        //                 buttonText: model.hoverText
        //             }

        //             Text {
        //                 x: 5
        //                 text: name
        //                 font.pointSize: 18
        //                 font.bold: true

        //                 anchors.horizontalCenter: parent.horizontalCenter
        //             }
        //         }
        //     }
        //     cellWidth: 312
        //     cellHeight: 430
        // }
        GridView {
            id: racesGridView

            width: parent.width - nextArrowButton.width - backArrowButton.width - 2 * parent.spacing
            height: parent.height
            anchors.centerIn: parent
            clip: true
            interactive: false

            model: pageController.pageModel

            //currentIndex: currentPage * racesPerPage
            delegate: Item {
                width: 212
                height: 430

                //visible: index >= (currentPage * racesPerPage)
                //&& index < ((currentPage + 1) * racesPerPage)
                Column {
                    spacing: 5
                    RasaButtonAnimation {
                        height: 357
                        width: 212
                        x: 6
                        y: 5
                        normalImage: model.normalImage
                        hoverImage: model.hoverImage || model.normalImage
                        buttonText: model.hoverText
                    }

                    Text {
                        x: 5
                        text: model.name
                        font.pointSize: 18
                        font.bold: true
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
            cellWidth: 312
            cellHeight: 430
        }

        ArrowButton {
            id: nextArrowButton
            width: 112
            height: 106

            //anchors.verticalCenter: parent.verticalCenter
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
            }
            enabled: pageController.currentPage < pageController.totalPages - 1
        }
        // Connections {
        //     target: nextArrowButton
        //     onPressed: pageController.nextPage()
        // }
        // Связь для следующей кнопки
        Connections {
            target: backArrowButton
            onPressed: pageController.previousPage()
        }
        Connections {
            target: nextArrowButton
            onPressed: pageController.nextPage()
        }
    }
}
