<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ page session="true" %>  
<!DOCTYPE html>
<html><head>
    <title>게시글 보기</title>
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
    <link rel="stylesheet" href="/assets/css/board/view.css">
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
    
    <div class="table_wrap">
    	<div class="writeText"><p>자유게시판</p></div>
    	<div class="form_wrap">
			<form method="post" action="/board/delete" id="actionForm">
	    		<input type="hidden" name="pageNum" value="${cri.pageNum}">
				<input type="hidden" name="amount" value="${cri.amount}">
				<input type="hidden" name="keyword" value="${cri.keyword}">
				<input type="hidden" name="type" value="${cri.type}">
				 <table class="table">
			        <colgroup>
			            <col width="15%">
			            <col width="35%">
			            <col width="15%">
			            <col width="*">
			        </colgroup>
			        <tbody>
			            <tr class="">
			                <th scope="col">No</th>
			                <td>${board.bno}</td>
			                <th scope="col">조회수</th>
			                <td>${board.views}</td>
			            </tr>
			            <tr class="">
			                <th>작성자</th>
			                <td>${board.writer }</td>
			                <th>작성시간</th>
			                <td>${board.regdate }</td>
			            </tr>
			            <tr class="">
			                <th scope="col">제목</th>
			                <td colspan="3">${board.title}</td>
			            </tr>
			            <tr class="">
			                <th>내용</th>
			                <td colspan="3" style="height: 400px; text-align: left;">${board.content }</td>
			            </tr>
			            <tr class="">
			                <th scope="col">파일 첨부</th>
			                <td colspan="3"><a href="javascript:void(0);" onclick="javascript:fileDown('${file.fileNo}'); return false">${file.realName}</a></td>
			            </tr>
			        </tbody>
			    </table>
			    <div class="replyText"><p>댓글</p></div>
			    
			    
			    
			    <div class="reply">
			    	<ul class="replies">
					</ul>
					<div class="regit_wrap">
						<div class="replytext_wrap">
							<input type="text" class="replyer" name="replyer" value="${sessionScope.user.userName}" readonly>
					    	<textarea name="reply-content" placeholder="댓글을 입력하세요"></textarea>
					    	<a href="#" class="btn register">등록</a>
				    	</div>
				    	<div class="paging" style="text-align: center;font-size: 20px;"></div>
			    	</div>
		    	</div>
			    <div class="button">
			    	<c:choose>
    					<c:when test="${board.writer eq sessionScope.user.userName}">
						    <button type="button" class="btn btn-info" onclick="location.href='/board/modify${cri.getListLink()}&bno=${board.bno}'">수정</button>
						    <button type="submit" id="submitBtn" class="btn btn-info">삭제</button>
 				   	 	</c:when>
				   	</c:choose>  
				    <button type="button" class="btn btn-secondary" onclick="location.href='/board/list${cri.getListLink()}'">목록</button>
				</div>
				
			</form>   
		</div>
	<div>
	   <form id="readForm">
	   		<input type="hidden" id="fileNo" name="fileNo" value="">
	   </form>
	</div>
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
</body>
	<!-- End Footer -->
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
    <script src="/assets/js/templatemo.js"></script>
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
    <script src="/assets/js/board/reply.js"></script>
    <script type="text/javascript">
    	var readForm=$("#readForm");
    	var actionForm=$("#actionForm");
    	
    	function fileDown(fileNo){
    		console.log("파일들어옴")
    		$("#fileNo").attr("value",fileNo);
    		readForm.attr("action","/board/fileDown");
    		readForm.submit();
    	}
    	
    	$("#submitBtn").on("click",function(e){
	    	actionForm.append("<input type='hidden' name='bno' value='${board.bno}'>");
	    	actionForm.submit();
    	});
    </script>
    <!-- el, jstl있음 -->
    <script type="text/javascript">
		$(document).ready(function(){
			var bnoValue="${board.bno}";
			var replyUL = $(".replies");
			var pageNum = 1;
			var replyPaging=$(".paging");
			
			showList(pageNum);
			//댓글 페이징 처리
			function showReplyPage(replyCnt){
				var str = "";
				var endNum = Math.ceil(pageNum / 10.0) * 10;
				var startNum = endNum-9;
				var realEnd = Math.ceil(replyCnt / 10.0);
				
				var prev = startNum !=1;
				var next = false;
				
				if(endNum > realEnd / 10.0){
					endNum = realEnd;
				}
				if(endNum * 10 < replyCnt){
					next = true;
				}
				if(prev){
					str+="<a class='changePage' href='"+(startNum-1) +"'><code>&lt;</code></a>";
				}
				for(let i = startNum; i <=endNum; i++){
					if(pageNum == i){
						str+="<code>" + i + "</code>";
						continue;
					}
					str += "<a class='changePage' href='"+i+"'><code>"+ i + "</code></a>";
				}
				if(next){
					str+="<a class='changePage' href='"+(endNum+1) +"'><code>&gt;</code></a>";
				}
				replyPaging.html(str);
			}
			//페이지 이동
			$(".paging").on("click","a.changePage",function(e){
	    		e.preventDefault();
				pageNum = parseInt($(this).attr("href"));
				//페이지 이동 후 목록 보여주기
				showList(pageNum);
			});
			//댓글 목록 보여주기
			function showList(page){
				replyService.getList({bno : bnoValue, page : page || 1},
				function(replyCnt,list){
					console.log("list : "+list.length);
					//댓글 목록이 없을 경우
					if(list ==null || list.length ==0){
						replyUL.html("댓글이 없습니다! 댓글을 남겨주세요");
						return;
					}
					
					var str="";
					var test="";
					var session="${sessionScope.user.userName}";
					
					//console.log("지금 세션 : "+session);
					
					//댓글 목록이 있을 경우
					for(let i=0, len=list.length || 0; i<len;i++){
 						str +="<li class='reply_list' style = 'disply:block'data-rno='"+ list[i].rno +"'>";
						str +="<p><strong>"+list[i].replyer+"</strong></p>";
						str +="<p class='reply"+list[i].rno+"'>"+list[i].reply+"</p>";
						str +="<div style='text-align:right;'>"+replyService.displayTime(list[i].replydate);
						
						if(list[i].replyer==session){
							str +="<br><a href='"+list[i].rno+"'class='modify'>수정</a>";
							str +="<a href='"+list[i].rno+"' class='finish' style='display:none;'>수정 완료</a>";
							str +="&nbsp;&nbsp;&nbsp;&nbsp;<a href='"+list[i].rno+"'class='remove'>삭제</a></div>";
						}
						str +="<div class='reply'></div></li>"; 
					}
					replyUL.html(str);
					showReplyPage(replyCnt);
					//댓글 삭제	
					$(".replies").on("click","a.remove",function(e){
						e.preventDefault();
						var rnoValue=$(this).attr("href");
						replyService.deleteReply(rnoValue,function(result){
							alert(result);
							//삭제 후 댓글 목록 보여주기
							showList(pageNum);
						})
					});
					//댓글 수정
					$(".replies").on("click","a.modify",function(e){
						e.preventDefault();
						var rnoValue=$(this).attr("href");
						var replyTag=$(".reply"+rnoValue);
						
						replyTag.html("<textarea class='"+rnoValue+"'>"+replyTag.text()+"</textarea>")
						$(this).hide();
						
						var finishs=$(".finish");
						for(let i=0; i<finishs.length;i++){
							if($(finishs[i]).attr("href")==rnoValue){
								$(finishs[i]).show();
								break;
							}
						}
					});
					$(".replies").on("click","a.finish",function(e){
						e.preventDefault();
						var rnoValue=$(this).attr("href");
						
						replyService.modify({rno:rnoValue,reply:$("."+rnoValue).val()},
								function(result){
									alert(result);
									showList(pageNum);
						});
					})
				});
			}
			//댓글 등록
			$(".register").on("click",function(e){
	    		e.preventDefault();
	    		var reply = $("textarea[name='reply-content']").val();
	    		var replyer=$("input[name='replyer']").val();
	    		replyService.add({reply : reply, replyer : replyer, bno : bnoValue},function(result){
	    			console.log(result);
	    			showList(pageNum);
	    		});
	    	});
		});
    </script>
</html>