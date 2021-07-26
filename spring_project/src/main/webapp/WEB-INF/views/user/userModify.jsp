<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html><head>
    <title>회원정보 수정</title>
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
    <link rel="stylesheet" href="/assets/css/user/userModify.css">
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
                <c:choose>
                	<c:when test="${sessionScope.user ne null}">
	                	<div class="session">
							<p>${sessionScope.user.userId}님 환영합니다
							<a href="${pageContext.request.contextPath}/user/logout">&nbsp;&nbsp;&nbsp;&nbsp;로그아웃</a>
							</p>
	               		</div>
                	</c:when>
                	<c:otherwise>
                		<div class="login">
                			<p><a href="${pageContext.request.contextPath}/user/login">로그인</a></p>
                		</div>
                	</c:otherwise>
                </c:choose>
            </div>
        </div>
    </nav>
    <!-- Close Header -->
    
	<div class="wrap wd668">
      <div class="container">
        <div class="form_txtInput">
          <h2 class="sub_tit_txt">회원정보 수정</h2>
          <!-- <p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p> -->
      	<form class="modifyForm" name="modifyForm" method="post" action="/user/userModify">
          <div class="modify_form">
            <table>
              <colgroup>
                <col width="30%">
                <col width="auto">
              </colgroup>
              <tbody>
                <tr>
                  <th><span>아이디</span></th>
                  <td><input type="text" name="userId" placeholder="아이디를 입력하세요" value="${user.userId}" readonly></td>
                </tr>
                <tr>
                  <th><span>이름</span></th>
                  <td><input type="text" name="userName" placeholder="이름을 입력하세요" value="${user.userName}" readonly></td>
                </tr>
                <tr>
                  <th><span>비밀번호</span></th>
                  <td><input type="password" name="userPw" placeholder="비밀번호를 입력하세요" value="${user.userPw }">
                  <span id="checkPw"></span>
                  </td>
                </tr>
                <tr>
                  <th><span>비밀번호 확인</span></th>
                  <td><input type="password" name="userPwConfirm" placeholder="비밀번호를 확인하세요">
                  <span id="checkpwConfirm"></span>
                  </td>
                </tr>
                <tr class="email">
                  <th><span>이메일</span></th>
                  <td>
                    <input type="text" name="userEmail" placeholder="예) gildong@email.com" value="${user.userEmail }">
                    <span id="checkEmail"></span>
                  </td>
                </tr>
                <tr>
                  <th><span>휴대폰 번호</span></th>
                  <td><input type="text" name="userPhone" placeholder="'-'없이 번호만 입력해 주세요" value="${user.userPhone }">
                  <span id="checkPhone"></span>
                  </td>
                </tr>
                <tr class="address">
                  <th><span>주소</span></th>
                  <td>
					<input type="text" name="userPostcode" id="sample6_postcode" placeholder="우편번호" readonly value="${user.userPostcode }">
					<input type="button" class="postcode_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="userAddr" id="sample6_address" placeholder="주소" value="${user.userAddr }"><br>
					<input type="text" name="userDetailAddr" id="sample6_detailAddress" placeholder="상세주소" value="${user.userDetailAddr }">
					<input type="text" name="userEtcAddr" id="sample6_extraAddress" placeholder="참고항목" value="${user.userEtcAddr }">
					<span id="checkAddr"></span>
				  </td>
                </tr>
              </tbody>
            </table>
            <div class="exform_txt"><span>표시는 필수적으로 입력해주셔야 수정이 가능합니다.</span></div>
          </div><!-- join_form E  -->
        </form>
          <div class="btn_wrap">
            <input type="button" class="btn btn-info" onclick="javascript:sendIt();" value="수정">
          </div>
        </div> <!-- form_txtInput E -->
      </div><!-- content E-->
    </div> <!-- container E -->
    
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
    <script src="/assets/js/custom.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script> var contextPath = "${pageContext.request.contextPath}";</script>
<script src="/assets/js/user/userModify.js"></script>
</html>