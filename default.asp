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

        <link rel="stylesheet" href="assets/css/style.css">

        <script type="text/javascript" src="js/clock.js" crossorigin="anonymous"></script>

        <title>ActiveTime - Home</title>
    </head>

    <body onload="updateTime(); setInterval(updateTime, 1000);">
        <%
            authed=Request.Cookies("username")

            if authed = "" Or authed = " " then
                Response.Redirect "./core/auth.asp"
            end if
        %>

        <div class="top_center">
            <ul class="center_text">
                <li class="navslot navline"><a href="./default.asp">Home</a></li>
                <li class="navslot navline"><a href="./views/table.asp">Timetable</a></li>
                <li class="navslot navline"><a href="./views/about.asp">About</a></li>
                
                
                <% classes=Request.Cookies("identifier") %>
                <% if classes = "7" then %>
                    <li class='navslot navline'><a href='./core/logout.asp'>Log Out</a></li>
                    <li class='navslot'><a href='./php/settings/admin.asp'>Administrator Panel</a></li>
                <% else %>
                    <li class='navslot'><a href='./core/logout.asp'>Log Out</a></li>
                <% end if %>

            </ul>
        </div>

        <div class="center center_text">
            <h1>Welcome to ActiveTime</h1>
            <p>Today is <span id="time_span"></span></p>

        </div>

        <div class="bottom_right">
            <%
                ="<h6 class='right_text'> Logged in as: " & Request.Cookies("username") & " <br> Running on " & Request.ServerVariables("SERVER_SOFTWARE") & " using Classic ASP <br> Copyright (C) 2023 - Luna Raine</h6>"
            %>
        </div>
    </body>

</html>