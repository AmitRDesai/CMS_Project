<%@page import="java.util.*"%>
<%@page import="java.sql.Date"%>
<%@page import="com.tcs.vendor.bean.Item"%>
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
	<%
		ArrayList<Item> al = EmployeeUtil.retriveItems(request
				.getParameter("vid"));
	
	Calendar calendar = Calendar.getInstance();
	calendar.setTime(new java.util.Date());
	String day1= calendar.DAY_OF_MONTH+"";
	String day2=(calendar.DAY_OF_MONTH+1)+"";
	if(day2.equals("7"))
		day2="0";
	System.out.println(new java.util.Date());
	
	%>
	<c:set var="items" scope="page" value="<%=al%>" />
	<%@ include file="header_temp.jsp"%>

	<div class="container">
		<%
			//System.out.println(new Date(System.currentTimeMillis()).getDay()() +" _ "+ new Date(System.currentTimeMillis()+86400000).getDate());
		%>
		<c:set var="day1" scope="page" value="<%=day1%>" />
		<c:set var="day2" scope="page" value="<%=day2%>" />
		<c:choose>
			<c:when test="${items eq '[]'}">
				<tr>
					<td colspan=5 style="text-align: center;">No data available</td>
				</tr>

			</c:when>
			<c:otherwise>

	<form action="${pageContext.request.contextPath}/ControllerServlet?vid=<%=request.getParameter("vid")%>" method="post">
		<input type="hidden" name="action" value="order">
			
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Item Id</th>
							<th>Item Name</th>
							<th>Item Type</th>
							<c:if test="${day1 eq '1' or day2 eq '1'}">
								<th>Items on Monday</th>
							</c:if>
							<c:if test="${day1 eq '2' or day2 eq '2'}">
								<th>Items on Tuesday</th>
							</c:if>
							<c:if test="${day1 eq '3' or day2 eq '3'}">
								<th>Items on Wednesday</th>
							</c:if>
							<c:if test="${day1 eq '4' or day2 eq '4'}">
								<th>Items on Thursday</th>
							</c:if>
							<c:if test="${day1 eq '5' or day2 eq '5'}">
								<th>Items on Friday</th>
							</c:if>
							<c:if test="${day1 eq '6' or day2 eq '6'}">
								<th>Items on Saturday</th>
							</c:if>
							<c:if test="${day1 eq '0' or day2 eq '0'}">
								<th>Items on Sunday</th>
							</c:if>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}">
							<tr>
								<td>${item.i_id}</td>
								<td>${item.i_name}</td>
								<td>${item.i_type}</td>
								<c:if test="${day1 eq '1' or day2 eq '1'}">
									<c:choose>
										<c:when test="${item.i_mo eq 1}">
											<td><input type="number" name="${item.i_i}${'_'}${1}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${day1 eq '2' or day2 eq '2'}">
									<c:choose>
										<c:when test="${item.i_tu eq 1}">
											<td><input type="number" name="${item.i_id}${'_'}${2}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${day1 eq '3' or day2 eq '3'}">
									<c:choose>
										<c:when test="${item.i_we eq 1}">
											<td><input type="number" name="${item.i_id}${'_'}${3}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${day1 eq '4' or day2 eq '4'}">
									<c:choose>
										<c:when test="${item.i_th eq 1}">
											<td><input type="number" name="${item.i_id}${'_'}${4}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${day1 eq '5' or day2 eq '5'}">
									<c:choose>
										<c:when test="${item.i_fr eq 1}">
											<td><input type="number" name="${item.i_id}${'_'}${5}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>

								</c:if>
								<c:if test="${day1 eq '6' or day2 eq '6'}">
									<c:choose>
										<c:when test="${item.i_sa eq 1}">
											<td><input type="number" name="${item.i_id}${'_'}${6}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>
								</c:if>
								<c:if test="${day1 eq '0' or day2 eq '0'}">
									<c:choose>
										<c:when test="${item.i_su eq 1}">
											<td><input type="number" name="${item.i_id}${'_'}${0}"
												min="0" value="0" max="25"></td>
										</c:when>
										<c:otherwise>
											<td>Not Avaliable</td>
										</c:otherwise>
									</c:choose>
								</c:if>
							</tr>

						</c:forEach>

					</tbody>
				</table>
			</c:otherwise>
		</c:choose>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>Order date</th>
					<th></th>
			</thead>
			<tbody>
				<tr>
					<td><input type="date" name="orderDate" class="form-control"
						min="<%=new Date(System.currentTimeMillis())%>"
						max="<%=new Date(System.currentTimeMillis() + 86400000)%>"
						value=""
						pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|
			2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|
			1[02])-31))"
						required></td>
					<td><input type="submit" value="Place Order now"></td>
				</tr>
			</tbody>
		</table>
		
		</form>
	</div>
</body>
</html>