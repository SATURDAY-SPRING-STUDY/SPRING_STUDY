<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js">
	
</script>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.8/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link rel="stylesheet" href="/resources/css/login_style.css">
<link rel="javascript" href="/resources/css/login_style.css">
<script src="/resources/js/login.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ÿ��Programming���͵�</title>
</head>
<body>
	<div class="form_container">
		<form action="post">
			<div class="login_container">
				<div class="row">
					<div class="input-field col s4 offset-s4">
						<input value="������" id="account" type="text" class="validate">
						<label class="active" for="account">������</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s4 offset-s4">
						<input value="��й�ȣ" id="passwd" type="text" class="validate">
						<label class="active" for="passwd">��ȣ </label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s4 offset-s4">
						<button class="btn waves-effect waves-light" type="submit"
							name="action">
							<i class="material-icons right">done</i>�α���
						</button>
						<a class="waves-effect waves-light btn" onClick="goJoin()">
							<i class="material-icons right">grade</i>ȸ������
						</a>
					</div>
				</div>
				</button>
			</div>
		</form>
	</div>
</body>
</html>