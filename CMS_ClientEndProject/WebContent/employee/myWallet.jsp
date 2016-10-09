<%@page import="com.tcs.vendor.bean.Vendor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.tcs.employee.controller.EmployeeUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:set var="Wallets" scope="page" value="<%=EmployeeUtil.retriveWallet()%>" />
	<%@ include file="header_temp.jsp"%>
	<div class="container">


		<table class="table table-hover">

			<c:choose>
				<c:when test="${Wallets eq '[]'}">
					<tr>
						<td colspan=5 style="text-align: center;">No data available</td>
					</tr>

				</c:when>
				<c:otherwise>
					<thead>
						<tr>
							<th align="center">Vendor Id</th>
							<th align="center">Debit Balance</th>
					</thead>
					<tbody>
						<c:forEach var="Wallet" items="${Wallets}">
							<tr>
								<td><a
									href="${pageContext.request.contextPath}/ProcessServlet?pageType=up&cid=${Wallet.vendorId}">${Wallet.vendorId}</a>
								<td>${Wallet.money}</td>
							</tr>

						</c:forEach>
				</c:otherwise>
			</c:choose>

			</tbody>
		</table>



	</div>

</body>
</html>