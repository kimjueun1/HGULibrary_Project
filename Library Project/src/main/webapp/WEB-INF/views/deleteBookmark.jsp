<%@ page import="com.hgu.library.model.Bookmark" %>
<%@ page import="com.hgu.library.dao.BookmarkDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    String sid = request.getParameter("id");
    System.out.println("aa");
    if (sid != "") {
        System.out.println("bb");
        int id = Integer.parseInt(sid);
        Bookmark b = new Bookmark();
        b.setId(id);
        BookmarkDao.deleteBookmarkOne(id);
    }
    response.sendRedirect("./bookmark");
%>
