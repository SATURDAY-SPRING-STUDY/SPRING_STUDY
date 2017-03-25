<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js">
</script>
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">     
	
<link rel="stylesheet" href="/resources/css/login_style.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<body>

	<div class="join_container">
			<form class="join_form">
				<div class="row">
					<div class="input-field col s4 offset-s4">
						<input id="account" type="email" class="validate"> 
						<label for="account" data-error="올바른 형식이 아닙니다." data-success="올바른 형식입니다.">계정</label>
					</div>
				</div>	
				<div class="row">
					<div class="input-field col s4 offset-s4">
						<input id="password" type="password" class="validate"> <label
							for="password">비밀번호</label>
					</div>
				</div>
				<div class="row">
				    <div class="input-field col s4 offset-s4">
						<input id="confpassword" type="password" class="validate">
						<label for="confpassword">비밀번호 확인</label>
					</div>
				</div>
				<div class="row">
				    <div class="input-field col s4 offset-s4">
						<input id="name" type="text" class="validate">
						<label for="name">이름</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s4 offset-s4">
						<button class="btn waves-effect waves-light" type="submit"name="action">
							<i class="material-icons right">done</i>회원가입
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    <button class="btn waves-effect waves-light">
							<i class="material-icons right">grade</i>취소
						</button>
					</div>
				</div>
		</form>
	</div>

</body>
</html>