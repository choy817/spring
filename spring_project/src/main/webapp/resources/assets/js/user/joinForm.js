//모든 공백 체크 정규식 
var empJ = /\s/g; 
//아이디 정규식 
var idJ = /^[a-z0-9][a-z0-9_\-]{4,}$/; 
// 비밀번호 정규식 
var pwJ =  /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^&*-]).{8,}$/;
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
	}else{
		if(!idJ.test(joinForm.userId.value)){
			alert("아이디는 4자 이상의 영문과 숫자만 사용 가능합니다.");
			joinForm.userId.focus();
			return false;
		}
	}/*if (checkId.innerHTML != "사용 가능한 아이디입니다.") {
		alert("아이디 중복검사를 먼저 해주세요");
		return false;
	}*/if(joinForm.userName.value=="" || joinForm.userName.value==null){
		$("#checkName").html("이름을 입력해 주세요");
		$("#checkName").css("color", "#f44336");
		joinForm.userName.focus();
		return false;
	}if(joinForm.userPw.value=="" || joinForm.userPw.value==null){
		$("#checkPw").html("비밀번호를 입력해 주세요");
		$("#checkPw").css("color", "#f44336");
		joinForm.userPw.focus();
		return false;
	}else{
		if(!pwJ.test(joinForm.userPw.value)){
			alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
			joinForm.userPw.focus();
			return false;
		}
	}
	if(joinForm.userPwConfirm.value=="" || joinForm.userPwConfirm.value==null){
		$("#checkpwConfirm").html("비밀번호를 확인해 주세요");
		$("#checkpwConfirm").css("color", "#f44336");
		joinForm.userPwConfirm.focus();
		return false;
	}if(joinForm.userPw.value!=joinForm.userPwConfirm.value){
		$("#checkpwConfirm").html("비밀번호가 일치하지 않습니다.");
		$("#checkpwConfirm").css("color", "#f44336");
		joinForm.userPwConfirm.focus();
		return false;
	}
	else{
		if(!pwJ.test(joinForm.userPw.value)){
			alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
			joinForm.userPw.focus();
			return false;
		}
	}
	if(joinForm.userEmail.value=="" || joinForm.userEmail.value==null){
		$("#checkEmail").html("이메일을 입력해 주세요");
		$("#checkEmail").css("color", "#f44336");
		joinForm.userEmail.focus();
		return false;
	}else{
		if(!mailJ.test(joinForm.userEmail.value)){
			alert("이메일 형식을 확인해 주세요");
			joinForm.userEmail.focus();
			return false;
		}
	}
	/*if(joinForm.sendNumber.value=="" || joinForm.sendNumber.value==null){
		$("#checkNumber").html("인증번호를 입력해 주세요");
		$("#checkNumber").css("color", "#f44336");
		joinForm.sendNumber.focus();
		return false;	
	}*/if(joinForm.userPhone.value=="" || joinForm.userPhone.value==null){
		$("#checkPhone").html("휴대폰 번호를 입력해 주세요");
		$("#checkPhone").css("color", "#f44336");
		joinForm.userPhone.focus();
		return false;
	}else{
		if(!phoneJ.test(joinForm.userPhone.value)){
			alert("휴대폰 번호는 '-' 없이 입력해야 합니다.");
			joinForm.userPhone.focus();
			return false;
		}
	}
	if(joinForm.userPostcode.value=="" || joinForm.userPostcode.value==null){
		$("#checkAddr").html("주소를 입력해 주세요");
		$("#checkAddr").css("color", "#f44336");
		joinForm.userPostcode.focus();
		return false;
	}
	joinForm.submit();
}

function checkId(){
	var idCheck=0;
	var userId = $('input[name=userId]').val();
	console.log("가져온 아이디 : "+userId);
	
	$.ajax({
		url : contextPath+"/user/checkId",
		type : "post",
		dataType:"JSON",
		data : userId,
		contentType : "application/json; charset=UTF-8",
		success : function(data){
			/*var result=JSON.parse(data);*/
			console.log(data);
			if(data.check == 1){
				console.log("들어옴");
				$('#checkId').html("중복된 아이디입니다.");
				$("#checkId").css("color", "#f44336");
			}else if(data.check == 0){
				console.log("들어옴2");
				$('#checkId').html("사용 가능한 아이디입니다.");  
				$("#checkId").css("color", "#4CAF50");
			}else{
				console.log("조건문 통과~")
			}
		}
	});
	
}

