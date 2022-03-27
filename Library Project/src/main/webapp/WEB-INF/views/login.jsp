<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name="google-signin-client_id"
	content="135356849412-8akqb5lrbs6q3cvrg5c1eqpmdq4lk8it.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<title>로그인 페이지</title>
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
<style>
.main {
	background: #d8e7fa;
}

.wrap {
	height: 100%;
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	position: relative;
	margin-top: 20%;
	margin-bottom: 20%;
}

.wrap login-btn {
	width: 400px;
	height: 400px;
	position: absolute;
}
</style>
</head>
<script>
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		//console.log('id: ' + profile.getId());
		console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	}
</script>
<body>
	<header>

		<div class="navbar navbar-light" style="background-color: #e3f2fd;">
			<div class="container">
				<a href="./main" class="navbar-brand d-flex align-items-center">
					<img src="resources/img/hgu logo.png" class="m-1"
					style="width: 35px;"> <strong>창조과학연구소 도서관</strong>
				</a>
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
		<div class="wrap">
			<div class="login-btn">
				<div class="g-signin2" data-onsuccess="onSignIn"></div>
			</div>
		</div>
	</main>
	<footer class="text-muted py-5 bg-light">
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
</body>
</html>