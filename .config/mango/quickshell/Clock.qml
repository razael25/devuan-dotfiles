import QtQuick
import Quickshell

// Date + 24-hour time (the slstatus formats), with a calendar on click.
BarModule {
    id: root

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }

    label: Qt.formatDateTime(clock.date, "ddd MMM d") + " | " + Qt.formatDateTime(clock.date, "HH:mm")

    onClicked: calendar.visible = !calendar.visible

    CalendarPopup {
        id: calendar
        anchorItem: root
    }
}
