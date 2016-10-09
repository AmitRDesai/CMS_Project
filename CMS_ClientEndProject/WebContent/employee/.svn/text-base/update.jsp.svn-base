<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%@ include file="/employee/header_temp.jsp"%>
	<div class="container">
		<div>
			<h3>Employee Data</h3>
		</div>
		
		
		
		<form class="form-horizontal" name="update form" method="post" action="http://localhost:8080/CMS_ClientEndProject/EmployeeController">
			
			<input type="hidden" name="e_id" value="${employee.e_id}">
			<input type="hidden" name="operation" value="update">
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="login_username">Employee
					ID:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="id"
						id="login_username" value="${employee.e_id}" readonly="readonly">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Employee Name:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name"
						id="name" value="${employee.e_name}">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Employee Email:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="email"
						id="email" value="${employee.e_email}">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Employee Phone No.:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="phone"
						id="phone" value="${employee.e_phone}">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Confirm Password:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password"
						id="password" placeholder="Enter password">
				</div>
			</div>
			
			
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Update</button>
				</div>
			</div>


		</form>
		</div>
</body>
</html>