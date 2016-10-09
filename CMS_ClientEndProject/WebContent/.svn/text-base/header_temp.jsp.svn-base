<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<!--<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</head> -->

</head>
<body>

	
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}">CMS</a>
		</div>
		<ul class="nav navbar-nav">
							<li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
			<c:if test="${sessionScope.employee eq ''}">
			
			<li><a
				href="${pageContext.request.contextPath}/ProcessServlet?pageType=allCustomers">Active Customers</a></li>
			<li><a
				href="${pageContext.request.contextPath}/ProcessServlet?pageType=allinActiveCustomers">InActive Customers</a></li>
			<li><a
				href="${pageContext.request.contextPath}/ProcessServlet?pageType=addCustomers">Add Customers</a></li>
			 <li><a 
				href="${pageContext.request.contextPath}/ProcessServlet?pageType=searchCustomers">Search Customers</a></li> 
			
			</c:if>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<c:choose>
		<c:when test="${sessionScope.employee eq ''}">
			
			<li><a href="${pageContext.request.contextPath}"><span class="glyphicon glyphicon-user"></span>
					${sessionScope.employee}</a>
			<li><a href="${pageContext.request.contextPath}/ControllerServlet?action=logout"><span
					class="glyphicon glyphicon-log-in"></span> Log out </a></li>
			</c:when>
			<c:otherwise>
			
			<li><a
				href="${pageContext.request.contextPath}/pages/register.jsp"><span
					class="glyphicon glyphicon-user"></span> Sign up</a>
			<li><a href="${pageContext.request.contextPath}/pages/login.jsp"><span
					class="glyphicon glyphicon-log-in"></span> Log in </a></li>
			</c:otherwise>
			</c:choose>
		</ul>
	</div>
	</nav>
</body>
</html>