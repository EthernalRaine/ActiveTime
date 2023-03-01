<!DOCTYPE HTML>
<html>

    <!--
        github.com/EthernalRaine
        Copyright (c) 2022 Lu Raine
    -->

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="OSS Timetable written in Classic ASP and PHP">
        <meta name="author" content="Laura Raine">
        
        <!--"responsive design" thingy idfk-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="../assets/css/style.css">

        <script type="text/javascript" src="../js/dots.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="../js/logout.js" crossorigin="anonymous"></script>

        <title>ActiveTime - Home</title>
    </head>

    <body onload="window.dotsGoingUp = true; setInterval(liveDots, 250); setTimeout(logoutJs, 2000)">

        <div class="center center_text">
            <h2>Logging Out <span id="dots_span"></span></h2>
        </div>

        <%
            Response.Cookies("username") = ""
            Response.Cookies("classes") = ""
            Response.Cookies("identifier") = ""
        %>
    </body>

</html>