//모든 공백 체크 정규식 
var empJ = /\s/g; 
//아이디 정규식 
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/; 
// 비밀번호 정규식 
var pwJ = /^[A-Za-z0-9]{4,12}$/; 
// 이름 정규식 
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; 
// 이메일 검사 정규식 
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; 
// 휴대폰 번호 정규식 
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;


function sendIt(){
	const joinForm=document.joinForm;
	
	if(joinForm.userId.value=="" || joinForm.userId.value==null){
		$("#checkId").html("아이디를 입력해 주세요");
		$("#checkId").css("color", "#f44336");
		joinForm.userId.focus();
		return false;
	}if(joinForm.userName.value=="" || joinForm.userName.value==null){
		$("#checkName").html("이름을 입력해 주세요");
		$("#checkName").css("color", "#f44336");
		joinForm.userName.focus();
		return false;
	}if(joinForm.userPw.value=="" || joinForm.userPw.value==null){
		$("#checkPw").html("비밀번호를 입력해 주세요");
		$("#checkPw").css("color", "#f44336");
		joinForm.userPw.focus();
		return false;
	}if(joinForm.userPwConfirm.value=="" || joinForm.userPwConfirm.value==null){
		$("#checkpwConfirm").html("비밀번호를 다시 입력해 주세요");
		$("#checkpwConfirm").css("color", "#f44336");
		joinForm.userPwConfirm.focus();
		return false;
	}if(joinForm.userEmail.value=="" || joinForm.userEmail.value==null){
		$("#checkEmail").html("이메일을 입력해 주세요");
		$("#checkEmail").css("color", "#f44336");
		joinForm.userEmail.focus();
		return false;
	}if(joinForm.sendNumber.value=="" || joinForm.sendNumber.value==null){
		$("#checkNumber").html("인증번호를 입력해 주세요");
		$("#checkNumber").css("color", "#f44336");
		joinForm.sendNumber.focus();
		return false;	
	}if(joinForm.userPhone.value=="" || joinForm.userPhone.value==null){
		$("#checkPhone").html("인증번호를 입력해 주세요");
		$("#checkPhone").css("color", "#f44336");
		joinForm.userPhone.focus();
		return false;
	}if(joinForm.userPostcode.value=="" || joinForm.userPostcode.value==null){
		$("#checkAddr").html("주소를 입력해 주세요");
		$("#checkAddr").css("color", "#f44336");
		joinForm.userPostcode.focus();
		return false;
	}
	joinForm.submit();
}

function checkId(){
	var userId = $('input[name=userId]').val();
	$.ajax({
		 type		:'post',
		 contentType:"application/x-www-form-urlencoded; charset=UTF-8",
	     url		:contextPath+'/user/CheckId?userId='+userId, 
	     success	:function(data){
	     console.log($.trim(data));
	         if($.trim(data)==0){
	             $('#checkText').html("사용 가능한 팀명입니다.");  
	             $("#checkText").css("color", "#4CAF50");
	         }else{
	             $('#checkText').html("중복된 팀명입니다.");
	             $("#checkText").css("color", "#f44336");
	         }
	     },
	     error:function(request,status,error){
	    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	     }
  });
};
