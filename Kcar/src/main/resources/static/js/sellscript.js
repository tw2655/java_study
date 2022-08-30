function modalopen1(){
	document.getElementById('modal_1').style.display='block';
	document.getElementById('modalbox').className = 'modalopen';
	
}
function modalopen2(){
	document.getElementById('modal_2').style.display='block';
	document.getElementById('modalbox').className = 'modalopen';
	
}

function modalclose1(){
	document.getElementById('modal_1').style.display='none';
		document.getElementById('modal_2').style.display='none';
	document.getElementById('modalbox').className = 'normal';
}

function nullcheck(){
	num=document.getElementById('s_r_num');
	model=document.getElementById('s_r_model');
	distance=document.getElementById('s_r_distance');

	const check=document.getElementById('check1');
	  const is_checked = check.checked;
	
	if(num.value == ""){
		document.getElementById('error1').innerHTML="차량번호를 입력해주세요";
		num.style.backgroundColor = '#F8E0E6';
	}else{
		document.getElementById('error1').innerHTML="";
		num.style.backgroundColor = '#FFFFFF';
	}
	if(model.value == ""){
		document.getElementById('error2').innerHTML="차량모델을 입력해주세요";
		model.style.backgroundColor = '#F8E0E6';
	}else{
		document.getElementById('error2').innerHTML="";
		model.style.backgroundColor = '#FFFFFF';
	}
	if(distance.value == ""){
		document.getElementById('error3').innerHTML="주행거리를 입력해주세요";
		distance.style.backgroundColor = '#F8E0E6';
	}else{
		document.getElementById('error3').innerHTML="";
		distance.style.backgroundColor = '#FFFFFF';
	}
	if(is_checked == false){
		alert("필수항목에 동의하지 않으셨습니다");
	}
	
	if(num.value != "" && model.value != "" && distance.value != "" && is_checked){
		document.getElementById('form').action = 'carSell'
		document.getElementById('form').method = 'post';
		document.getElementById('form').submit();
	}
	
	
}