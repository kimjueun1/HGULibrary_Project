<%@ page
	import="com.hgu.library.dao.BookmarkDao, com.hgu.library.model.Bookmark, java.util.*"%>
<%@ page import="com.hgu.library.model.Bookmark"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%
	String s_userId = String.valueOf(session.getAttribute("userId"));

%>
<%	
try{
	String name = (String)session.getAttribute("name");
	System.out.println(name);
	int userId = Integer.parseInt(s_userId);
	if(userId==0) 
		response.sendRedirect("mainPage.jsp");

	System.out.println(userId);
	ArrayList<Bookmark> list = BookmarkDao.getAllBookmarkLists(userId);
	request.setAttribute("list", list);
} catch (Exception e) {
/*     out.println("An exception occurred: " + e.getMessage()); */
}
%>
<!doctype html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>창조과학연구소 - 관심도서</title>

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

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.book-info {
	font-size: 0.75rem;
	margin-bottom: 0.5rem;
}

.bookImg {
	width: 60%;
}

.edit_icon {
	width: 19px;
	height: 19px;
}

.delete_icon {
	width: 12px;
	height: 12.8px;
}
</style>


</head>
<body>

	<header>

		<div class="navbar navbar-light" style="background-color: #e3f2fd;">
			<div class="container">
				<a href="./main" class="navbar-brand d-flex align-items-center">
					<img src="resources/img/hgu logo.png" class="m-1"
					style="width: 35px;"> <strong>창조과학연구소 도서관</strong>
				</a>
				<div class="me-auto">
					<a href="./login" class="fw-lighter text-black text-decoration-none bg-transparent rounded border-0">관리자 모드</a></div>
				<%
				/* 	
					out.print(session.getAttribute("name")); */
					session = request.getSession();
					String name = (String)session.getAttribute("name");
					
				%>
				<%
				if(name!=null){
				%>
				<%=name %>님
		
				<div class="flex-row-reverse"><a href="./logout" class="fw-lighter text-black text-decoration-none bg-transparent rounded border-0 me-3">&nbsp;&nbsp;로그아웃</a></div>
				<%
				} else if(name == null){
				%>
			
				<div class="flex-row-reverse"><a href="./login" class="fw-lighter text-black text-decoration-none bg-transparent rounded border-0 me-3">&nbsp;&nbsp;로그인</a></div>
				<%
				}
		
				%>	
			
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarHeader"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
		<div class="collapse bg-light" id="navbarHeader">
			<div class="container">
				<div class="row">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
						<div class="container-fluid">
							<a class="navbar-brand" href="#"></a>
							<button class="navbar-toggler" type="button"
								data-bs-toggle="collapse" data-bs-target="#navbarNav"
								aria-controls="navbarNav" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarNav">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="./main">Home</a></li>
									<li class="nav-item"><a class="nav-link "
										href="./bookList">도서목록</a></li>
									<li class="nav-item"><a class="nav-link" href="./about">About</a>
									</li>
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="./bookmark">내 관심도서</a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>


	</header>

	<main>

		<section class="py-5 text-center container">
			<div class="row py-lg-5"></div>
			<div class="btn-group float-end mb-5">
				<button type="button" class="btn btn-primary"
					onclick="location.href='./bookList'">관심도서 추가하기</button>
			</div>
		</section>

		<div class="album py-5 bg-light">
			<div class="container">
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<c:forEach items="${list}" var="b">
						<div class="col">
							<div class="card shadow-sm">
								<div class="col">
									<div class="card shadow-sm">
										<img src="resources/thumnail/<c:out value='${b.thumnail}' />"
											alt="bookImg" class="bookImg mx-auto d-block m-1">
										<div class="card-body">
											<p class="card-text">
												<c:out value="${b.book_title}" />
											</p>
											<p class="book-info">
												<c:out value="${b.author}" />
											</p>
											<p class="book-info">
												<c:out value="${b.publisher}" />
												,
												<c:out value="${b.pages}" />
												pages
											</p>
											<p class="book-info">
												<c:out value="${b.location}" />
											</p>
											<a
												href="https://isbnsearch.org/isbn/<c:out value="${b.isbn}" />"
												class="book-info text-muted"><p>
													<c:out value="${b.isbn}" />
												</p></a>
											<div
												class="d-flex justify-content-between align-items-center">
												<div class="btn-group">
													<%-- 	<a href="./edit/${b.getId()}"><img src="resources/img/editIcon.png"
														 alt="editImg" class="edit_icon m-0"></a>  --%>

												</div>
												<a href="javascript:delete_ok('${b.id}')"> <h>관심도서
													삭제</h> <!-- 	<img src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"> -->
												</a>
												<!-- 		<a href="#" class="text-muted"><small class="text-muted">관심도서
													넣기</small></a> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</main>

	<footer class="text-muted py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to top</a>
			</p>
			<p class="mb-1">한동대학교 창조과학연구소</p>
			<p class="mb-0">
				<a>walab</a>
			</p>
		</div>
	</footer>


	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script>
		function delete_ok(id) {
			var a = confirm("관심도서를 삭제하겠습니까?");
			if (a) {
				location.href = './deletBookmarkeOk/' + id;
				alert("관심도서를 삭제하였습니다.");
				location.href = './bookmark';
			}
		}
	</script>

</body>
</html>
