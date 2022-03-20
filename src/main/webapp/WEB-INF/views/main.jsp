<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Main</title>
</head>
<body>
<h1>여기는 Main 입니다.</h1>
<%----%>
<%--<%--%>
<%--    String log = (String)session.getAttribute("log");--%>
<%--%>--%>
<%--<h2><%=log%></h2>--%>

<c:set var="user_id" value="${sessionScope.log}"/>
id: ${user_id}<br>
id: ${log}<br>

<a href="/goWriteFeed">글쓰기</a>
<a href="/goAllFeed">모든 피드보기</a>

<button onclick="location.href='goTetris'">테트리스</button>

</body>
</html>