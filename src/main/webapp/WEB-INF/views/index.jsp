<%--
  Created by IntelliJ IDEA.
  User: leesoomin
  Date: 2022/02/03
  Time: 1:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <title>Index</title>
</head>
<body class="index">
<section>
    <input type="hidden" name="logId" id="logId" value="<%=session.getAttribute("log") %>">
    <h1>ErrorLog</h1>
    <h2>로그인 후 서비스를 이용하실 수 있습니다.</h2>
    <form action="goLogin" method="post">
        <div>
            <label for="id">ID:</label> <input type="text" name="id" id="id" placeholder="아이디를 입력하세요">
        </div>
        <div>
            <label for="pw">PW:</label> <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요">
        </div>
        <input class="btn" type="submit" value="로그인">
    </form>

    <div class="goJoin">
        <p>처음이신가요?   <a href="goJoin">회원가입</a></p>
        <button onclick="location.href='goMain'">메인으로(임시)</button>
    </div>
    <button onclick="location.href='goMarkdown'">마크다운 편집기(수민)</button>
</section>

<%--  --%>

<%--  <form class="usrLoginForm" name="usrLoginForm" id="usrLoginForm" action="loginProM" method="post">&ndash;%&gt;--%>
<%--    <label class="form-label-outside">아이디</label>--%>
<%--    <input class="form-input form-control-has-validation form-control-last-child" type="text" id="id" name="id" placeholder="영문(대소문자) 또는 숫자 4~12자리 조합">--%>
<%--    <span id="idCheck"></span>--%>
<%--    <br>--%>

<%--    <label class="form-label-outside">비밀번호</label>--%>
<%--    <input class="form-input form-control-has-validation form-control-last-child" type="password" id="pw" name="pw" placeholder="영문(대소문자) 또는 숫자 4~12자리 조합">--%>
<%--    <span id="pwCheck"></span>--%>
<%--    <br >--%>


<%--    <input type="submit" value="sign in" id="btn">--%>
<%--  </form> --%>
<%--<script src="js/log.js"></script>--%>
</body>
</html>
