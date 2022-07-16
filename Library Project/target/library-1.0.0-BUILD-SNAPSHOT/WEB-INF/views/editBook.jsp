<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Book</title>
</head>
<body>
<form:form commandName="bookList" method="post" action="/editok">
    <input type="hidden" name="id" value="${bookList.getId()}">
    <table id="edit" style="margin-left: auto; margin-right: auto;">
        <tr><td><button type="button" onclick="location.href='../bookList'" >목록으로</button></td></tr>
        <tr><td >책 제목</td><td><input path="book_title" value="${bookList.getBook_title()}" /></td></tr>
        <tr><td >저자</td><td><input path="author" value="${bookList.getAuthor()}"/></td></tr>
        <tr><td >번역가</td><td><input path="translator" value="${bookList.getTranslator()}"/></td></tr>
        <tr><td >출판사</td><td><input path="publisher" value="${bbookList.getPublisher()}"/></td></tr>
        <tr><td >Pages</td><td><input path="pages" value="${bookList.getPages()}"/></td></tr>
        <tr><td >ISBN #</td><td><input path="isbn" value="${bookList.getIsbn()}"/></td></tr>
        <tr><td >보관위치</td><td><input path="location" value="${bookList.getLocation()}"/></td></tr>
        <tr><td >일련번호</td><td><input path="bookcode" value="${bookList.getBookcode()}"/></td></tr>
        <tr><td >Thumnail</td><td><input path="thumnail" type="file" value="${bookList.getThumnail()}"/></td></tr>
        <tr><td >Pdf File Upload</td><td><input path="pdf_title" type="file" value="${bookList.getPdf_title()}"/></td></tr>
        <tr><td>
            <input type="submit" value="수정" />
            <button type="button" value="cancle" onclick="history.back()">취소</button>
        </td></tr>
    </table>
</form:form>
</body>
</html>
