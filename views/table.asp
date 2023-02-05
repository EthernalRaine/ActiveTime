<!DOCTYPE HTML>
<html>

    <!--
        github.com/EthernalRaine/ActiveTime
        Copyright (c) 2022 Lu Raine
    -->


    <!-- @bugs:
        - Zooming below 100% or above 133% causes css/legend-right-text to break due to margin hack
        - No Dark Mode
    -->

    <head>

        <meta charset="UTF-8">
        <meta name="description" content="A small website about me">
        <meta name="keywords" content="lnkexploit, EthernalRaine">
        <meta name="author" content="Lu Raine">
        
        <!--"responsive design" thingy idfk-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="../../assets/css/table.css">
        <link rel="stylesheet" href="../../assets/css/style.css">

        <title>Lu Raine's Stundenplan</title>

    </head>

    <body>

        <div class="center-top-div">
            <h1 class="center-text">Lu Raine's Stundenplan</h1>

            <table>
                <thead>
                    <tr>
                        <th>Stunde</th>
                        <th>Uhrzeit</th>
                        <th>Montag</th>
                        <th>Dienstag</th>
                        <th>Mittwoch</th>
                        <th>Donnerstag</th>
                        <th>Freitag</th>
                    </tr>
                    <th colspan="7" class="weekdays"></th>
                </thead>
            
                <tbody>
                    <!--
                        Lesson 1
                    -->
                    <tr>
                        <td class="center-text">1.</td>
                        <td class="center-text">7.50 - 8.35</td>
                        <td rowspan="2" class="lesson">KRE
                            <br> 
                            <small id="teacher">QUI </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">SPG
                            <br> 
                            <small id="teacher">GER </small>
                            <small class="roomnumber-secondary">GE1</small>
                        </td>
                        <td rowspan="2" class="lesson">PKG
                            <br> 
                            <small id="teacher">HOD </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">WL
                            <br> 
                            <small id="teacher">DUE </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">DKOp
                            <br> 
                            <small id="teacher">EHN </small>
                            <small class="roomnumber">D17</small>
                        </td>
                    </tr>

                    <!--
                        Lesson 2 (spanned from L1)
                    -->
                    <tr>
                        <td class="center-text">2.</td>
                        <td class="center-text">8.35 - 9.20</td>
                    </tr>

                    <!--
                        Break #1
                    -->
                    <tr>
                        <td colspan="7" class="break">Break
                            <small><em>(20 minuten)</em></small>
                        </td>                    
                    </tr>

                    <!--
                        Lesson 3
                    -->
                    <tr>
                        <td class="center-text">3.</td>
                        <td class="center-text">9.40 - 10.25</td>

                        <td rowspan="2" class="lesson">Ep
                            <br> 
                            <small id="teacher">SET </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">PH
                            <br> 
                            <small id="teacher">TJI </small>
                            <small class="roomnumber-secondary">CE6</small>
                        </td>
                        <td rowspan="2" class="lesson">Mp
                            <br> 
                            <small id="teacher">RAH </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">SAW
                            <br> 
                            <small id="teacher">QUI </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">SAW
                            <br> 
                            <small id="teacher">QUI </small>
                            <small class="roomnumber">D17</small>
                        </td>
                    </tr>

                    <!--
                        Lesson 4 (spanned from L3)
                    -->
                    <tr>
                        <td class="center-text">4.</td>
                        <td class="center-text">10.25 - 11.10</td>
                    </tr>

                    <!--
                        Break #2
                    -->
                    <tr>
                        <td colspan="7" class="break">Break
                            <small><em>(20 minuten)</em></small>
                        </td>  
                    </tr>

                    <!--
                        Lesson 5
                    -->
                    <tr>
                        <td class="center-text">5.</td>
                        <td class="center-text">11.30 - 12.15</td>

                        <td rowspan="2" class="lesson">ITS
                            <br> 
                            <small id="teacher">BIL </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">DKOp
                            <br> 
                            <small id="teacher">EHN </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">ITS
                            <br> 
                            <small id="teacher">BIL </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">Ep
                            <br> 
                            <small id="teacher">SET </small>
                            <small class="roomnumber">D17</small>
                        </td>
                        <td rowspan="2" class="lesson">PET
                            <br> 
                            <small id="teacher">JAN </small>
                            <small class="roomnumber-secondary">D20</small>
                        </td>
                    </tr>

                    <!--
                        Lesson 6 (spanned from L5)
                    -->
                    <tr>
                        <td class="center-text">6.</td>
                        <td class="center-text">12.15 - 13.00</td>
                    </tr>

                    <!--
                        Break #3
                    -->
                    <tr>
                        <td colspan="7" class="break">Break
                            <small><em>(15 minuten)</em></small>
                        </td>  
                    </tr>

                    <!--
                        Lesson 7
                    -->
                    <tr>
                        <td class="center-text">7.</td>
                        <td class="center-text">13.15 - 14.00</td>

                        <td rowspan="2" class="lesson">/</td>
                        <td rowspan="2" class="lesson">/</td>
                        <td rowspan="2" class="lesson">/</td>
                        <td rowspan="2" class="lesson">/</td>
                        <td rowspan="2" class="lesson">BOR
                            <br> 
                            <small id="teacher">BUJ </small>
                            <small class="roomnumber">D17</small>
                        </td>
                    </tr>

                    <!--
                        Lesson 8 (spanned from L7)
                    -->
                    <tr>
                        <td class="center-text">8.</td>
                        <td class="center-text">14.00 - 14.45</td>
                    </tr>
                    
                </tbody>

                <tfoot>
                    <tr>
                      <td colspan="7" class="foot"><small><em>Letzte Aktualisierung: 09:25 / Freitag 21.10.2022</em></small></td>
                    </tr>
                </tfoot>
            </table>

            <h3>Legende:</h3>
            <div id="legend">
                <div class="legend-flex">
                    <div class="legend-left-text">
                        Stunden:
                    </div>
                    <div class="legend-right-text">
                        Räume:
                    </div>
                </div>

                <div class="legend-flex">
                    <div class="legend-left">
                        <div class="lesson">Normale Stunde</div>
                        <div class="sub">Vertretungs Stunde</div>
                        <div class="cancelled">Ausgefallene Stunde</div>            
                    </div>
                  
                    <div class="legend-right">
                        <div class="roomnumber">Klassenraum (bzw. Hauptraum)</div>
                        <div class="roomnumber-secondary">Extraraum</div>
                        <div class="roomnumber-moved">Raumvertretung</div>
                    </div>
                </div>

                <div class="legend-foot">
                    <small><em>Disclaimer: This is a Beta version! Expect bugs and do not ask for help</em></small>
                </div>
            </div>
        </div>
        
    </body>

</html>