<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html><head>
    <title>게시글 목록</title>
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
    <link rel="stylesheet" href="/assets/css/board/list.css">
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

    <div class="wrap">
    	<div class="boardText"><p>자유게시판</p></div>
    	    <div>
				<form method="get" action="/board/list" id="searchForm">
					<div class="fields">
						<div class="field">
							<div style="text-align:right;">
								<select class="type" name="type">
									<option ${pageMaker.cri.type == null?'selected':''} value="">검색 기준</option>
									<option ${pageMaker.cri.type == 'T'?'selected':''} value="T">제목</option>
									<option ${pageMaker.cri.type == 'C'?'selected':''} value="C">내용</option>
									<option ${pageMaker.cri.type == 'W'?'selected':''} value="W">작성자</option>
									<option ${pageMaker.cri.type == 'TC'?'selected':''} value="TC">제목 또는 내용</option>
									<option ${pageMaker.cri.type == 'TW'?'selected':''} value="TW">제목 또는 작성자</option>
									<option ${pageMaker.cri.type == 'TCW'?'selected':''} value="TCW">제목 또는 내용 또는 작성자</option>
								</select>
								<input id="keyword" name="keyword" type="text" value="${pageMaker.cri.keyword}"/>
								<input id="pageNum" type="hidden" value="${pageMaker.cri.pageNum}"/>
								<input id="amount" type="hidden" value="${pageMaker.cri.amount}"/>
								<a href="#" class="btn btn-info">검색</a>
							</div>	
						</div>
					</div>
				</form>
			</div>
		<div class="table_wrap">	
	    <table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col" width="10%">No</th>
		      <th scope="col" width="55%">제목</th>
		      <th scope="col" width="10%">작성자</th>
		      <th scope="col" width="15%">작성일</th>
		      <th scope="col" width="10%">조회수</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach var="board" items="${list }">
			    <tr class="table-light">
			      <td>${board.bno}</td>
			      <td><a class="goView" href="${board.bno }">${board.title}</a></td>
			      <td>${board.writer}</td>
			      <td>${board.regdate}</td>
			      <td>${board.views}</td>
			    </tr>
		  	</c:forEach>
		  </tbody>
		</table>
		</div>
	<div class="button">
	       <a href="/board/write${pageMaket.cri.getListLink() }"><button type="button" class="btn btn-info btn_reg">등록</button></a>
	</div>
	</div>
	<div class="paging">
		  <ul class="pagination">
			<c:if test="${pageMaker.prev}">
			    <li class="page-item">
				    <a class="page-link" href="${pageMaker.startPage-1}">&laquo;</a>
			    </li>
			</c:if>
		    <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage}">
		    	<c:choose>
		    		<%--현재페이지 --%>
		    		<c:when test="${pageMaker.cri.pageNum == num }">
		    			<li class="page-link active">${num}</li>	
		    		</c:when>
		    		<c:otherwise>
		    			<li class="page-item">
		      				<a class="page-link" href="${num}">${num}</a>
		    			</li>
		    		</c:otherwise>
		    	</c:choose>
		    </c:forEach>
		    <c:if test="${pageMaker.next }">
			    <li class="page-item">
			      <a class="page-link" href="${pageMaker.endPage+1 }">&raquo;</a>
			    </li>
		    </c:if>
		  </ul>
		  <form id="actionForm" action="/board/list" method="get">
		    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		    	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		    	<input type="hidden" name="type" value="${pageMaker.cri.type }">
		    	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		   </form>
		   <%-- 다른 페이지로 이동한 후 다시 목록 돌아올 때 이전 페이지 번호를 기억 --%>
		   <form action="" id="pageForm">
		   		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		    	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		   		<input type="hidden" name="type" value="${pageMaker.cri.type }">
		    	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		   </form>
	</div>
 
	
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
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
    <script type="text/javascript">
    	var searchForm =$("#searchForm");
    	var actionForm=$("#actionForm");
    	
    	$("searchForm a").on('click',function(e){
    		//기본속성을 막아줌
    		e.preventDefault();
    		
    		if(!serchFrom.find("option:selected").val()){
    			alert("검색 기준을 선택하세요");
    			return false;
    		}
    		if(!searchForm.find("input[name='keyword']").val()){
    			alert("검색어를 입력하세요");
    			return false;
    		}
    		searchForm.find("input[name='pageNum']").val("1");
    		searchForm.submit();
    	});
    	
    	$(".page-link").on("click",function(e){
    		e.preventDefault();
    		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    		actionForm.submit();
    	});
    </script>
    <script type="text/javascript">
    	var pageForm=$("#pageForm");
    	
    	$(".goView").on("click",function(e){
    		e.preventDefault();
    																	//내가 클릭한 href의 값(bno)
    		pageForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href") +"'>")
    		pageForm.attr("action","/board/view");
    		pageForm.submit();
    	});
    	
    </script>
</body>
</html>