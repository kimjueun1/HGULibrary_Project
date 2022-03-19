<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<!doctype html>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>창조과학연구소 - 소장자료</title>

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
					<a href="./login"
						class="fw-lighter text-black text-decoration-none bg-transparent rounded border-0">관리자
						로그인</a>
				</div>
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
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="">도서목록</a></li>
									<li class="nav-item"><a class="nav-link" href="./about">About</a>
									</li>
									<li class="nav-item"><a class="nav-link disabled" href="#"
										tabindex="-1" aria-disabled="true">내 관심도서</a></li>
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
			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto mb-5">
					<h2 class="fw-light mb-5">통합 검색</h2>
					<di class="searchSelect mb-5">
					<dt>자료 유형</dt>
					<div class="mb-3">
						<input id="lmt0tot" type="checkbox"> <label for="lmt0tot">전체</label>
						<input id="lmt0tot" type="checkbox"> <label for="lmt0tot">해외</label>
						<input id="lmt0tot" type="checkbox"> <label for="lmt0tot">국내</label>
					</div>
					</di>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="도서명, 저자, 출판사">
						<button type="submit" class="btn btn-secondary">검색</button>
					</div>
				</div>

			</div>
			<div class="btn-group float-end mb-5">
				<button type="button" class="btn btn-primary">도서추가</button>
			</div>
		</section>

		<div class="album py-5 bg-light">
			<div class="container">

				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A001.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">Answers to the 4 big questions!</p>
								<p class="book-info">Don Batten, Kenneth Ham, Jonathan
									Sarfati, Carl Wielnad, Paul S. Taylor</p>
								<p class="book-info">Answers In Genesis(2000), 64pages</p>
								<p class="book-info">A-1</p>
								<a href="https://isbnsearch.org/isbn/0-949906-25-5"
									class="book-info text-muted"><p>0-949906-25-5</p></a>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A002_c.2.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">An Ice Age Caused by the Genesis Flood</p>
								<p class="book-info">Michael J. Oard, Micheal Oard, Marshall
									Hall</p>
								<p class="book-info">Inst For Creation Research(1990),
									243pages</p>
								<p class="book-info">A-1</p>
								<a href="https://isbnsearch.org/isbn/0-932766-20-X"
									class="book-info text-muted"><p>0-932766-20-X</p></a>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A003.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">

							<div class="card-body">
								<p class="card-text">Answers</p>
								<p class="book-info">AnswersMagazine(2011), 185pages</p>
								<p class="book-info">A-1</p>
								<a href="https://isbnsearch.org/isbn/0-949906-25-5"
									class="book-info text-muted"><p></p></a>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A004.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">A Guide to the National Science Museum</p>
								<p class="book-info">National Science Museum(1990), 61pages</p>
								<p class="book-info">A-1</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A005.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">A Picture Tour of the National Museum
									of Natural History</p>
								<p class="book-info">Robert D. Sullivan, Sue Voss, Chip
									Clark</p>
								<p class="book-info">National Science Museum(1991), 32pages</p>
								<p class="book-info">A-1</p>
								<a href="https://isbnsearch.org/isbn/1-56098-050-8"
									class="book-info text-muted"><p>1-56098-050-8</p></a>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A006.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">Archaeology and Bible history</p>
								<p class="book-info">Joseph P. Free</p>
								<p class="book-info">scripture press publications inc(1969),
									398pages</p>
								<p class="book-info">A-1</p>
								<a href="https://isbnsearch.org/isbn/0-88207-801-1"
									class="book-info text-muted"><p>0-88207-801-1</p></a>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A007.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">A basis for a new biology</p>
								<p class="book-info">A. E. Wilder-Smith</p>
								<p class="book-info">telos(1976), 290pages</p>
								<p class="book-info">A-1</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A008.jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">After Man</p>
								<p class="book-info">Dougal Dixon</p>
								<p class="book-info">St. Martin's Press(1981), 124pages</p>
								<p class="book-info">A-1</p>
								<a href="https://isbnsearch.org/isbn/0-312-01163-6"
									class="book-info text-muted"><p>0-312-01163-6</p></a>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img src="resources/img/A008(1).jpg" alt="bookImg"
								class="bookImg mx-auto d-block m-1">
							<div class="card-body">
								<p class="card-text">And God Created Volume 4</p>
								<p class="book-info">Kelly L. Segraves</p>
								<p class="book-info">Creation-Science Research Center(1973),
									91pages</p>
								<p class="book-info">A-1</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="#"><img src="resources/img/editIcon.png"
											alt="editImg" class="edit_icon m-0"></a> <a href="#"
											href="javascript:delete_ok()"><img
											src="resources/img/delete.png" alt="deleteImg"
											class="delete_icon m-2"></a>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서
											넣기</small></a>
								</div>
							</div>
						</div>
					</div>
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
	function delete_ok() {
		var a = confirm("정말로 삭제하겠습니까?");
		<!-- if (a)-->
		<!--	location.href = '/webcamp/teamA/delete_ok/' + id; -->
	}
	</script>

</body>
</html>
