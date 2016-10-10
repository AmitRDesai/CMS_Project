<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Steak House - Free HTML CSS Template</title>
<!--

Template 2083 Steak House

http://www.tooplate.com/view/2083-steak-house

-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">

<!-- stylesheets css -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<link rel="stylesheet" href="css/nivo-lightbox.css">
<link rel="stylesheet" href="css/nivo_themes/default/default.css">

<link rel="stylesheet" href="css/hover-min.css">
<link rel="stylesheet" href="css/flexslider.css">

<link rel="stylesheet" href="css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/async_ajax_loggedin.js"></script>

<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600'
	rel='stylesheet' type='text/css'>

</head>
<body>


	<%--	<%@ include file="/pages/DirectAccessRedirect.jsp"%>--%>
	<%@ include file="/employee/header_temp.jsp"%>
	<div class="container">
		<div>
			<h3>Employee Data</h3>
		</div>



		<table class="table table-hover">
			<tboady>
			<tr>
				<td>Employee ID:</td>
				<td>${employee.e_id}</td>
			</tr>
			<tr>
				<td>Employee Name:</td>
				<td>${employee.e_name}</td>
			</tr>
			<tr>
				<td>Employee email:</td>
				<td>${employee.e_email}</td>
			</tr>
			<tr>
				<td>Employee Phone:</td>
				<td>${employee.e_phone}</td>
			</tr>
			<tr>
				<td>Employee Status:</td>
				<c:choose>
					<c:when test="${employee.e_active eq '1'}">

						<td>Active</td>
					</c:when>
					<c:otherwise>
						<td>Inactive</td>
					</c:otherwise>
				</c:choose>
			</tr>



			</tbody>
		</table>
		<div>
			<a type="button" class="btn btn-primary"
				href="http://localhost:8080/CMS_ClientEndProject/employee/update.jsp">Edit
				details</a> <a type="button" class="btn btn-danger" href="#"
				id="changePwd">Change Password</a>
		</div>


		<!-- change password modal  -->

		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							</span> Change password
						</h4>
					</div>
					<div class="modal-body">
						<form role="form" method="post"
							action="http://localhost:8080/CMS_ClientEndProject/EmployeeController">
							<input type="hidden" name="e_id" value="${employee.e_id}">
							<input type="hidden" name="operation" value="change_pwd">
							<div class="form-group">
								<label for="old_pwd"> Old password</label> <input
									type="password" class="form-control" id="old_pwd"
									name="old_pwd" placeholder="Enter old password">
							</div>
							<div class="form-group">
								<label for="new_pwd">New password</label> <input type="password"
									class="form-control" id="new_pwd" name="new_pwd"
									placeholder="Enter password">
							</div>
							<div class="form-group">
								<label for="con_pwd">Confirm new password</label> <input
									type="password" class="form-control" id="con_pwd"
									placeholder="Enter password">
							</div>
							<button type="submit"
								class="btn btn-default btn-success btn-block">Change</button>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit"
							class="btn btn-default btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button>
						<p>
							Not a member? <a href="#">Sign Up</a>
						</p>
						<p>
							Forgot <a href="#">Password?</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$("#changePwd").click(function() {
				$("#myModal").modal();
			});
		});
	</script>


	<!-- javscript js -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script src="js/jquery.magnific-popup.min.js"></script>

	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.backstretch.min.js"></script>

	<script src="js/isotope.js"></script>
	<script src="js/imagesloaded.min.js"></script>
	<script src="js/nivo-lightbox.min.js"></script>

	<script src="js/jquery.flexslider-min.js"></script>

	<script src="js/jquery.parallax.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/wow.min.js"></script>

	<script src="js/custom.js"></script>
</body>
</html>



