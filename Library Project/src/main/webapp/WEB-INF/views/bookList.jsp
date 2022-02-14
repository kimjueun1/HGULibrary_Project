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
<title>BookList</title>

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
.book-info{
	font-size:0.75rem;
	margin-bottom: 0.5rem;
}
</style>


</head>
<body>

	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-md-7 py-4">
						<h4 class="text-white">About</h4>
						<p class="text-muted">Add some information about the album
							below, the author, or any other background context. Make it a few
							sentences long so folks can pick up some informative tidbits.
							Then, link them off to some social networking sites or contact
							information.</p>
					</div>
					<div class="col-sm-4 offset-md-1 py-4">
						<h4 class="text-white">Contact</h4>
						<ul class="list-unstyled">
							<li><a href="#" class="text-white">Follow on Twitter</a></li>
							<li><a href="#" class="text-white">Like on Facebook</a></li>
							<li><a href="#" class="text-white">Email me</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container">
				<a href="#" class="navbar-brand d-flex align-items-center"> <img
					src="resources/img/hgu logo.png" style="width: 35px;"> <strong>창조과학연구소
						도서관</strong>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarHeader"
					aria-controls="navbarHeader" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
		</div>
	</header>

	<main>

		<section class="py-5 text-center container">
			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto mb-5">
					<h1 class="fw-light">통합 검색</h1>
					<form class="card">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="도서명, 저자, 출판사">
							<button type="submit" class="btn btn-secondary">검색</button>
						</div>
					</form>
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
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
							<div class="card-body">
								<p class="card-text">Answers to the 4 big questions!</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
								</div>
							</div>
						</div>
					</div>
										<div class="col">
						<div class="card shadow-sm">
							<svg class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
								<title>Placeholder</title><rect width="100%" height="100%"
									fill="#55595c" />
								<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

							<div class="card-body">
								<p class="card-text">도서명</p>
								<p class="book-info">저자</p>
								<p class="book-info">출판사</p>
								<p class="book-info">출판년도</p>
								<p class="book-info">위치정보</p>
								<p class="book-info">ISBN</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<a href="#" class="text-muted"><small class="text-muted">관심도서 넣기</small></a>
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
			<p class="mb-0"><a>walab</a></p>
		</div>
	</footer>


	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>
