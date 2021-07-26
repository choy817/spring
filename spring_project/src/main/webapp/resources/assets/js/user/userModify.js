function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }

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
	const modifyForm=document.modifyForm;
	if(modifyForm.userPw.value=="" || modifyForm.userPw.value==null){
		$("#checkPw").html("비밀번호를 입력해 주세요");
		$("#checkPw").css("color", "#f44336");
		joinForm.userPw.focus();
		return false;
	}else{
		if(!pwJ.test(modifyForm.userPw.value)){
			alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
			modifyForm.userPw.focus();
			return false;
		}
	}
	if(modifyForm.userPwConfirm.value=="" || modifyForm.userPwConfirm.value==null){
		$("#checkpwConfirm").html("비밀번호를 확인해 주세요");
		$("#checkpwConfirm").css("color", "#f44336");
		modifyForm.userPwConfirm.focus();
		return false;
	}if(modifyForm.userPw.value!=modifyForm.userPwConfirm.value){
		$("#checkpwConfirm").html("비밀번호가 일치하지 않습니다.");
		$("#checkpwConfirm").css("color", "#f44336");
		modifyForm.userPwConfirm.focus();
		return false;
	}
	else{
		if(!pwJ.test(modifyForm.userPw.value)){
			alert("비밀번호는 8자 이상, 숫자, 대문자, 소문자, 특수문자를 모두 포함해야 합니다.");
			modifyForm.userPw.focus();
			return false;
		}
	}
	if(modifyForm.userEmail.value=="" || modifyForm.userEmail.value==null){
		$("#checkEmail").html("이메일을 입력해 주세요");
		$("#checkEmail").css("color", "#f44336");
		modifyForm.userEmail.focus();
		return false;
	}else{
		if(!mailJ.test(modifyForm.userEmail.value)){
			alert("이메일 형식을 확인해 주세요");
			modifyForm.userEmail.focus();
			return false;
		}
	}
	if(modifyForm.userPhone.value=="" || modifyForm.userPhone.value==null){
		$("#checkPhone").html("휴대폰 번호를 입력해 주세요");
		$("#checkPhone").css("color", "#f44336");
		modifyForm.userPhone.focus();
		return false;
	}else{
		if(!phoneJ.test(modifyForm.userPhone.value)){
			alert("휴대폰 번호는 '-' 없이 입력해야 합니다.");
			modifyForm.userPhone.focus();
			return false;
		}
	}
	if(modifyForm.userPostcode.value=="" || modifyForm.userPostcode.value==null){
		$("#checkAddr").html("주소를 입력해 주세요");
		$("#checkAddr").css("color", "#f44336");
		modifyForm.userPostcode.focus();
		return false;
	}
	modifyForm.submit();
}

