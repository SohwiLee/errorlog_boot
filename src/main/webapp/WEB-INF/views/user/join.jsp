<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/join.css">
    <title>JOIN</title>
</head>
<body>
<div class="wrap">
    <h1>JOIN</h1>
    <p class="notice">*는 필수입력항목입니다.</p>
    <form>
        <table>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id" size="20" id="id">*
                </td>

            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="pw1" size="20" id="pw">*</td>
            </tr>
            <tr>
                <td>비밀번호 재확인</td>
                <td><input type="password" name="pw2" size="20" id="pw2">*</td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" size="20" id="name">*</td>
            </tr>
            <tr>
                <td>일반회원</td>
                <td><input type="radio" name="separate" value="1"></td>
                <td>사업자</td>
                <td><input type="radio" name="separate" value="2"></td>
            </tr>

            <tr>
                <td>폰번호</td>
                <td><input type="text" name="phone" size="20" id="phone">*</td>
            </tr>

            <tr>
                <td>email</td>
                <td><input type="text" name="email" size="20" id="email">*</td>
            </tr>

        </table>
        <div id="wrapBtn">
            <%--<input type="submit" value="확인" id="btn" >--%>
            <input type="button" value="확인" id="btn" onclick="join(form);">
        </div>
    </form>
</div>
<script src="js/log.js"></script>
</body>
</html>