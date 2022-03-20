<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>view</title>
</head>
<body>

<c:forEach var="member" items="${memberList}">
    id: ${member.id}<br>
    name : ${member.name}<br>
    createdAt : ${member.createdAt}<br>
    modifiedAt : ${member.modifiedAt}<br>
</c:forEach>

</body>
</html>
