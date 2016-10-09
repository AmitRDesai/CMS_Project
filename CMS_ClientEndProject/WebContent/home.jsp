<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>Canteen Management</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/registration.js"></script>
<script src="js/async_ajax.js"></script>
<link href="css/mystyle.css" rel="stylesheet" type="text/css">


</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<%
		session.invalidate();
	%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand mainlogo" href="#myPage">Canteen
					Management System </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#myPage">HOME</a></li>
					<li><a href="#login">LOGIN</a></li>
					<li><a href="#reg">REGISTRATION</a></li>
					<li><a href="#contact">CONTACT</a></li>

					<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="images/3.jpg" alt="New York" width="1200" height="700">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>

			<div class="item">
				<img src="images/2.jpg" alt="Chicago" width="1200" height="700">
				<div class="carousel-caption">
					<h3>Chicago</h3>
					<p></p>
				</div>
			</div>

			<div class="item">
				<img src="images/1.jpg" alt="Los Angeles" width="1200" height="700">
				<div class="carousel-caption">
					<h3>LA</h3>
					<p></p>
				</div>
			</div>

			<div class="item">
				<img src="images/4.jpg" alt="Los Angeles" width="1200" height="700">
				<div class="carousel-caption">
					<h3></h3>
					<p></p>
				</div>
			</div>

			<div class="item">
				<img src="images/5.jpg" alt="Los Angeles" width="1200" height="700">
				<div class="carousel-caption">
					<h3>LA</h3>
					<p></p>
				</div>
			</div>

		</div>


		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Container (The Band Section) -->
	<div class="login-page" id="login">
		<div class="form">
			<div class="h4">USER LOGIN</div>
			<!-- <form class="login-form" action="" method="post"> -->
			<input type="text" id="login_username" placeholder="username"
				name="login_username" /> <input type="password" id="login_password"
				placeholder="password" name="login_password" /> <input type="hidden"
				name="action" value="login">
			<div id="message"></div>
			<button id="login_button">Submit</button>
			<button type="reset">Reset</button>
			<p class="message">
				Not registered? <a href="#reg">Create an account</a>
			</p>
			<!-- </form> -->
		</div>
	</div>


	<!-- Container (TOUR Section) -->
	<div id="reg" class="bg-1">

		<div class="regform">
			<div class="registration-page" id="registration">
				<div class="form">
					<div class="h4">USER REGISTRATION FORM</div>
					<%-- <form class="login-form" action="${pageContext.request.contextPath}/ControllerServlet" method="post" id="registration_form"> --%>
					<input type="text" pattern="[0-9]+" placeholder="Employee Id"
						name="e_id" id="e_id" required="required" /> <input type="text"
						pattern="[A-Za-z]+" placeholder="First name" name="e_fname"
						id="e_fname" required="required" /> <input type="text"
						pattern="[A-Za-z]+" placeholder="Last name" name="e_lname"
						id="e_lname" required="required" /> <input type="email"
						placeholder="Email" name="e_email" id="e_email"
						required="required" /> <input type="tel" pattern="^[789]\d{9}$"
						placeholder="Phone number" name="e_phoneno" id="e_phoneno"
						required="required" />
					<!--       <input type="text" placeholder="First name" name="registration_firstname"/> -->
					<input type="password"
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						placeholder="Strong password" name="password" id="password"
						required="required" /> <input type="password"
						pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
						placeholder="Confirm Password" name="cpassword" id="cpassword"
						oninput="check(this)" required="required" />
					<script language='javascript' type='text/javascript'>
						function check(input) {
							if (input.value != document
									.getElementById('password').value) {
								input
										.setCustomValidity('Password Must be Matching.');
							} else {
								// input is valid -- reset the error message
								input.setCustomValidity('');
							}
						}
					</script>
					<input type="hidden" name="action" value="register">
					<div id="message_reg"></div>
					<button id="registration_button" type="submit">Register</button>
					<button type="reset">Reset</button>
					<p class="message">
						Already registered? <a href="#login">login here</a>
					</p>
					<!-- </form> -->
				</div>
			</div>
		</div>


	</div>

	<!-- Modal -->


	<!-- Container (Contact Section) -->

	<div id="contact" class="container">contacts</div>



	<div id="googleMap"></div>

	<!-- Add Google Maps -->

	<!-- Footer -->





</body>
</html>

