<%@ page contentType="text/html; charset=UTF-8"%>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var clientId = "KmwKqMBFgMMFiMkfyFGj";
  var callbackUrl = "http://localhost/naverCallback";
  var naver_id_login = new naver_id_login(clientId, callbackUrl);
  // 접근 토큰 값 출력
//   alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
   const email = naver_id_login.getProfileData('email');
   const name = naver_id_login.getProfileData('name');
   const mobile = naver_id_login.getProfileData('mobile');
   const nickname = naver_id_login.getProfileData('nickname');
    
    window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) 
  		  + "/naverLogin?email="+email+"&name="+name+"&mobile="+mobile
  				  +"&nickname="+nickname);
    
  }
</script>