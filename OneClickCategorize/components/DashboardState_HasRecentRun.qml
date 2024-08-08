import QtQuick 2.15
import QtQuick.Layouts
import "../texts/" as Texts


Rectangle{
    width: 710
    height: 400

    color: "#1E1E1E"
    radius: 15

    Texts.HeadingText{
        id: stateHasRecentRun
        _text: "Categorize a Folder"
        _color: "#A9A9A9"

        anchors{
            left: parent.left
            leftMargin: 20
            top: parent.top
            topMargin: 15
        }
    }

    Rectangle{//Step 1 Container
        id: stepOneContainerRectangle
        width: parent.width - 40
        height: 100

        color: "transparent"
        radius: 10

        border{
            width: 1
            color: "#353536"
        }

        anchors{
            top: stateHasRecentRun.bottom
            topMargin: 10
            left: parent.left
            leftMargin: 20
        }

        Texts.SubheadingText{
            id: stepOneQuestionText
            _text: "<b>Step 1:</b> Which folder you want to categorize?"
            _color: "#EAEAEA"

            anchors{
                top: parent.top
                topMargin: 10
                horizontalCenter: parent.horizontalCenter
            }
        }


        RowLayout{
            spacing: 30

            anchors{
                bottom: parent.bottom
                bottomMargin: 15
                horizontalCenter: parent.horizontalCenter
            }

            Button{
                _text: "Categorize Desktop"
                _width: 200
            }

            Texts.SubheadingText{
                _text: "or"
            }

            Button{
                _text: "Choose Another Folder"
                _width: 220
                _color: "#0B0C0E"
                _textColor: "#A9A9A9"
            }

        }
    }

    Rectangle{//Step 2 Container
        id: stepTwoContainerRectangle
        width: parent.width - 40
        height: 220

        color: "transparent"
        radius: 10

        border{
            width: 1
            color: "#353536"
        }

        anchors{
            top: stepOneContainerRectangle.bottom
            topMargin: 10
            left: parent.left
            leftMargin: 20
        }

        Button{
            _text: "+ Add Folder"
            _width: 100
            _height: 25

            anchors{
                right: parent.right
                rightMargin: 10
                top: parent.top
                topMargin: 10
            }
        }

        Texts.SubheadingText{
            id: stepTwoQuestionText
            _text: "<b>Step 2:</b> Which file type goes which folder?"
            _color: "#EAEAEA"

            anchors{
                top: parent.top
                topMargin: 10
                horizontalCenter: parent.horizontalCenter
            }
        }
        Texts.SubheadingText{
            id: stepTwoSubQuestionText
            _text: "Drag and Drop the file types into the folder you want to categorize."
            _width: 400

            anchors{
                top: stepTwoQuestionText.bottom
                topMargin: 5
                horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle{
            width: parent.width * 0.675
            height: parent.height * 0.675
            color: "transparent"
            clip: true

            anchors{
                top: stepTwoSubQuestionText.bottom
                topMargin: 12
                left: parent.left
                leftMargin: 12
            }

            RowLayout{
                id: foldersRowLayout

                width: parent.width
                height: parent.height

                spacing: 10

                anchors.fill: parent

                Folder{
                    _folderName: "TODO"
                }
                Folder{
                    _folderName: "TODO"
                }
                Folder{
                    _folderName: "TODO"
                }

            }
        }


        Rectangle{
            width: parent.width * 0.282
            height: foldersRowLayout.height

            color: "transparent"
            radius: 8

            border{
                width: 1
                color: "#FF0000"
            }

            anchors{
                right: parent.right
                rightMargin: 10
                top: stepTwoSubQuestionText.bottom
                topMargin: 12
            }
        }





    }
}
