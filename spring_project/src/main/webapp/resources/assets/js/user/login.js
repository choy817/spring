function sendIt(){
	const loginForm=document.loginForm;
	
	if(loginForm.userId.value=="" || loginForm.userId.value==null){
		$("#checkId").html("아이디를 입력해 주세요");
		$("#checkId").css("color", "#f44336");
		loginForm.userId.focus();
		return false;
	}if(loginForm.userPw.value=="" || loginForm.userPw.value==null){
		$("#checkPw").html("비밀번호를 입력해 주세요");
		$("#checkPw").css("color", "#f44336");
		loginForm.userPw.focus();
		return false;
	}
	loginForm.submit();
}