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

        <title>ActiveTime - Home</title>
    </head>

    <body>
        <%
            authed=Request.Cookies("username")

            if authed = "" Or authed = " " then
                Response.Redirect "./core/auth.asp"
            end if
        %>
    </body>

</html>