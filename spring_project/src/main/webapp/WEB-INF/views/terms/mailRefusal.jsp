<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <title>이메일 수집 거부</title>
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
    <link rel="stylesheet" href="/assets/css/terms/mailRefusal.css">
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
            </div>
        </div>
    </nav>
    <!-- Close Header -->
    <%--본문 시작 --%>
    <div class="wrap">
    	<div class="boardText"><p>이메일 수집 거부</p></div>
		<div class="box_wrap">
			<div class="bg05">
		    	<div class="e_leftBox">
					<img src="/assets/img/bg05.png" alt="">
				</div>
			     <div class="e_rightBox">
					<div class="e_rightBox_ml30">
						<p class="txtInfo001">“본 웹사이트는 회원님의 <span class="blueTxt01">이메일주소를 보호</span>합니다”</p>
						<p class="txtInfo002">
							본 웹사이트에 공개되어 있는 이메일 주소의 무단수집을 거부하며,
							자동으로 이메일 주소를 수집하는 프로그램이나 그 밖의 기술적 장치를 이용하여 이메일 주소를 수집할 경우
							<span class="txtred">정보통신망이용촉진 및 정보보호 등에 관한 법률 제50조제2항과 제76조제1항에 따라 3천만원 이하의 벌금</span>에 처해질 수 있습니다
						</p>
					</div>
				</div>
			</div>
		</div>
    </div>
    <%--본문 끝 --%>
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/user/joinOk.js"></script>
    <script> var contextPath = "${pageContext.request.contextPath}";</script>
</html>