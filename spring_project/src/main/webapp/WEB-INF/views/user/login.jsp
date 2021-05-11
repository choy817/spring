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
		<div class="langSelect">
<!-- 			<select id="language" title="언어선택">				
				<option value="kor">한국어</option>
				<option value="eng">English</option>
			</select>
			<a href="#" onclick="changeLang()" title="언어 변경">Go</a>  -->
		</div>
		<p class="logo"><a href="/" title="메인화면"><img src="/image/ko/local/logo.png" alt="서울도서관"></a></p>
		<div id="kor">
			<form action="https://lib.seoul.go.kr/login" method="post" onsubmit="return fn_submit()">
				<input type="hidden" name="deviceName" id="deviceName" value="">
						<input type="hidden" name="retUrl" value="/">
				<fieldset>
					<legend class="loginMsg">로그인</legend>			
					<div class="inputFields">
						<p class="inputId"><input type="text" id="id" name="id" title="도서관 아이디" placeholder="아이디"></p>
						<p class="inputPw"><input type="password" id="password" name="password" title="비밀번호(10~15자리)" placeholder="비밀번호"></p>
						
						<p class="saveId">
							
						</p>
						<p class="inputSubmit"><input type="submit" value="로그인"></p>
					</div>
					<div class="loginMenu">
						<a href="/memberJoin/findId?target=Y" title="아이디찾기">아이디찾기</a>
						<a href="/memberJoin/findPw?target=Y" title="아이디찾기">비밀번호 재설정</a>
						<a href="/memberJoin/agree?target=Y" target="_blank" title="새창으로열림">회원가입</a>
					</div>
					<p class="loginBg"></p>
					<div class="loginFooter">
						<!--  
						<div class="menu">
							<a href="/rwww/html/ko/privacy.jsp" class="privacy" title="개인정보처리방침">개인정보처리방침</a>
							<a href="/bbs/content/3_9680" title="도난주의">도난주의</a>
							<a href="/bbs/content/3_9871" title="CCTV설치 및 운영안내">CCTV설치 및 운영안내</a>
							<a href="/rwww/html/ko/evacuationInfo.jsp" title="비상대피도 안내">비상대피도 안내</a>
						</div>
						-->
						<div class="address">
							<p>서울도서관 | 04524 서울특별시 중구 세종대로 110 | 전화번호: 02)120, 2133-0300,0301 </p>
							<p>이용시간: 화~금 9:00~21:00 / 토,일 9:00~18:00(월요일/공휴일휴관)</p>
						</div>
					</div>					
				</fieldset>
			</form>
		</div>
		<div id="eng" style="display:none;">
			<form action="https://lib.seoul.go.kr/login" method="post" onsubmit="return fn_submit()">
						<input type="hidden" name="retUrl" value="/">
				<fieldset>
					<legend>로그인</legend>			
					<div class="inputFields">
						<p class="inputId"><input type="text" id="id2" name="id" title="ID" placeholder="ID"></p>
						<div class="viewPw" style="display: none;"></div>
						<p class="inputPw"><input type="password" id="password2" name="password" title="Password" placeholder="Password"></p>
						<p class="inputSubmit"><input type="submit" value="Login"></p>
						<p class="saveId">
						</p>
					</div>
<!-- 					<div class="loginMenu">
						<a href="/memberJoin/findId?target=Y" title="Find ID">Find ID</a>
						<a href="/memberJoin/findPw?target=Y" title="Reset password">Reset password</a>
						<a href="/memberJoin/agree?view=eng&amp;target=Y" target="_blank" title="Opened in new window">Sign up</a>
					</div> -->
<!-- 					<p class="loginBg"></p>
					<div class="loginFooter">
						<div class="address">
							<p>100-739 Seoul Jung-gu Sejongdae-ro 110 Phone Number: 02)120, 02)2133-0300,0301 </p>
							<p>Operating time: Tue~Fri 9:00~21:00 / Sat,Sun 9:00~18:00(closed Mon/Holiday)</p>
						</div>
					</div> -->
				</fieldset>
			</form>
		</div>	
	</div>
<!-- //Login -->

	
    <!-- Start Footer -->
   <!--  <footer class="bg-secondary pt-4">
        <div class="container">
            <div class="row py-4">

                <div class="col-lg-3 col-12 align-left">
                    <a class="navbar-brand" href="index.html">
                        <i class='bx bx-buildings bx-sm text-light'></i>
                        <span class="text-light h5">Purple</span> <span class="text-light h5 semi-bold-600">Buzz</span>
                    </a>
                    <p class="text-light my-lg-4 my-2">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        sed do eiusmod tempor incididunt ut.
                    </p>
                    <ul class="list-inline footer-icons light-300">
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="http://facebook.com/">
                                <i class='bx bxl-facebook-square bx-md'></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.linkedin.com/">
                                <i class='bx bxl-linkedin-square bx-md'></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.whatsapp.com/">
                                <i class='bx bxl-whatsapp-square bx-md'></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.flickr.com/">
                                <i class='bx bxl-flickr-square bx-md'></i>
                            </a>
                        </li>
                        <li class="list-inline-item m-0">
                            <a class="text-light" target="_blank" href="https://www.medium.com/">
                                <i class='bx bxl-medium-square bx-md' ></i>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4">
                    <h3 class="h4 pb-lg-3 text-light light-300">Our Company</h2>
                        <ul class="list-unstyled text-light light-300">
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light" href="index.html">Home</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="about.html">About Us</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="work.html">Work</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i></i><a class="text-decoration-none text-light py-1" href="pricing.html">Price</a>
                            </li>
                            <li class="pb-2">
                                <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="contact.html">Contact</a>
                            </li>
                        </ul>
                </div>

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4">
                    <h2 class="h4 pb-lg-3 text-light light-300">Our Works</h2>
                    <ul class="list-unstyled text-light light-300">
                        <li class="pb-2">
                            <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="#">Branding</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="#">Business</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="#">Marketing</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="#">Social Media</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="#">Digital Solution</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bxs-chevron-right bx-xs'></i><a class="text-decoration-none text-light py-1" href="#">Graphic</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 my-sm-0 mt-4">
                    <h2 class="h4 pb-lg-3 text-light light-300">For Client</h2>
                    <ul class="list-unstyled text-light light-300">
                        <li class="pb-2">
                            <i class='bx-fw bx bx-phone bx-xs'></i><a class="text-decoration-none text-light py-1" href="tel:010-020-0340">010-020-0340</a>
                        </li>
                        <li class="pb-2">
                            <i class='bx-fw bx bx-mail-send bx-xs'></i><a class="text-decoration-none text-light py-1" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="w-100 bg-primary py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-lg-6 col-sm-12">
                        <p class="text-lg-start text-center text-light light-300">
                            © Copyright 2021 Purple Buzz Company. All Rights Reserved.
                        </p>
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <p class="text-lg-end text-center text-light light-300">
                            Designed by <a rel="sponsored" class="text-decoration-none text-light" href="https://templatemo.com/" target="_blank"><strong>TemplateMo</strong></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer> -->
    <!-- End Footer -->


    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


</body><whale-quicksearch translate="no"></whale-quicksearch></html>