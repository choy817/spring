//모든 공백 체크 정규식 
var empJ = /\s/g; 
// 비밀번호 정규식 
var pwJ =  /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~!@#$%^&*-]).{8,}$/;


function sendIt(){
	const deleteForm=document.deleteForm;
	if(deleteForm.userPw.value=="" || deleteForm.userPw.value==null){
		$("#checkPw").html("비밀번호를 입력해 주세요");
		$("#checkPw").css("color", "#f44336");
		deleteForm.userPw.focus();
		return false;
	}
	deleteForm.submit();
}

