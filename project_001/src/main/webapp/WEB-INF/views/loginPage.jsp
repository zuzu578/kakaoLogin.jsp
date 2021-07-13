<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>puding Login</title>
	<!-- kakao login Oauth -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
	<!-- css Style -->
    <style>
		body,
		html {
			margin: 0;
			padding: 0;
			height: 100%;
			background: #60a3bc !important;
		}
		.user_card {
			height: 500px;
			width: 350px;
			margin-top: auto;
			margin-bottom: auto;
			background: #f39c12;
			position: relative;
			display: flex;
			justify-content: center;
			flex-direction: column;
			padding: 10px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			border-radius: 5px;
		}
		.brand_logo_container {
			position: absolute;
			height: 170px;
			width: 170px;
			top: -75px;
			border-radius: 50%;
			background: #60a3bc;
			padding: 10px;
			text-align: center;
		}
		.brand_logo {
			height: 150px;
			width: 150px;
			border-radius: 50%;
			border: 2px solid white;
		}
		.form_container {
			margin-top: 100px;
		}
		.login_btn {
			width: 100%;
			background: #c0392b !important;
			color: white !important;
		}
		.login_btn:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.login_container {
			padding: 0 2rem;
		}
		.input-group-text {
			background: #c0392b !important;
			color: white !important;
			border: 0 !important;
			border-radius: 0.25rem 0 0 0.25rem !important;
		}
		.input_user,
		.input_pass:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.custom-checkbox .custom-control-input:checked~.custom-control-label::before {
			background-color: #c0392b !important;
		}
    .kako_login{
    	text-align:center;
    	margin-top:5px;
    	
    	    	
    }
    .login_title{
    	text-align:center;
    	font-weight:bold;
    	color:white;
    	font-size:30px;
    	
    	padding-top:40px;
    	
    	
    }
    </style>

<!--Coded with love by Mutiullah Samim-->
<body>
	<p class="login_title">  로그인 페이지</p>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="https://cdn.freebiesupply.com/logos/large/2x/pinterest-circle-logo-png-transparent.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="user_id" id="user_id" name="user_id" class="form-control input_user" value="" placeholder="username">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="user_pw" id="user_pw" class="form-control input_pass" value="" placeholder="password">
						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="customControlInline">
								<label class="custom-control-label" for="customControlInline">Remember me</label>
							</div>
						</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="button" name="button" id="login_button"   class="btn login_btn">Login</button>
				   </div>
				   			<div class="kako_login" onclick="kakaoLogin()">
				   				<img src="https://developers.kakao.com/tool/resource/static/img/button/login/full/ko/kakao_login_medium_narrow.png">
				   			
				   			</div>
					</form>
				</div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						don't you have an account? <a href="#" class="ml-2">sign up</a>
					</div>
					<div class="d-flex justify-content-center links">
						<a href="#">Forgot your password?</a>
					</div>
				</div>
				
				<div class="logout" onclick="kakaoLogout()">
					<p> logout </p>
				
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<script  src="https://code.jquery.com/jquery-3.5.0.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('3e85a50f7736492121915fea486aa4af'); //諛�湲�諛��� �� 以� javascript�ㅻ�� �ъ�⑺�댁���.
console.log(Kakao.isInitialized()); 

var userData = '';
var jsonData = '';
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
        	  alert("kakao login success!");
        	  var userData = response;
        	  jsonData = JSON.stringify(response);
        	  //kakao 로그인 후 user Data 를 가져옵니다.
        	  jsonData:{
        		  property_keys: ["properties.nickname",
        						  "properties.profile_image",
        						  "properties.thumnail_image",
        						  "kakao_account.profile",
        						  "kakao_account.email",
        						  "kakao_account.age_range",
        						  "kakao_account.birthday",
        						  "kakao_account.gender",
        						  "REFRESH_TOKEN"
        			  ]
        	  }
        	  console.log("properties.nickname =====>"+userData.properties.nickname);
        	  console.log("properties.profile_image =====>"+userData.properties.profile_image);
        	  console.log("properties.thumnail_image =====>"+userData.properties.thumnail_image);
        	  console.log("kakao_account.profile =====>"+userData.kakao_account.profile);
        	  console.log("kakao_account.email =====>"+userData.kakao_account.email);
        	  console.log("kakao_account.birthday =====>"+userData.kakao_account.birthday);
        	  console.log("kakao_account.gender =====>"+userData.kakao_account.gender);
        	  var userNickName = userData.properties.nickname;
        	  var userProfile_image = userData.properties.profile_image;
        	  var userProfile_thumnail_image = userData.properties.thumnail_image;
        	  var useraccount_profile = userData.kakao_account.profile;
        	  var userEmail = userData.kakao_account.email;
        	  var user_birthday = userData.kakao_account.birthday;
        	  var user_gender = userData.kakao_account.gender;
        	  const formData = new FormData();
        	  formData.append('userNickName',userNickName)
        	  axios.get("http://localhost:8098/getUserData",{
        		  	params:{
        		  		userNickName : userNickName,
        		  		userEmail: userEmail,
        		  		userProfile_image: userProfile_image,
        		  		user_birthday: user_birthday,
        		  		user_gender : user_gender, 
        		  	}
        	  })
        	//  window.location.href = '/';
        	  
   
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }

//kakao logout!
function kakaoLogout() {
	var logout = confirm("로그아웃 하시겠습니까?");
	if(logout == true){
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	alert("logout!");
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
      
    }
	}else{
		return false;
	}
  }  
</script>