<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="changepwd.js"></script>
</head>
<body>
<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">change password</button>
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel">Change Password</h4>
        </div>
        <div class="modal-body">
          <form>
            <div class="form-group">
              <label for="old-pwd" class="form-control-label ">Old Password:</label>
              <input type="password" class="form-control" id="old-pwd" required >
            </div>

            <div class="form-group">
              <label for="password1" class="form-control-label">New Password:</label>
              <input type="password" class="form-control check" id="password1" required>
            </div>
            <div class="row">
				<div class="col-sm-6">
				<span id="c8char" style="display:none" ><span id="8char" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span>8 Characters Long</span><br>
				<span id="cucase" style="display:none" ><span id="ucase" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> One Uppercase Letter</span>
				<span id="cnum" style="display:none" ><span id="num"  class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> One Number</span>
			</div></div>
            <div class="form-group">
              <label for="password2" class="form-control-label">Confirm Password:</label>
              <input type="password" class="form-control check" id="password2" required>
            </div>
            <div class="row">
				<div class="col-sm-12">
				<span id="cpwmatch" style="display:none" ><span id="pwmatch" class="glyphicon glyphicon-remove" style="color:#FF0004;"></span> Passwords Match</span>
				</div>
			</div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Change Password</button>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>