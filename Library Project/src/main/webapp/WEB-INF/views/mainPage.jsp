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
<title>창조과학연구소 - 메인페이지</title>

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

.main {
	height: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.wrap {
	margin-top: 100px;
	margin-bottom: 100px;
	<!--background: #d8e7fa;-->
	text-align: center;
	border-radius: 15px;
	
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
				<div class="me-auto"><a href="./login" class="fw-lighter text-black text-decoration-none bg-transparent rounded border-0">관리자 모드</a></div>
				<div class="flex-row-reverse"><a href="./login" class="fw-lighter text-black text-decoration-none bg-transparent rounded border-0 me-3">로그인</a></div>
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
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="">Home</a></li>
									<li class="nav-item"><a class="nav-link" href="./bookList">도서목록</a></li>
									<li class="nav-item"><a class="nav-link" href="./about">About</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="./bookmark">내 관심도서</a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<main class="m-5"">
		<div class="m-5">
			<div class="wrap bg-light">
				<section class="py-5 text-center container">
					<div class="row py-lg-5">
						<div class="box p-5 col-lg-6 col-md-8 mx-auto mb-5" style="min-width: 500px; border-radius:35px;">
							<h1 class="fw-light mb-5">통합 검색</h1>
							<di class="searchSelect mb-5">
							<dt>자료 유형</dt>
							<div class="mb-5">
								<input id="lmt0tot" type="checkbox"> <label
									for="lmt0tot">전체</label> <input id="lmt0tot" type="checkbox">
								<label for="lmt0tot">해외</label> <input id="lmt0tot"
									type="checkbox"> <label for="lmt0tot">국내</label>
							</div>
							</di>
							<div class="input-group input-group-lg">
								<input type="text" class="form-control"
									placeholder="도서명, 저자, 출판사">
								<button type="submit" class="btn btn-secondary">검색</button>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</main>

	<footer class="text-white py-5 bg-secondary">
		<div class="container">
			<p class="float-end mb-1">
				<a class="text-white" href="#">Back to top</a>
			</p>
			<p class="mb-1">한동대학교 창조과학연구소</p>
			<p class="mb-0">
				<a>walab</a>
			</p>
		</div>
	</footer>

</body>
</html>
