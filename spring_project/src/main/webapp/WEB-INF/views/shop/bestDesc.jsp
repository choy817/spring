<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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
                            <a class="nav-link btn-outline-primary rounded-pill px-3" href="/shop/bestList">베스트셀러</a>
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
				<span id="divCoverImage"><img src="${bestDesc.imgURL }" width="100%" height="100%" alt="책표지"></span>	                	
			</div>
		</div>
		<div class="right">
			<div class="profileHeader">
			    <h3>${bestDesc.prodTitle }</h3>
			</div>
			<div class="profileContent">
				<div class="table">
					<div id="divProfile">
			        	<table>
			        		<tbody>
								<tr>
									<td>${bestDesc.author }</td>
								</tr>
								<tr>
									<td>${bestDesc.company }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		<c:if test="${not empty sessionScope.user.userId }">
			<form action="/cart/insertCart" method="post" name="cartForm">
				<div class="button">
					<input type="hidden" name="prodTitle" value="${bestDesc.prodTitle }">
					<input type="hidden" name="imgURL" value="${bestDesc.imgURL }">
					<input type="hidden" name="userId" id="userId" value="${user.userId}">
				    <button class="btn btn-info">장바구니</button>
				    <button class="btn btn-secondary">바로구매</button>
				</div>
			</form>
		</c:if>
	</div>
	<div class="box collect-info-box searchInfo">
		<div class="searchHeader collect-info">
			<h3 class="plus on">도서정보</h3>
		</div>
		<div class="searchContents">
	        <div class="collect-txt">
	        	<ul>
					<li>${bestDesc.bestDetail }</li>
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