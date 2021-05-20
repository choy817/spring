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
