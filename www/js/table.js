function filltime() {
    var times = [
        ["1", "7:50 - 8:35"],
        ["2", "8:35 - 9:20"],
        ["3", "9:40 - 10:25"],
        ["4", "10:25 - 11:10"],
        ["5", "11:30 - 12:15"],
        ["6", "12:15 - 13:00"],
        ["7", "13:15 - 14:00"],
        ["8", "14:40 - 14:45"],
    ]

    var allSpans = document.querySelectorAll("#timespan");
    var allSpans2 = document.querySelectorAll("#datespan");

    for (var ix=0; ix < allSpans.length; ix++) {
        allSpans[ix].innerHTML = times[ix][0];
        allSpans2[ix].innerHTML = times[ix][1];
    }
}
