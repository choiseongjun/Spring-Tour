<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../Header.jsp"%>
<script>
	function findid() {
		location.href = "${path}/user/findid.do";
	}
	function go() {
		location.href = "${path}/user/joinpage.do";
	}
	$(function() {
		$("#btnLogin").click(function() {
			var userid = $("#u_id").val();
			var passwd = $("#u_password").val();
			if (userid == "") {
				alert("아이디를 입력하세요");
				$("#u_id").focus();//입력 포커스 이동
				return;//함수 종료
			}
			if (passwd = "") {
				alert("비밀번호를 입력하세요");
				$("#u_password").focus();
				return;
			}
			//폼 데이터를 서버로 제출

			document.form1.action = "${path }/user/login_check.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<div id="content">
		<center>

			<div class="container">
				<div id="loginbox" style="margin-top: 50px;"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">Sign In</div>
							
						</div>

						<div style="padding-top: 30px" class="panel-body">

							<div style="display: none" id="login-alert"
								class="alert alert-danger col-sm-12"></div>

					<form name="form1" method="post">

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input
										id="u_id" type="text" class="form-control"
										name="u_id" value="" placeholder="아이디를 입력하시오">
								</div>

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input
										id="u_password" type="password" class="form-control"
										name="u_password" placeholder="비밀번호를 입력하시오">
								</div>



								


								<div style="margin-top: 10px" class="form-group">
									<!-- Button -->

									<div class="col-sm-12 controls">
										<input type="button" id="btnLogin"  class="btn btn-success" value="로그인">
										<input type="button" href="#" class="btn btn-primary" onclick="go()" value="회원가입">
											<input type="button" onclick="findid()" class="btn btn-primary"  value="id찾기">
											</a>

									</div>
								</div>

<c:if test="${message=='error' }">
				<div style="color:red;">
				아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
								<div class="form-group">
									<div class="col-md-12 control">
										<div
											style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
											Don't have an account! <a href="#"
												onClick="$('#loginbox').hide(); $('#signupbox').show()">
												Sign Up Here </a>
										</div>
									</div>
								</div>
							</form>



						</div>
					</div>
				</div>
				<div id="signupbox" style="display: none; margin-top: 50px"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">Sign Up</div>
							<div
								style="float: right; font-size: 85%; position: relative; top: -10px">
								<a id="signinlink" href="#"
									onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
									In</a>
							</div>
						</div>
						<div class="panel-body">
							<form id="signupform" class="form-horizontal" role="form">

								<div id="signupalert" style="display: none"
									class="alert alert-danger">
									<p>Error:</p>
									<span></span>
								</div>



								<div class="form-group">
									<label for="email" class="col-md-3 control-label">Email</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="email"
											placeholder="Email Address">
									</div>
								</div>

								<div class="form-group">
									<label for="firstname" class="col-md-3 control-label">First
										Name</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="firstname"
											placeholder="First Name">
									</div>
								</div>
								<div class="form-group">
									<label for="lastname" class="col-md-3 control-label">Last
										Name</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="lastname"
											placeholder="Last Name">
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-md-3 control-label">Password</label>
									<div class="col-md-9">
										<input type="password" class="form-control" name="passwd"
											placeholder="Password">
									</div>
								</div>

								<div class="form-group">
									<label for="icode" class="col-md-3 control-label">Invitation
										Code</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="icode"
											placeholder="">
									</div>
								</div>

								<div class="form-group">
									<!-- Button -->
									<div class="col-md-offset-3 col-md-9">
										<button id="btn-signup" type="button" class="btn btn-info">
											<i class="icon-hand-right"></i> &nbsp Sign Up
										</button>
										<span style="margin-left: 8px;">or</span>
									</div>
								</div>

								<div style="border-top: 1px solid #999; padding-top: 20px"
									class="form-group">

									<div class="col-md-offset-3 col-md-9">
										<button id="btn-fbsignup" type="button"
											class="btn btn-primary">
											<i class="icon-facebook"></i>   Sign Up with Facebook
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</center>
	</div>
</body>
</html>