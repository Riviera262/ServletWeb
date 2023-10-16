<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="All_Component/All_Css.jsp"%>
</head>
<body>
	<!-- Header -->
	<%@ include file="All_Component/Header.jsp" %>
	<!-- Menu -->
	<%@ include file="All_Component/Menu.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Đăng ký</h4>
						
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>

						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Tên đăng nhập*</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Email*</label> <input
									type="email" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" required="required" name="email">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Số điện thoại*</label> <input
									type="number" class="form-control" id="exampleInputPassword1"
									aria-describedby="emailHelp" required="required"
									name="phoneNumber">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Mật khẩu*</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">

							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Đồng ý các điều khoản và thoả thuận</label>
							</div>
							<hr>
							<div class="text-center">
								<button type="submit" class="btn btn-primary mt-2">Đăng
									ký</button>
								<br> <a href="login.jsp">Đăng nhập</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	
	</div>
</body>

<footer>
	<%@ include file="All_Component/Footer.jsp" %>
</footer>
</html>