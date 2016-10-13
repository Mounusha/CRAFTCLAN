<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<!-- Navigation bar Common to all pages -->
	<nav class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand " href="Home" style="color:white;font-family:wide Latin">CRAFTCLAN</a>
			</div>
		 	<div class="collapse navbar-collapse" id="myNavbar"> 
				<ul class="nav navbar-nav navbar-left">
					<li><a href="${pageContext.request.contextPath}/blog" style="color:white;font-family:Ravie">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum"style="color:white;font-family:Ravie">Forum</a></h2></li>
					<li><a href="${pageContext.request.contextPath}/chat" style="color:white;font-family:Ravie">Chat</a></li></ul>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAuthenticated()">
					<li><a style="color:white;font-family:Ravie">Hi  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="${pageContext.request.contextPath}/perform_logout"><span
								class="glyphicon glyphicon-log-out">LOGOUT</span></a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="#log" data-toggle="modal"
							data-target="#login"><span
								class="glyphicon glyphicon-log-in"></span>
								<input type= "submit" class ="btn btn-info"style="color:white;font-family:Ravie" value="login"/>
								</a></li>
						<li><a href="#reg" data-toggle="modal"
							data-target="#registration"> <span
								class="glyphicon glyphicon-user"></span>
								<input type= "submit" class ="btn btn-info"style="color:white;font-family:Ravie" value="signup"/>
						</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>


	<!-- ModalRegistration Form -->
	<div><%@include file="/WEB-INF/includes/ModalRegistration.jsp"%></div>
	<div><%@include file="/WEB-INF/includes/ModalLogin.jsp"%></div>
</body>
</html>

