<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
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
    <link rel="stylesheet" href="/assets/css/shop/newList.css">
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
                <c:choose>
                	<c:when test="${sessionScope.user ne null}">
	                	<div class="session">
							<p>${sessionScope.user.userName}님 환영합니다
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
    <%--본문 시작 --%>
    <div class="boardText"><p>신간소개</p></div>
    <form action="" id="listForm">
    <div class="prod_wrap">
    	<div id="search-results" class="search-results wide">
    			<c:forEach var="i" items="${newList }">
				<div class="row">
					<div class="thumb">
						<a class="goDetail" href="${i.pno}">
						<img src="${i.imgURL }" alt="">
						</a>
					</div>
					<div class="box">
						<div class="item">
							<div class="bif">
								<a class="name goDetail" href="${i.pno }">${i.prodTitle }</a>
								<p>${i.author }</p>
								<p>${i.company }</p>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>																									
			</div>	
		</div>
	</form>
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
		  <form id="actionForm" action="/shop/newList" method="get">
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
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
    	var listForm=$("#listForm");
    	var actionForm=$("#actionForm");
    	
    	$(".page-link").on("click",function(e){
    		e.preventDefault();
    		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
    		actionForm.submit();
    	});
    	
    	$(".goDetail").on("click", function(e){
    		e.preventDefault();
    		
    		listForm.append("<input type='hidden' name='pno' value='"+$(this).attr("href")+"'>");
    		listForm.attr("action","/shop/prodDesc");
    		listForm.submit();
    	});
    </script>
</html>