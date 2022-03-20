<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
</head>
<body>
    <form action="/post-feed" method="post">
        <input type="text" name="id" value="${log}" readonly/></input>
        <%-- <input type="file" >--%>
        <input type="text" placeholder="파일" name="imagefile">
        <input type="text" placeholder="내용을 입력하세요" name="content">
        <input type="submit" value="작성하기">
    </form>
</body>
</html>
