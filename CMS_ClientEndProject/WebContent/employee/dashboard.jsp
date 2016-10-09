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

<%-- 
	ArrayList<Vendor> al=MainClass.getAllList();

--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="vendors" scope="page" value="<%=EmployeeUtil.retriveVendor()%>" />

<%@ include file="header_temp.jsp" %>
<div class="container">

    <table class="table table-hover">
			<thead>
				<tr>
					<th align="center">Vendor Id</th>
					<th align="center">Vendor Name</th>
					<th align="center">Vendor Type</th>
			</thead>
			<tbody>
     	<c:forEach var="vendor" items="${vendors}">
							<tr>
								<td><a	href="${pageContext.request.contextPath}/employee/items.jsp?vid=${vendor.v_id}">${vendor.v_id}</a>
								<td>${vendor.v_name}</td>
								<td>${vendor.v_type}</td>	
							</tr>

						</c:forEach>

			</tbody>
		</table>



</div>


</body>
</html>