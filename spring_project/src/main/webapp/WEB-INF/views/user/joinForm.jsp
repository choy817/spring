<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <title>회원가입</title>
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
    <link rel="stylesheet" href="/assets/css/user/joinForm.css">
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
                <div class="menuSearch">
                	<input type="text" id="searchQuery1" placeholder="홈페이지내 검색" title="검색어 입력창" onkeydown="javascript:if(event.keyCode == 13) totalSearch();" autocomplete="off">
                	<button type="button" class="btn_search" onclick="totalSearch();">검색</button>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->
    
	<div class="wrap wd668">
      <div class="container">
        <div class="form_txtInput">
          <h2 class="sub_tit_txt">회원가입</h2>
          <p class="exTxt">회원가입시 이메일 인증을 반드시 진행하셔야 합니다.</p>
      	<form class="joinForm" name="joinForm" method="post">
          <div class="join_form">
            <table>
              <colgroup>
                <col width="30%">
                <col width="auto">
              </colgroup>
              <tbody>
                <tr>
                  <th><span>아이디</span></th>
                  <td><input type="text" name="userId" onkeyup="checkId()" placeholder="ID 를 입력하세요.">
                  <span id="checkId"></span>
                  </td>
                </tr>
                <tr>
                  <th><span>이름</span></th>
                  <td><input type="text" name="userName" placeholder="이름을 입력하세요">
                  <span id="checkName"></span>
                  </td>
                </tr>
                <tr>
                  <th><span>비밀번호</span></th>
                  <td><input type="password" name="userPw" placeholder="비밀번호를 입력하세요">
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
                    <input type="text" name="userEmail" placeholder="예) gildong@email.com"><!-- <span class="mar10">@</span>
                    <input type="text"  class="email email2" placeholder=""> -->
                    <!-- <a href="javascript:;" class="btn_confirm">인증번호 발송</a> -->
                    <span id="checkEmail"></span>
                  </td>
                </tr>
<!--                 <tr>
                  <th><span>인증번호 확인</span></th>
                  <td><input type="text" name="sendNumber" placeholder="10:00">
                    <a href="javascript:;" class="btn_confirm">인증번호 발송</a>
                    <span id="checkNumber"></span>
                  </td>
                </tr> -->
                <tr>
                  <th><span>휴대폰 번호</span></th>
                  <td><input type="text" name="userPhone" placeholder="'-'없이 번호만 입력해 주세요">
                  <span id="checkPhone"></span>
                  </td>
                </tr>
                <tr class="address">
                  <th><span>주소</span></th>
                  <td>
					<input type="text" name="userPostcode" id="sample6_postcode" placeholder="우편번호" readonly>
					<input type="button" class="postcode_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="userAddr" id="sample6_address" placeholder="주소"><br>
					<input type="text" name="userDetailAddr" id="sample6_detailAddress" placeholder="상세주소">
					<input type="text" name="userEtcAddr" id="sample6_extraAddress" placeholder="참고항목">
					<span id="checkAddr"></span>
				  </td>
                </tr>
              </tbody>
            </table>
            <div class="exform_txt"><span>표시는 필수적으로 입력해주셔야 가입이 가능합니다.</span></div>
          </div><!-- join_form E  -->
          <div class="agree_wrap">
            <div class="checkbox_wrap">
              <input type="checkbox" id="news_letter" name="news_letter" class="agree_chk">
              <label for="news_letter">[선택]뉴스레터 수신동의</label>
            </div>
            <div class="checkbox_wrap mar27">
              <input type="checkbox" id="marketing" name="marketing" class="agree_chk">
              <label for="marketing">[선택]마케팅 목적 개인정보 수집 및 이용에 대한 동의</label>
              <ul class="explan_txt">
                <li><span class="red_txt">항목 : 성별, 생년월일</span></li>
                <li>고객님께서는 위의 개인정보 및 회원정보 수정 등을 통해 추가로 수집하는 개인정보에<br>
                  대해 동의하지 않거나 개인정보를 기재하지 않음으로써 거부하실 수 있습니다.<br>
                  다만 이때 회원 대상 서비스가 제한될 수 있습니다.
                </li>
              </ul>
            </div>
          </div>
        </form>
          <div class="btn_wrap">
            <input type="button" class="btn btn-info" onclick="javascript:sendIt();" value="가입">
          </div>
        </div> <!-- form_txtInput E -->
      </div><!-- content E-->
    </div> <!-- container E -->
    
    <!-- Start Footer -->
  <footer>
	<div class="footerContents">
        <div class="inner">
<!--             <div class="chatBot">
                <a href="#" id="floating_box" title="새창열림"><img src="/resource/images/img_chatbot.png" alt="챗봇"></a>
            </div> -->
            <div class="footerTopBox">
                <ul class="pvLink">
                    <li><a href="/member/persionlInfoView.do">개인정보처리방침</a></li>
                    <li><a href="/member/mailrefusalView.do">이메일수집거부</a></li>
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
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script> var contextPath = "${pageContext.request.contextPath}";</script>
<script src="/assets/js/user/joinForm.js"></script>
</html>