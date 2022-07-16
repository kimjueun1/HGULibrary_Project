<%@ page import="com.hgu.library.model.BookList" %>
<%@ page import="com.hgu.library.dao.BookDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    String sid = request.getParameter("id");
    System.out.println("aa");
    if (sid != "") {
        System.out.println("bb");
        int id = Integer.parseInt(sid);
        BookList b = new BookList();
        b.setId(id);
        BookDao.deleteBookOne(id);
    }
    response.sendRedirect("/bookList");
%>
