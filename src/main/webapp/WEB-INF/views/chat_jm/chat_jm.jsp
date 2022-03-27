<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/chat_jm.css">
    <title>채팅</title>
</head>
<body>
    <div id="contatiner" class="container">
        <h1>채팅</h1>
        <div id="chatHead" class="chatHead"></div>

        <div id="yourName">
            <table>
                <tr>
                    <th>닉네임</th>
                    <th><input class="form-control form control-sm" type="text" name="userName" id="userName"></th>
                    <th><button class="btn btn-sm btn-primary" onclick="chatName()" id="startBtn">등록</button> </th>
                </tr>
            </table>
        </div>
        <div id="yourMessage">
            <table>
                <tr>
                    <th>메세지</th>
                    <th><input class="form-control form-control-sm" id="chatting" placeholder="보낼 메세지 입력"></th>
                    <th><button class="btn btn-sm btn-primary" onclick="send()" id="sendBtn">보내기</button> </th>
                </tr>
            </table>
        </div>
    </div>
</body>
<script type="text/javascript" src="js/chat_jm.js"></script>
</html>
