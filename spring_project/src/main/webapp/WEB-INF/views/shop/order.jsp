<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
    <title>주문결제</title>
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
    <link rel="stylesheet" href="/assets/css/shop/order.css">
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
   <div class="order_wrap"> 
	   <div class="table_wrap">
		   <div class="prod_table">
		   <div class="writeText"><p>주문결제</p></div>
		   		<p class="info_text">주문 상품 정보</p>
		   		<table class="order_prod">
		 			<colgroup>
		                 <col width=55%>
		                 <col width=5%>
		                 <col width=20%>
		            </colgroup>
		   			<tbody>
		   				<tr class="table_top">
					      	<td align="center" bgcolor="#f4f4f4" class="popup">상품명</td>
					      	<td width="74" align="center" bgcolor="#f4f4f4" class="popup">수량</td>
					      	<td width="138" align="center" bgcolor="#f4f4f4" class="popup">가격</td>
					    </tr>
					    <tr class="table_bottom">
					    	<td bgcolor="#FFFFFF" style="padding-left:8px" height="100">
					    		<a href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=260212323" target="_blank">불평꾼들</a> 
					    	</td>
					    	<td align="center" bgcolor="#FFFFFF">1</td>
					    	<td align="center" bgcolor="#FFFFFF">14,400원 / 800원</td>
					    </tr>
					 </tbody>
		   		</table>
		   		</div>
	   		<p class="info_text">주문자 정보</p>
	 			<table cellpadding="0" cellspacing="0" class="order_info">
	   			  <colgroup>
	                <col width="25%">
	                <col width="auto">
	              </colgroup>
	                    <tbody>
	                    	<tr class="table_top">
		                        <th>이름</th>
		                        <td><input type="text" id="txtMemNm" value="000" class="ipubx"></td>
	                    	</tr>
	                   		 <tr>
	                        	<th>핸드폰</th>
	                        	<td class="num_p">
									<input type="text" id="txtAddrMobNo2" value="0000" class="ipubx">
	                        	</td>
	                    	</tr>
	                    	<tr class="table_bottom">
	                        	<th>이메일</th>
	                        	<td><input type="text" id="txtMemEml" value="aaa@naver.com" class="ipubx">
	                        </td>
	                    </tr>
	                </tbody>
	            </table>  
	            <p class="info_text">받는사람 정보</p>
	           <table class="deliver_info">
	              <colgroup>
	                <col width="25%">
	                <col width="auto">
	              </colgroup>
	        <tbody>
	        <tr class="table_top">
	            <th class="info" >이름</th>
	            <td> 
	                <div class="info_deliver">
	                    <span class="input_area">
	                        <input type="text" id="receiveName" class="inpt_default ipubx" maxlength="20">
	                    </span>
	                </div>
	            </td>
	        </tr>
	        <tr class="bd_none">
	            <th class="info">연락처</th>
	            <td>
	            	<input type="text" id="txtAddrMobNo2" class="ipubx" placeholder="ex) 010-0000-0000">
	            </td>
	        </tr>
	        <tr class="bd_none">
	            <th>주소</th>
	            <td>
	                <div class="info_deliver">
						<input type="text" id="sample6_postcode" class="ipubx" placeholder="우편번호">
						<input type="button" class="ipubx"onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" class="ipubx" id="sample6_address" placeholder="주소"><br>
						<input type="text" class="ipubx" id="sample6_detailAddress" placeholder="상세주소">
						<input type="text" class="ipubx" id="sample6_extraAddress" placeholder="참고항목">
	                </div>
	            </td>
	        </tr>
	        <tr class="bd_none table_bottom">
	            <th>배송시 요청사항</th>
	            <td>
	                <div class="info_deliver">
	                    <div class="selbox_comm">
	                        <select class="direct_input">
	                        	<option>배송시 요청사항 선택</option>
	                        	<option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>
	                        	<option value="부재시 휴대폰으로 연락바랍니다.">부재시 휴대폰으로 연락바랍니다.</option>
	                        	<option value="집 앞에 놓아주세요.">집 앞에 놓아주세요.</option>
	                        	<option value="택배함에 넣어주세요.">택배함에 넣어주세요.</option>
	                        	<option value="">직접 입력</option>
	                        </select>
	                    </div>
	                    <div class="deliver_msg" style="display: none;">
		                    <span class="input_area" id="directShipMsgDisplay" >
		                        <input type="text" id="directShipMsg" class="inpt_default ipubx" value="" maxlength="50">
		                    </span>
		                    <span id="shipMsgByte" class="byte">(00/50자)</span>
	                    </div>
	                </div>
	            </td>
	        </tr>
	        </tbody>
	    </table> 	
	    <p class="info_text">결제정보</p>
	    <div class="settleTpGrp_cont">
	        <!--// 카드사 선택 -->
	           <div class="scard_w">
	            <table cellpadding="0" cellspacing="0" class="tbl_pay tbl_scard">
	   			<colgroup>
	              <col width="25%">
	              <col width="auto">
	            </colgroup>    	                            
	            <tbody>
	              <tr class="table_top" style=" ">
	                <th>계좌이체</th>
	                  <td class="dlv_mtd">
	                     <span class="rdb_w" style=""><label><input type="radio" id="rdoDeposit" name="rdoPaymentMethod" value="03" class="rdbtn" checked> 무통장 입금</label> </span>
	                  </td>
	              </tr>
	              <tr class="table_bottom" style="  ">
	                <th>간편결제</th>
	                <td class="dlv_mtd">
		                <span class="rdb_w">
			                <label>
			                  <input type="radio" id="rdoKakaoPay_NEW" name="rdoPaymentMethod" value="12" class="rdbtn" >
			                                        카카오페이
			                </label>
		                </span>
	                </td>
	              </tr>
	             </tbody>
	            </table>
	          </div>
	          <!-- 결제 방법 선택 //-->
	          <!--// 무통장 입금은행 -->
	          <div id="divPayMthdBankAccnt" class="scard_w">
	            <table cellpadding="0" cellspacing="0" id="" class="tbl_pay">
					<colgroup>
		              <col width="25%">
		              <col width="auto">
		            </colgroup>                                    
	                <tbody>
	                	<tr>
	                      <th>입금은행</th>
	                      <td>
	                        <div class="selbxw" style="width: 200px;">
	                          <select id="ddlBank" style="width: 180px;">
	                             <option value="00" selected="selected">입금하실 은행을 선택하세요.</option>
	                                 <option value="기업은행">기업은행</option>
	                          </select>
	                        </div>
	                     </td>
	                    </tr>
	                    <tr class="table_bottom">
	                      <th>입금자</th>
	                      <td><input type="text" id="txtPayerNm" value="" class="ipubx"></td>
	                    </tr>
	                </tbody>
	            </table>
	           </div>
	           <!-- 무통장 입금은행 //-->
			   <!--// 무통장입금 안내 -->
	           <div id="divPayMthdBankAccntInfo" class="scard_w">
	             <table cellpadding="0" cellspacing="0" id="" class="tbl_pay">
					<colgroup>
		              <col width="25%">
		              <col width="auto">
		            </colgroup>                             
	                <tbody>
	                  <tr class="table_bottom">
	                    <th>무통장입금 안내</th>
	                    <td>
	                      <ul class="smsg_l">
	                        <li>정확한 주문 금액<strong>(원 단위까지)</strong> 입금 요망</li>
	                        <li>주문 완료 후 7일 이내에 미입금시 주문 자동 취소</li>
	                        <li>입금 완료 시점 기준 배송 일정이 최종 확정되며, 재고 상황에 따라 품절 및 지연될 수 있음</li>
	                        <li>증권사 현금카드, 제휴카드 이체 불가</li>
	                        <li>은행업무 시간이 아닌 경우 입금 확인이 지연될 수 있음(토요일, 공휴일 등)</li>
	                        <li>은행 수수료 부과 및 예약이체(불가) 주의</li>
	                       </ul>
	                     </td>
	                  </tr>
	                </tbody>
	             </table>
	          </div>
	          <!-- 무통장입금 안내 //-->
	          <div id="divPayMethodKakaoNewPayInfo" style="display: none;" class="scard_w">
	                <table cellpadding="0" cellspacing="0" id="" class="tbl_pay">
					<colgroup>
		              <col width="25%">
		              <col width="auto">
		            </colgroup>                
	                    <tbody>
	                        <tr class="table_bottom">
	                            <th>카카오페이 결제 안내</th>
	                            <td>
	                                <ul class="smsg_l">
	                                    <li>카카오톡에서 신용/체크카드 연결하고, 결제도 지문으로 쉽고 편리하게 이용하세요!</li>
	                                    <li>본인명의 스마트폰에서 본인명의 카드 등록 후 사용 가능</li>
	                                    <li>(카드등록 : 카카오톡 &gt; 더보기 &gt; 카카오페이 &gt; 카드)</li>
	                                    <li>30만원 이상 결제, ARS 추가 인증 필요</li>
	                                    <li>이용가능 카드사 : 모든 국내 신용/체크카드</li>
	                                    <li>
	                                        <strong>카카오페이는 무이자할부 및 제휴카드 혜택 내용과 관계가 없으며, 자세한 사항은 카카오페이 공지사항에서 확인하실 수 있습니다.</strong>
	                                    </li>
	                                </ul>
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	            </div>
	      </div>
	    <p class="info_text">주문자 동의</p>
	    	<div class="term_list">
	        <div class="toggle_layer">
	            <div class="tg_tit table_top">
	                <input type="checkbox" name="blind" class="blind all_check" id="noMemberConditions" onclick="javascript:checks();">
	                <label class="chk_box" for="noMemberConditions">
	                    <span class="ico"></span>이용약관 및 개인 정보 수집∙이용에 모두 동의합니다. (필수)
	                </label>
	                <span class="btn_sys sml_b tg_btn">
					    <em class="ico"></em>
					</span>
	            </div>
	            <ul class="list_type table_bottom">
	                <li>이용약관 동의</li>
	                <li>개인정보 수집 및 이용 동의</li>
	            </ul>
	            <div class="tg_con">
	                    <details>
	                <div class="term_wrap">
	                    <div class="term_tit">
	                        <input type="checkbox" name="blind" class="blind" id="order8">
	                        <label class="chk_box chk_small" for="order8">
	                            <span class="ico"></span>이용약관 동의
	                        </label>
	                        <a href="javascript:void(0)" onclick="orderConditionsCommon.openAgreement();" class="btn_sys sml_s">
	                            <span>내용보기</span>
	                        </a>
	                    </div>
	                </div>
	                <div class="term_wrap">
	                    <div class="term_tit">
	                        <input type="checkbox" name="blind" class="blind" id="order9">
	                        <label class="chk_box chk_small" for="order9">
	                            <span class="ico"></span>개인정보 수집 및 이용 동의
	                        </label>
	                    </div>
	                    <div class="term_con">
	                        <table class="term_tbl">
	                            <caption>개인정보 수집 목적, 항목, 이용 안내</caption>
	                            <colgroup>
	                                <col style="width:33%">
	                                <col style="width:17%">
	                                <col style="width:17%">
	                                <col style="width:33%">
	                            </colgroup>
	                            <tbody>
	                            <tr>
	                                <th scope="col">목적</th>
	                                <th scope="col" colspan="2">항목</th>
	                                <th scope="col">보유 및 이용 기간</th>
	                            </tr>
	                            <tr>
	                                <td>상품 주문 확인 및 이용자 식별, 서비스 이용 및 상담, 주문자 본인확인</td>
	                                <td colspan="2"> 주문자 정보<br>(이름, 휴대폰번호, 이메일)</td>
	                                <td rowspan="3"><strong>5년 (계약 및 철회, 결제 및 공급)</strong></td>
	                            </tr>
	                            <tr>
	                                <td rowspan="2">상품 배송 및 서비스 제공을 위한 사용자 정보 확인</td>
	                                <td>배송상품</td>
	                                <td>배송상품 : 수취인정보 (이름, 주소, 휴대전화번호)</td>
	                            </tr>
	                            <tr>
	                                <td>쿠폰/티켓상품</td>
	                                <td>쿠폰/티켓상품 : 사용자정보 (이름, 휴대전화번호)</td>
	                            </tr>
	                            <tr>
	                                <td>해외배송상품 구매 시 세관 신고</td>
	                                <td>해외배송상품구매</td>
	                                <td>수취인의 개인통관고유부호</td>
	                                <td><strong>법령에 따른 보존기간</strong></td>
	                            </tr>
	                            <tr>
	                                <td>서비스 제공 및 계약의 이행, 부정 이용 방지, 비인가 사용 방지</td>
	                                <td colspan="2">서비스 이용 기록, 쿠키, 방문 일시, 기기정보</td>
	                                <td><strong>3개월</strong></td>
	                            </tr>
	                            </tbody>
	                        </table>
	                        <p>고객님께서는 정보 제공에 동의하지 않으실 수 있으며 동의하지 않으실 경우, 일부 구매가 제한될 수 있습니다.</p>
	                    </div>
	                </div>
	               </details>
	            </div>
	        </div>
	        <div class="toggle_layer">
	            <div class="tg_tit">
	                <input type="checkbox" name="blind2" class="blind all_check2" id="orderConditions" onclick="javascript:checks2();">
	                <label class="chk_box" for="orderConditions">
	                    <span class="ico"></span>구매 및 결제대행서비스 이용약관, 개인정보 제3자 제공에 모두 동의합니다. (필수)
	                </label>
	            </div>
	            
	            <ul class="list_type table_bottom">
	                <li>구매조건 확인 및 결제 진행 동의</li>
	                <li>개인정보 수집 이용 및 제3자 정보 제공 동의</li>
	                <li id="paymentAgency">결제대행서비스 이용약관 동의</li>
	            </ul>
				<details>    
	            <div class="tg_con">
	                <div class="term_wrap">
	                    <div class="term_tit">
	                        <input type="checkbox" name="blind2" class="blind" id="order11">
	                        <label class="chk_box chk_small" for="order11">
	                            <span class="ico"></span>구매조건 확인 및 결제 진행 동의
	                        </label>
	                    </div>
	                    <div class="term_con">
	                         	위 상품의 구매조건을 확인하였으며, 구매에 동의합니다.
	                    </div>
	                </div>
	                <div class="term_wrap">
	                    <div class="term_tit">
	                        <input type="checkbox" name="blind2" class="blind term_all" id="order12">
	                        <label class="chk_box chk_small" for="order12">
	                            <span class="ico"></span>개인정보 수집 이용 및 제3자 정보 제공 동의
	                        </label>
	                    </div>
	                    <div class="term_con">
	                        <div class="term_col2">
	                            <div class="scr_wrap">
	                                <h5>개인정보 수집·이용 동의</h5>
	                                <p>위메프는 고객님께서 구매하신 서비스 및 상품의 원활한 제공을 위해 최소한의 범위 내에서 아래와 같이 개인정보를 수집·이용 합니다. 고객님께서는 수집 및 이용에 동의하지 않으실 수 있으며 동의하지 않으실 경우, 일부 구매가 제한될 수 있습니다.</p>
	                                <table>
	                                    <tbody>
	                                    <tr>
	                                        <th>수집이용·목적</th>
	                                        <td>상품 배송 및 서비스 제공을 위한 사용자 정보확인</td>
	                                    </tr>
	                                    <tr>
	                                        <th>수집항목</th>
	                                        <td>수취인 정보(이름, 휴대폰번호, 실물 배송 상품의 경우 주소, 해외배송 상품의 경우 개인통관고유부호), 교환/반품 시 신청자 정보(이름, 휴대폰번호, 주소)</td>
	                                    </tr>
	                                    <tr>
	                                        <th>보유 및 이용기간</th>
	                                        <td><em>5년 (계약 및 청약철회, 대금결제 및 재화 등의 공급)</em></td>
	                                    </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                        <div class="term_col2">
	                            <div class="scr_wrap">
	                                <h5>개인정보 제3자 제공 동의</h5>
	                                <p>
	                                    	위메프는 고객님께서 구매하신 서비스 및 상품의 원활한 제공을 위해 최소한의 범위 내에서 아래와 같이 개인정보를 제공 합니다. 
	                                    	고객님께서는 제3자 제공에 동의하지 않으실 수 있으며 동의하지 않으실 경우, 일부 구매가 제한될 수 있습니다.
	                                </p>
	                                <p class="table_summary">국내배송상품 업체</p>
	                                   <table class="table_info">
	                                      <tbody>
	                                         <tr>
	                                           <th>제공받는자</th>
	                                           <td><em>바블링브룩</em></td>
	                                         </tr>
	                                         <tr>
	                                           <th>제공목적</th>
	                                           <td><em>판매자와 구매자 간 원활한 거래의 진행(구매자확인, 해피콜 등), 고객상담 및 불만처리, 서비스 제공, 상품과 경품 배송(전송 및 설치등 포함)</em></td>
	                                         </tr>
	                                         <tr>
	                                           <th>제공항목</th>
	                                           <td>주문자 정보(이름, 휴대폰번호), 수취인 정보(이름, 휴대폰번호, 실물 배송 상품의 경우 주소)</td>
	                                         </tr>
	                                         <tr>
	                                           <th>보유 및 이용기간</th>
	                                           <td><em>서비스 제공 완료 후 3개월</em></td>
	                                         </tr>
	                                        </tbody>
	                                   </table>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="term_wrap" id="paymentConditions">
	                    <div class="term_tit">
	                        <input type="checkbox" name="blind2" class="blind term_all" id="order15">
	                        <label class="chk_box chk_small" for="order15">
	                            <span class="ico"></span>결제대행서비스 이용약관 동의
	                        </label>
	                            <div class="term_con">
	                     		   ㈜위메프는 아래 전자지급결제대행 서비스 및 결제대금예치 서비스를 사용합니다.
	                        <ul class="order_agree_link_wrap">
	                            <li name="condition" condition-type="kakaoPay">
	                                <strong class="title">(주)카카오페이</strong>
	                                <a onclick="javascript:void(0)" class="link">[약관]</a>
	                            </li>
	                        </ul>
	                    </div>
	                    </div>
	                </div>
	            </div>
	          </details>        
	        </div>
	    </div>
	    <p class="info_text">결제 금액</p>
	    <div class="order_price_wrap">
	    <div class="order_price_info">
	    	<table class="order_price">
	   			<colgroup>
	              <col width="20%">
	              <col width="auto">
	            </colgroup> 
	            <tbody>
	            	<tr class="table_top">
	            		<th>상품금액</th>
	            		<td><span class="price">2,900</span>원</td>
	            	</tr>
	            	<tr>
	            		<th>배송비</th>
	            		<td><span class="price" id="sumShipPrice">0</span>원</td>
	            	</tr>
	            	<tr class="table_bottom">
	            		<th>최종 결제금액</th>
	            		<td><strong class="price" id="lastPrice">2,900</strong>원</td>
	            	</tr>
	            </tbody>    	
	    	</table>
			<div class="btn_wrap">
	            <input type="button" class="btn btn-info" value="결제">
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
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Templatemo -->
   <!--  <script src="/assets/js/templatemo.js"></script> -->
    <!-- Custom -->
    <script src="/assets/js/custom.js"></script>
    <script src="/assets/js/shop/order.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>