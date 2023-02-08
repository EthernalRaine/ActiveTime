function liveDots() {
    var wait = document.getElementById("dots_span");
        if ( window.dotsGoingUp ) 
            wait.innerHTML += ".";
        else {
            wait.innerHTML = wait.innerHTML.substring(1, wait.innerHTML.length);
            if ( wait.innerHTML === "")
                window.dotsGoingUp = true;
        }
        if ( wait.innerHTML.length > 2 )
            window.dotsGoingUp = false;
}