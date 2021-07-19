<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html><head>
    <title>로그인</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="/assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/assets/img/favicon.ico">
    <!-- Load Require CSS -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font CSS -->
    <link href="/assets/css/boxicon.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&amp;display=swap" rel="stylesheet">
    <!-- Load Tempalte CSS -->
    <link rel="stylesheet" href="/assets/css/templatemo.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/assets/css/custom.css">
    <link rel="stylesheet" href="/assets/css/user/login.css">
</head>

<body>
    <!-- Header -->
    <nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand h1" href="index.html">
                <i class="bx bx-buildings bx-sm text-dark"></i>
                <span class="text-dark h4">Purple</span> <span class="text-primary h4">Buzz</span>
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggler-success" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
			
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
                <div class="flex-fill mx-xl-5 mb-2">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-xl-5 text-center text-dark">
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="index.html">신간소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="about.html">베스트셀러</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="work.html">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="pricing.html">마이페이지</a>
                        </li>
 <!--                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="contact.html">Contact</a>
                        </li> -->
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <a class="nav-link" href="#"><i class="bx bx-bell bx-sm bx-tada-hover text-primary"></i></a>
                    <a class="nav-link" href="#"><i class="bx bx-cog bx-sm text-primary"></i></a>
                    <a class="nav-link" href="#"><i class="bx bx-user-circle bx-sm text-primary"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->
    
	
	<!-- Login -->

	<!-- 서울도서관 자체 로그인 -->
	<div class="loginForm">	
		<!-- <a href="/" class="goMain" title="메인화면"><img src="/image/ko/local/home/goMain.png" alt="메인으로"></a> -->
		<!-- <p class="logo"><a href="/" title="메인화면"><img src="/image/ko/local/logo.png" alt="서울도서관"></a></p> -->
		<div id="kor">
			<form class="loginForm" name="loginForm" method="post">
<!-- 				<input type="hidden" name="deviceName" id="deviceName" value="">
						<input type="hidden" name="retUrl" value="/"> -->
				<fieldset>
					<legend class="loginMsg">로그인</legend>			
					<div class="inputFields">
						<p class="inputId"><input type="text" id="userId" name="userId" title="도서관 아이디" placeholder="아이디"></p>
						<span id="checkId"></span>
						<p class="inputPw"><input type="password" id="userPw" name="userPw" title="비밀번호(10~15자리)" placeholder="비밀번호"></p>
						<span id="checkPw"></span>
						<p class="saveId">
						</p>
						<p class="inputSubmit"><input type="button" value="로그인" onclick="javascript:sendIt();"></p>
					</div>
					<div class="loginMenu">
						<a href="/memberJoin/findId?target=Y" title="아이디찾기">아이디찾기</a>
						<a href="/memberJoin/findPw?target=Y" title="아이디찾기">비밀번호 재설정</a>
						<a href="/memberJoin/agree?target=Y" target="_blank" title="새창으로열림">회원가입</a>
					</div>
					<p class="loginBg"></p>
				</fieldset>
			</form>
		</div>
	</div>
<!-- //Login -->

	
    <!-- Start Footer -->
   <footer>
	<div class="footerContents">
        <div class="inner">
<!--             <div class="chatBot">
                <a href="#" id="floating_box" title="새창열림"><img src="/resource/images/img_chatbot.png" alt="챗봇"></a>
            </div> -->
            <div class="footerTopBox">
                <ul class="pvLink">
                    <li><a href="/terms/personInfo">개인정보처리방침</a></li>
                    <li><a href="/terms/mailRefusal">이메일수집거부</a></li>
                </ul>
            </div>
            <div class="footerBottomBox">
                <p class="copyright">
		                    국회도서관 - 서울특별시 영등포구 의사당대로 1 (여의도동) (우07233)<br>
		                    홈페이지 관련 문의 : webw3@nanet.go.kr  /  전화문의 : 02-6788-4211, 080-788-4211(수신자 부담)<br>
		           Copyright ⓒ 대한민국 국회도서관 All rights reserved.
                </p>
            </div>
        </div>
    </div>
   </footer> 
    <!-- End Footer -->
</body>
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script> var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="/assets/js/user/login.js"></script>
</html>