<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script type="text/javascript" src="employee\js\validate.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header_temp.jsp"%>
	<div class="container">

		<form class="form-horizontal" name="login form" method="post"
			action="${pageContext.request.contextPath }/ControllerServlet">
			<!-- onSubmit="return validateForm()"> -->
			<input type="hidden" name="action" value="login"> <input
				type="hidden" name="action" value="login">
			<div class="form-group">
				<label class="control-label col-sm-2" for="login_username">Employee
					ID:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="login_username"
						id="login_username" placeholder="Enter ID">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="login_password"
						id="pwd" placeholder="Enter password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>


		</form>
	</div>
</body>
</html>