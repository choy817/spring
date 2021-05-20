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
    <link rel="stylesheet" href="/assets/css/product/newList.css">
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
    <%--본문 시작 --%>
    <div class="boardText"><p>신간소개</p></div>
    <div class="prod_wrap">
    	<div id="search-results" class="search-results wide">
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>				
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>	
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="thumb">
						<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="goDetail">
						<img src="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" alt="천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술 상세보기">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a vloca="123003" vimg="https://image.aladin.co.kr/product/26934/14/cover/k492730607_1.jpg" isbn="9791187512516" managecode="MA" regno="EMA000268811" class="name goDetail">천재의 식단 : 죽을 때까지 머리가 좋아지는 한 끼의 기술</a>
								<p>저자 : 맥스 루가비어,폴 그레왈 지음 ; 신동숙 옮김</p>
								<p>출판정보 : 앵글북스 2021</p>
							</div>
						</div>
					</div>
				</div>																										
			<div class="paging">
				 <ul class="pagination">
					<li class="page-item disabled">
						<a class="page-link" href="#">«</a>
					</li>
					 <li class="page-item active">
						 <a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						 <a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">»</a>
					</li>
				</ul>
			</div>
			<div class="search txt-center mmm2" style="margin-top:25px; display: none;"><!-- 하단 정렬 시 margin-top 입력 -->
						<fieldset>
							<label class="blind" for="search_type">검색</label>
							<select id="search_type" name="search_type" class="selectmenu" style="width:100px;">
								<option value="TITLE">서명</option>
								<option value="AUTHOR">저자</option>
								<option value="PUBLER">출판사</option>
								<option value="PUBLER_YEAR">출판년도</option>
							</select>
							<input id="search_text" name="search_text" class="text" title="검색어" placeholder="검색어를 입력하세요" accesskey="s" type="text" value="" alt="검색어">
							<label for="search_text" style="display: none;">검색어를 입력하세요</label>
							<a href="" class="btn btn1" id="board_btn_search"><i class="fa fa-search"></i><span>검색</span></a>
						</fieldset>
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


    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>