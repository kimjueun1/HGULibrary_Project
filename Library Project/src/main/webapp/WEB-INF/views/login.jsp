<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>


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
				<a id="google_login" class="w-100" href="javascript:startApp();">
					<img style="width: 200px;" src="resources/img/googleLogin.png" />
				</a>
			</div>
			<h>한동대학교 구글 계정으로 로그인하세요.</h>
			<!-- div class="login-btn">
				<a class="" href="javascript:startApp();"><img style="width: 200px;" src="resources/img/googleLogin.png" />
					</a>
			</div> -->
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
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
		// google signin API
		var googleUser = {};
		var startApp = function() {
			  gapi.load('auth2', function(){
								console.log("init() Start");
								auth2 = gapi.auth2
										.init({
											client_id : '135356849412-8akqb5lrbs6q3cvrg5c1eqpmdq4lk8it.apps.googleusercontent.com',
											cookiepolicy : 'single_host_origin',
										// Request scopes in addition to 'profile' and 'email'
										//scope: 'additional_scope'
										});
								attachSignin(document
										.getElementById('google_login'));
							});
		};

		function attachSignin(element) {
			console.log(element.id);
			auth2.attachClickHandler(element, {}, function(googleUser) {
				var profile = googleUser.getBasicProfile();
				var id_token = googleUser.getAuthResponse().id_token;
				
				console.log('UserID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
				console.log('token: ' + id_token);
				console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.


		 	/* 	location.href = './googleLogin/' + profile.getEmail();  */
				$(function() {
					$.ajax({
						url : './googleLogin',
						type : 'post',
						data : {
							"token" : id_token,
							"email" : profile.getEmail()
						},
						success : function(data) {
							console.log("구글 로그인 가져오기 성공");
			
							location.href = './googleLogin';
							history.back(); 
							location.reload();
						},
						error : function() {
							console.log("구글 로그인 실패");
							//location.reload();
						}
					});
				})
			}, function(error) {
				/* alert(JSON.stringify(error, undefined, 2)); */
			});
		}
	</script>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>
</html>