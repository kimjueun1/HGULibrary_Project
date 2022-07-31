<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hgu.library.dao.BookmarkDao" %>

<%
request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="u" class="com.hgu.library.model.Bookmark" />
<jsp:setProperty property="*" name="u"/>

<%
	BookmarkDao bookmarkDAO = new BookmarkDao();
	int i = bookmarkDAO.addBookmark(u);
	String msg = "데이터 추가 성공 !";
	if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
	alert('<%=msg%>');
	location.href='bookmark';
</script>