function updateTime() {
    var currentTime = new Date();
    var hours = currentTime.getHours();
    var minutes = currentTime.getMinutes();
    var seconds = currentTime.getSeconds();
    
    var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    var week = new Intl.DateTimeFormat('en-US', options).format(currentTime);

    if (minutes < 10){
        minutes = "0" + minutes;
    }

    if (seconds < 10){
        seconds = "0" + seconds;
    }

    var t_str = week + " at " + hours + ":" + minutes + ":" + seconds + " ";
    document.getElementById('time_span').innerHTML = t_str;
}