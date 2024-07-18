import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:myRect
        width: 200
        height: 200
        anchors.centerIn: parent
        color: "#FF0000"
        radius: height / 2
    }

    SequentialAnimation
    {
        loops: Animation.Infinite
        running: true

        ColorAnimation
        {
            target: myRect
            property: "color"
            from: "#FF0000"
            to: "#0000FF"
            duration: 1000
        }

        ColorAnimation
        {
            target: myRect
            property: "color"
            from: "#0000FF"
            to: "#FF0000"
            duration: 1000
        }
    }
}
