<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="/RegistrationForm/js/validation.js">
	
</script>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#submit").click(function () {
            var password = $("#password").val();
            var confirmPassword = $("#cpassword").val();
            var empid = $("#e_id").val();
			var ephoneno = $("#e_phoneno").val();
            
            if(!$.isNumeric(empid)){
            	alert("Enter Valid Employee ID.");
                return false;
            }
            if(!$.isNumeric(ephoneno)){
            	alert("Enter Valid Phone no.");
                return false;
            }
            
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        });
    });
</script>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="header_temp.jsp"%>
	<div class="container">
		<div class="well well-sm">
			<h3>Employee Registration form</h3>
		</div>
		<form class="form-horizontal" name="myForm"
			action="${pageContext.request.contextPath}/ControllerServlet" method="post"
			>
			<!-- onSubmit="return validateForm()">-->
			
			<div class="form-group">
					<input type="hidden"  name="action" value="register" class="form-control">
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="e_fname">
					First Name :</label>
				<div class="col-sm-4">
					<input type="text" name="e_fname" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="e_lname">
					Last Name :</label>
				<div class="col-sm-4">
					<input type="text" name="e_lname" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="e_id"> Employee id :</label>
				<div class="col-sm-4">
					<input type="text" name="e_id" id="e_id" class="form-control">
				</div>
			</div>
			
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="e_email"> Email :</label>
				<div class="col-sm-4">
					<input type="text" name="e_email" id="e_email" class="form-control">
				</div>
			</div>
			
		 	<div class="form-group">
				<label class="control-label col-sm-2" for="e_phoneno"> Phone No :</label>
				<div class="col-sm-4">
					<input type="text" name="e_phoneno" id="e_phoneno" class="form-control">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="password">Password :</label>
				<div class="col-sm-4">
					<input type="password" name="password" id="password" class="form-control">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="cpassword">Confirm Password:</label>
				<div class="col-sm-4">
					<input type="password" name="cpassword" id="cpassword" class="form-control">
				</div>
			</div>
			
			
			
			

			
			

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button id="submit" type="submit" class="btn btn-default">Submit</button>
					<button id="reset" type="reset" class="btn btn-default">Reset</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>