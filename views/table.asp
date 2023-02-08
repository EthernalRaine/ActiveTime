<!DOCTYPE HTML>
<html>

    <!--
        github.com/EthernalRaine
        Copyright (c) 2022 Lu Raine
    -->

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="View Today's Table">
        <meta name="author" content="Laura Raine">
        
        <!--"responsive design" thingy idfk-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/table.css">

        <script type="text/javascript" src="../js/table.js" crossorigin="anonymous"></script>

        <title>ActiveTime - Home</title>
    </head>

    <body onload="filltime();">
        <%
            authed=Request.Cookies("username")

            if authed = "" Or authed = " " then
                Response.Redirect "../core/auth.asp"
            end if
        %>

        <div class="top_center">
            <ul class="center_text">
                <li class="navslot navline"><a href="../default.asp">Home</a></li>
                <li class="navslot navline"><a href="./table.asp">Timetable</a></li>
                <li class="navslot navline"><a href="./about.asp">About</a></li>
                
                
                <% classes=Request.Cookies("identifier") %>
                <% if classes = "7" then %>
                    <li class='navslot navline'><a href='../core/logout.asp'>Log Out</a></li>
                    <li class='navslot'><a href='../php/settings/admin.asp'>Administrator Panel</a></li>
                <% else %>
                    <li class='navslot'><a href='../core/logout.asp'>Log Out</a></li>
                <% end if %>

            </ul>
        </div>

        <div class="center center_text">
            <!--#include virtual="/utils/json.asp" -->

            <% classes=Request.Cookies("classes") %>
            <% if classes = "{}" Or classes = "" Or classes = " " then %>
                <div id="error">
                    <img id="errorimg" src="../assets/img/error.png" width="110" height="100">
                    <h1 id="errortext">You have no classes!<br>Please Contact a Systems Administrator</h1>
                </div>
            <% else %>
                <%
                    set conn=Server.CreateObject("ADODB.Connection")
                    set rs=Server.CreateObject("ADODB.recordset")

                    conn.Open "DRIVER={MariaDB ODBC 3.1 Driver}; SERVER=localhost; PORT=3306; DATABASE=activetime; UID=root; PWD=11ee..22; OPTION=3;"

                    response.write("<h3>" & Request.Cookies("username") & "'s Timetable</h3>")            
                %>

                <div class="flexbox flexrow">
                    <div id="classes" class="flexbox flexcol">
                        <%
                            sql="SELECT classes FROM students WHERE username='" & Request.Cookies("username") & "'"
                            rs.Open sql, conn

                            set oJSON = new aspJSON
                            
                            for each field in rs.fields
                                oJSON.loadJSON(field.value)
                            next
                        %>
                        
                        <h3 id="clstext">Classes</h3>
                        <% for each klasse in oJSON.data("classes") %>
                            <% set this = oJSON.data("classes") %>
                                <a href="./table.asp?lastview=<% Response.Write(this.item(klasse)) %>"><div class="class <% if Request.QueryString("lastview") = this.item(klasse) then %> selectedclass <% end if %>"><h2><% Response.Write(this.item(klasse)) %></h2></div></a>
                        <% next %>
                        <div id="fillbox"></div>
                        <a href="./table.asp"><div class="class resetbutton"><h2>Reset</h2></div> </a>

                        <% rs.Close %>
                    </div>
                    <% lastview = Request.QueryString("lastview") %>
                    
                    <div id="lessons" <% if lastview = "" Or lastview = " " then %> class="flexbox flexcenter" <% end if%>>
                        <% if lastview = "" Or lastview = " " then %>
                        <div id="infobox">
                            <h2 id="infoboxtext">Please select a class from the sidebar to view</h2>
                        </div>   
                        <% else %>        
                            <table>
                                <thead>
                                    <th>Lesson</th>
                                    <th>Time</th>
                                    <th>Monday</th>
                                    <th>Tuesday</th>
                                    <th>Wednesday</th>
                                    <th>Thursday</th>
                                    <th>Friday</th>
                                </thead>
                            <tbody>
                                <%
                                    sql="SELECT current FROM classes WHERE class='" & Request.QueryString("lastview") & "'"
                                    rs.Open sql, conn

                                    for each field in rs.fields
                                        oJSON.loadJSON(field.value)
                                    next
                                %>

                                <% for each lesson in oJSON.data("lessons") %>
                                <tr>
                                    <td><span id="timespan"></span></td>
                                    <td><span id="datespan"></span></td>   
                                    <% for each week in oJSON.data("lessons").item(lesson) %>       
                                        <% set self = oJSON.data("lessons").item(lesson).item(week) %>    
                                            <% if Not self.item("state") = "noshow" then %> 
                                            <td 
                                                <% if Not self.item("room") = "" then %> 
                                                    <% if self.item("mode") = "(Week A)" then %> 
                                                        class="weekalesson"
                                                    <% elseif self.item("mode") = "(Week B)" then %>
                                                        class="weekblesson"
                                                    <% elseif self.item("mode") = "(Cancelled)" then %>
                                                        class="canceledlesson"
                                                    <% else %>
                                                        class="defaultlesson"
                                                    <% end if%>

                                                    <% if self.item("state") = "double" then %>
                                                        rowspan="2"
                                                    <% end if %>
                                                <% else %>
                                                    <% if self.item("state") = "empty" then %>
                                                        class="emptylesson"
                                                    <% end if %>
                                                <% end if %>
                                            >
                                                <% Response.Write(self.item("name")) %> <br>
                                                <small><% Response.Write(self.item("room")) %></small>
                                                <small><% if Not self.item("room") = "" then %> | <% end if %></small>
                                                <small><% Response.Write(self.item("teach")) %></small><br>
                                                <small><% Response.Write(self.item("mode")) %></small> 
                                            </td>
                                            <% end if %>
                                    <% next %>
                                <% next %>
                                </tr>

                                <% rs.Close %>
                            </tbody>
                            </table>
                        <% end if %> 

                        
                    </div>
                </div>

            <% end if %>
        </div>

        <div class="bottom_right">
            <%
                ="<h6 class='right_text'> Logged in as: " & Request.Cookies("username") & " <br> Running on " & Request.ServerVariables("SERVER_SOFTWARE") & " using Classic ASP <br> Copyright (C) 2023 - Luna Raine</h6>"
            %>
        </div>
    </body>

</html>