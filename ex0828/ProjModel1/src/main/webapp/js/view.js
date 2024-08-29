/**
 * 
 **/

function deletePost() {
	var confirmed = confirm("정말로 삭제하겠습니까?");
	if (confirmed) {
		var form = document.writeFrm; // 이름(name)이 "writeFrm"인 폼 선택
		form.method = "post"; // 전송 방식 
		form.action = "./deleteProcess.jsp"; // 전송 경로
		form.submit(); // 폼값 전송
	}
}

function validateForm(form) { // 폼 내용 검증 
	if (form.title.value == "") {
		alert("제목을 입력하세요.");
		form.title.focus();
		return false;
	}
	if (form.content.value == "") {
		alert("내용을 입력하세요.");
		form.content.focus();
		return false;
	}
}

function validateFormLogin(form) {
			if (!form.user_id.value) {
				alert("아이디를 입력하세요");
				return false;
			}

			if (form.user_pw.value == "") {
				alert("패스워드를 입력하세요");
				return false;
			}
		}

