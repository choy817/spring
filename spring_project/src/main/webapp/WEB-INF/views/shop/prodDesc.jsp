<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <title>신간 목록</title>
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
    <link rel="stylesheet" href="/assets/css/bootstrap.min2.css">
    <link rel="stylesheet" href="/assets/css/shop/prodDesc.css">
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
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="/shop/newList">신간소개</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="about.html">베스트셀러</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="/board/list">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="/user/userInfo">마이페이지</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->
    <%--본문 시작 --%>
   <div class="prod_wrap"> 
   <div class="writeText"><p>상세정보</p></div>
   <div class="box detail-book">
		<div class="left">
			<div>
				<span id="divCoverImage"><img src="${desc.imgURL }" width="100%" height="100%" alt="책표지"></span>	                	
			</div>
		</div>
		<div class="right">
			<div class="profileHeader">
			    <h3>${desc.prodTitle }</h3>
			</div>
			<div class="profileContent">
				<div class="table">
					<div id="divProfile">
			        	<table>
			        		<tbody>
								<tr>
									<td>${desc.author }</td>
								</tr>
								<tr>
									<td>${desc.company }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		<div class="button">
		    <button type="button" class="btn btn-info">장바구니</button>
		    <button type="button" class="btn btn-secondary">바로구매</button>
		</div>
	</div>
	<div class="box collect-info-box searchInfo">
		<div class="searchHeader collect-info">
			<h3 class="plus on">소장정보</h3>
		</div>
		<div class="searchContents">
	        <div class="collect-txt">
	        	<ul>
					<li>
						제1장 드골의 경이로운 삶과 새로운 프랑스의 시작 &nbsp;<br>제2장 세상천지 모르는 게 없는 이상한 아이 &nbsp;<br>제3장 가장 아름다운 모헙의 시작과 세대를 뛰어넘는 인연 &nbsp;<br>제4장 이상할 정도로 흥미로운 젊은이와 그의 막강한 후원자들 &nbsp;<br>제5장 완전히 ‘평범하지’ 않은 결합 그리고 예상치 못한 기회 &nbsp;<br>제6장 냉정한 전문가, 정치의 최전선에 서다 &nbsp;<br>제7장 ‘꼬마 마크롱’, 은행을 떠나 더 큰 세상으로 나아가다 &nbsp;<br>제8장 정치 놀음의 희생양이 된 국가를 위한 일 &nbsp;<br>제9장 살기 위해 애쓰는 사람들 편에 선 새로운 정치 &nbsp;<br>제10장 비밀스러운 밤 모임의 마크롱과 ‘마크롱의 아이들’ &nbsp;<br>제11장 새로운 정치 운동, 앙 마르슈! 그 시작을 알리다 &nbsp;<br>제12장 대통령 출마 선언, 그러나 아직은 부족한 앙 마르슈 세력 &nbsp;<br>제13장 마크롱을 위한 근사한 선물, 정치계의 추문 &nbsp;<br>제14장 온갖 문젯거리를 한 방에 날린 숨겨둔 비장의 무기 &nbsp;<br>제15장 정치는 사라지고 추문만 남은 프랑스 대통령 선거 &nbsp;<br>제16장 어떤 결과가 나와도 이상하지 않을 예측 불허의 대접전 &nbsp;<br>제17장 모두가 불가능하다고 말했던 ‘천운을 타고난 영웅’의 탄생 &nbsp;<br>제18장 안팎으로 커지는 시련에도 전진하는 마크롱의 프랑스 &nbsp;<br>&nbsp;<br>감사의 말 &nbsp;<br>마크롱, 당선 그 이후의 이야기 &nbsp;<br>추천의 말 &nbsp;<br>옮긴이의 말
					</li>
				</ul>
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


    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
</body>
</html>