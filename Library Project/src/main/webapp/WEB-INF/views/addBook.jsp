<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2022-07-15
  Time: 오후 7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Book</title>
</head>
<body>
<form action="./addok" method="post">
    <table>
        <tr><td>Title:</td><td><input type ="text" name="title"/></td></tr>
        <tr><td>Author:</td><td>
            <input type="text" name="author"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="등록"/></td></tr>
    </table>
    <button type="button" onclick="location.href='./bookList'" >목록보기</button>
</form>
</body>
</html>
