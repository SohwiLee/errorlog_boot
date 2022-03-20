<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tetris</title>
    <link rel="stylesheet" type="text/css" href="css/tetris.css">
</head>
<body>
<div id="gameField">
    <div id="gameover">
        <center>
            <h1>Game Over</h1>
            <h4>press 'F5' to restart</h4>
        </center>
    </div>
    <div id="pause">
        <center>
            <h1>Pause</h1>
            <h4>press 'F5' to resume</h4>
        </center>
    </div>
    <table id="nextTable" border=0>
        <tr><td id="00"></td><td id="01"></td><td id="02"></td><td id="03"></td></tr>
        <tr><td id="10"></td><td id="11"></td><td id="12"></td><td id="13"></td></tr>
        <tr><td id="20"></td><td id="21"></td><td id="22"></td><td id="23"></td></tr>
        <tr><td id="30"></td><td id="31"></td><td id="32"></td><td id="33"></td></tr>
    </table>
    <div id="scoreField">
        <p class="sub">LEVEL</p>
        <p id="level">1</p>
        <p class="sub">SCORE</p>
        <p id="score">0</p>
        <p class="sub">NEXT</p>
        <p><br><br><br></p>
        <p class="sub">HELP</p>
        <p id="help1">← ↓ →</p>
        <p id="help2">Space Bar</p>
        <p id="help3">P to pause</p>
        <p class="sub" id="about" onclick="info()">ABOUT</p>
        <div id="comboField"><i></i></div>
    </div>
    <script type="text/javascript" src="js/tetris.js"></script>
</div>
</body>
</html>