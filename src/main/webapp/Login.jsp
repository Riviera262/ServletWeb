<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Camera: Login</title>
<%@ include file="All_Component/All_Css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<!-- Header -->
	<%@ include file="All_Component/Header.jsp"%>
	<!-- Menu -->
	<%@ include file="All_Component/Menu.jsp"%>
	<div class="container p-2">
		<div class="row mt-2">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Đăng nhập</h4>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						

						<form action="login" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Email đăng nhập</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Mật khẩu</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password" placeholder="">

							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary mt-2">Đăng
									Nhập</button>
								<br> <a href="register.jsp">Đăng ký</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<footer>
	<%@include file="All_Component/Footer.jsp"%>
</footer>

</html>>