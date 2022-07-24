function idCheck() {
	var mail = document.getElementById("mail").value;
	var msg = document.getElementById('id_msg');
	msg.innerHTML = " ";
	
	if (mail == "") {
		msg.innerHTML = "필수 정보입니다.";
		return;
	}

	var ismail = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
	if ( (ismail.test(mail)) == false ) {
		msg.innerHTML = "이메일 형식으로 작성해 주세요.";
		return;
	}

}
function pwCheck() {
	var pw = document.getElementById("pw").value;
	var msg1 = document.getElementById('pw_msg1');
	var msg2 = document.getElementById('pw_msg2');

	if (pw == "") {
		msg1.innerHTML = "사용불가";
		msg2.innerHTML = "필수 정보입니다.";
		return;
	}

	var isPW = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{8,16}$/;
	if (!isPW.test(pw)) {
		msg1.innerHTML = "사용불가";
		msg2.innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
		return;
	}

	msg1.style.color = "green";
	msg1.style.display = "block";
	msg1.style.left = "330px";
	msg1.innerHTML = "사용가능";
	msg2.innerHTML = "";
}

function confirmCheck() {
	var pw = document.getElementById("pw").value;
	var confirmPw = document.getElementById("confirmPw").value;
	var msg = document.getElementById('co_msg');
	msg.style.color = "red";
	msg.style.fontSize = "13px";
	msg.style.position = "relative";
	msg.style.left = "10px";
	msg.style.top = "-40px";
	if (confirmPw == "") {
		msg.innerHTML = "필수 정보입니다.";
		return;
	}

	if (pw != confirmPw) {
		msg.innerHTML = "비밀번호가 일치하지 않습니다.";
		return;
	}
	msg.innerHTML = "";
}

function nameCheck() {
	var name = document.getElementById("name").value;
	var msg = document.getElementById('name_msg');
	msg.style.color = "red";
	msg.style.fontSize = "13px";
	msg.style.position = "relative";
	msg.style.left = "10px";
	msg.style.top = "-40px";
	if (name == "") {
		msg.innerHTML = "필수 정보입니다.";
		return;
	}

	var nonchar = /[^가-힣a-zA-Z0-9]/gi;
	if (nonchar.test(name)) {
		msg.innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
		return;
	}
	msg.innerHTML = "";
}
function nicknameCheck() {
	var name = document.getElementById("nickname").value;
	var msg = document.getElementById('nickname_msg');
	msg.style.color = "red";
	msg.style.fontSize = "13px";
	msg.style.position = "relative";
	msg.style.left = "10px";
	msg.style.top = "-40px";
	if (name == "") {
		msg.innerHTML = "필수 정보입니다.";
		return;
	}

	var nonchar = /[^가-힣a-zA-Z0-9]/gi;
	if (nonchar.test(name)) {
		msg.innerHTML = "";
		return;
	}
	msg.innerHTML = "";
}
function mobileCheck() {
	var name = document.getElementById("mobile").value;
	var msg = document.getElementById('mobile_msg');
	msg.style.color = "red";
	msg.style.fontSize = "13px";
	msg.style.position = "relative";
	msg.style.left = "10px";
	msg.style.top = "-40px";
	if (name == "") {
		msg.innerHTML = "필수 정보입니다.";
		return;
	}

	var nonchar = /[^0-9]/gi;
	if (nonchar.test(name)) {
		msg.innerHTML = "숫자만 입력해주세요.";
		return;
	}
	msg.innerHTML = "";
}




