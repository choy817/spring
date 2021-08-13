<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html><head>
    <title>비밀번호 찾기</title>
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
    <link rel="stylesheet" href="/assets/css/user/findUser.css">
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
    <div class="bodyBox01">
   		<h2 class="boardText">비밀번호 찾기</h2>
   		<div class="subContents">
   			<form action="/user/changePw" method="post" class="findForm" name="findForm">
		        <div class="body">
			         <div class="contentTab">
			            <div class="tableBox  mt10">
			            <p style="font-size: 15px;line-height: 12px;margin-bottom: 10px;">
			            </p>
			                <div class="idSearch" id="idSearch1">
			                    <div class="peopleInfo">
			                        <div class="peopleInfo01 userId">
			                            <span class="peopleInfoTxt01">아이디</span>
			                            <span class="peopleInfoInput">
			                          		<input type="text" id="userId" name="userId" title="아이디입력란">
			                          	</span>
			                        </div>
			                        <div class="peopleInfo01">
			                            <span class="peopleInfoTxt01">이름</span>
			                            <span class="peopleInfoInput">
			                          		<input type="text" id="userName" name="userName" class="userName" title="이름입력란">
			                          	</span>
			                          	<!-- <span class="nameResult"></span> -->
			                        </div>
			                        <div class="peopleInfo01">
			                            <span class="peopleInfoTxt01">이메일</span>
			                            <span class="peopleInfoInput">
			                          		<input type="text" id="userEmail" name="userEmail" title="이메일입력란">
			                          	</span>
			                        </div>
			                        <p class="inputResult"></p>
			                    </div>
			                    <div class="okBtn">
			                        <input type="button" onclick="javascript:sendOk();" value="확인">
			                    </div>
			                    <div class="findResult" style="display: none;"></div>
			                </div>
			            </div>
			        </div>
		       	</div>
	       	</form>
       	</div>
	</div>
    <%--본문 끝 --%>
    <!-- Start Footer -->
  <footer>
	<div class="footerContents">
        <div class="inner">
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
<script type="text/javascript">
  	function sendOk(){
 		const findForm=document.findForm;
		if(findForm.userId.value=="" || findForm.userId.value==null){
			$(".inputResult").html("아이디를 입력해 주세요");
			findForm.userId.focus();
			return false;
		}
		if(findForm.userName.value=="" || findForm.userName.value==null){
			$(".inputResult").html("이름을 입력해 주세요");
			findForm.userName.focus();
			return false;
		}
		if(findForm.userEmail.value=="" || findForm.userEmail.value==null){
			$(".inputResult").html("이메일을 입력해 주세요");
			findForm.userEmail.focus();
			return false;
		}
		findForm.submit();
  	}
	
  	$(document).ready(function(){
  	});
    </script>
</html>