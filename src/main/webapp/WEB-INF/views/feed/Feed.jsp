<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="../css/Feed.css">
</head>
<body>
    <h1>글보기</h1>
    <input type="hidden" value="<%=request.getAttribute("no")%>" id="no">
    <div class="feed-wrap">
        <h1><%=request.getAttribute("no")%></h1>
    </div>

    <script src="../js/Feed.js"></script>
</body>
</html>
