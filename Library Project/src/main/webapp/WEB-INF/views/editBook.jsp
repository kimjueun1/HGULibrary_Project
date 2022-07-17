<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author"
          content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Add New Book</title>
    <link rel="canonical"
          href="https://getbootstrap.com/docs/5.1/examples/album/">

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

    <!-- Bootstrap core CSS -->
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
    <style>
        .input{
            width:450px;
        }
    </style>
    <title>Edit Book</title>
</head>
<body class="bg-light">
<section class="py-5 container mb-3">
    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
        <button type="button" class="btn btn-primary m-1" onclick="history.back()" >목록으로</button>
    </div>
    <div class="row py-lg-5 card shadow-sm ">
    <form:form commandName="bookList" method="post" action="../editok" class="col-lg-6 col-md-8 mx-auto">
        <input type="hidden" name="id" value="${bookList.getId()}">
        <table id="edit" style="margin-left: auto; margin-right: auto;">
    <%--        <tr><td><button type="button" onclick="location.href='../bookList'" >목록으로</button></td></tr>--%>
            <tr><td >책 제목</td><td><input type="text" name="book_title" value="${bookList.getBook_title()}" class="input"/></td></tr>
            <tr><td >저자</td><td><input type="text" name="author" value="${bookList.getAuthor()}" class="input"/></td></tr>
            <tr><td >번역가</td><td><input type="text" name="translator" value="${bookList.getTranslator()}" class="input"/></td></tr>
            <tr><td >출판사</td><td><input type="text" name="publisher" value="${bookList.getPublisher()}" class="input"/></td></tr>
            <tr><td >출간년도</td><td><input type="text" name="publication_date" value="${bookList.getPublication_date()}" class="input"/></td></tr>
            <tr><td >Pages</td><td><input type="text" name="pages" value="${bookList.getPages()}" class="input"/></td></tr>
            <tr><td >ISBN #</td><td><input type="text" name="isbn" value="${bookList.getIsbn()}" class="input"/></td></tr>
            <tr><td >보관위치</td><td><input type="text" name="location" value="${bookList.getLocation()}" class="input"/></td></tr>
            <tr><td >일련번호</td><td><input type="text" name="bookcode" value="${bookList.getBookcode()}" class="input"/></td></tr>
            <tr><td >Thumnail</td><td><input name="thumnail" type="file" accept="image/*" value="${bookList.getThumnail()}" class="input"/></td></tr>
            <tr><td >Pdf File Upload</td><td><input name="pdf_title" type="file" accept=".pdf" value="${bookList.getPdf_title()}" class="input"/></td></tr>
    <%--        <tr><td>--%>
    <%--            <button type="submit" value="수정" >수정</button>--%>
    <%--            <button type="button" value="cancle" onclick="history.back()">취소</button>--%>
    <%--        </td></tr>--%>
        </table>
        <div class="mt-4 d-grid gap-2 d-md-flex justify-content-md-end">
            <button type="submit" value="수정" >수정</button>
            <button type="button" value="cancle" onclick="history.back()">취소</button>
        </div>
    </form:form>
    </div>
</section>
</body>
</html>
