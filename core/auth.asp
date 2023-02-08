<!DOCTYPE HTML>
<html>

    <!--
        github.com/EthernalRaine/ActiveTime
        Copyright (c) 2022 Lu Raine
    -->

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="ActiveTime Login Page">
        <meta name="author" content="Laura Raine">
        
        <!--"responsive design" thingy idfk-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/signon.css">

        <title>ActiveTime - Login</title>
    </head>

    <body>
        <%
            authed=Request.Cookies("username")

            if Not authed = "" Or authed = " " then
                Response.Redirect "../default.asp"
            end if
        %>

        <div class="center">
            <div id="left">
                <img src="../assets/img/clock.png" width="200" height="200" />
            </div>
    
            <div id="right" class="leftborder rightpad">
                <h1 class="inlinetext">ActiveTime</h1>
                <h2 class="inlinetext"><small>Login</small></h2>

                <p>Authentication Required! Please Login to Continue.</p>  
                <form method="POST" action="../php/signon.php">
                    <table>
                        <tr>
                            <td>Username</td>
                            <td>Password</td>
                        </tr>
                        <tr>
                            <td><input autocomplete="username" name="username" required></td>
                            <td><input type="password" name="password" required></td>
                        </tr>
                    </table>

                    <input type="submit" type="submit" value="Login" id="login_button">
                </form>
                      
            </div>
        </div>
        
    </body>

</html>