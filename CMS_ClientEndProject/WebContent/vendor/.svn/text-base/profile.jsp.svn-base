<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" href="profilepgcss.css" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="changepwd.js"></script>
<!-- Latest compiled JavaScript -->

</head>
<body>
<%@ include file="header.jsp" %>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Profile</h1>
      
    </section>

    <!-- Main content -->
   
 <section class="content">
        <div class="modal-body">
                    <center>
                    <img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRbezqZpEuwGSvitKy3wrwnth5kysKdRqBW54cAszm_wiutku3R" name="aboutme" width="140" height="140" border="0" class="img-circle">
                   	</center>
         <div class="container" style="margin-left:250px;margin-top:20px">
               <p><strong>Id:</strong> </p>
               <p><strong>Name:</strong> </p>
                <p><strong>Type:</strong> </p>
                <p><strong>Email:</strong> </p>
                <p><strong>Phone:</strong> </p>     
        </div>
                <div class="modal-footer">
                    <div class="row">
    <div class="col-sm-4">
    
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Edit Profile</button>
  
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <div class="text-left">
          <h3 class="modal-title" id="exampleModalLabel"><strong>Edit Profile</strong></h3>
          </div>
        </div>
        <div class="modal-body">
          <form>
            <div class="col-lg-3">
        <div class="text-center">
          <img src="//placehold.it/100" class="avatar img-circle" alt="avatar" required>
          <h6>Upload a different photo...</h6>
          
          <input type="file" class="form-control">
        </div>
      </div>
      <div class="text-left">
            <h4>Personal info</h4>
        <div class="row">
    <div class="col-sm-6">
    	<div class="form-group">
            <label class="col-lg-3 control-label">Name:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="" required pattern="[a-zA-Z ]+">
            </div>
          </div>
    
    </div>
    <div class="col-sm-6" >
      
    </div>
  </div>
   <div class="row">
    <div class="col-sm-6">
    	
      <div class="form-group">
            <label class="col-lg-3 control-label">Type:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="" required pattern="[a-zA-Z ]+">
            </div>
          </div>
    </div>
    <div class="col-sm-6" >
      
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6">
    	 <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input class="form-control" type="email" value="" required>
            </div>
          </div>
          </div>
    
    <div class="col-sm-6" >
      
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6">
    	    <div class="form-group">
            <label class="col-lg-3 control-label">Phone:</label>
            <div class="col-lg-8">
              <input class="form-control" type="tel" value="" required pattern='[789]\d{9}'>
            </div>
          </div>
    
    <div class="col-sm-6" >
      
    </div>
  </div>
  
       
          
        
          
         
        
       
          
          <div class="form-group">
            <label class="col-lg-3 control-label"></label>
            <div class="col-lg-8">
              <input type="submit" class="btn btn-primary" value="Save Changes">
              <span></span>
              <input type="reset" class="btn btn-default" value="Reset">
            </div>
          </div>
        </form>
       </div>
        </div>
    </div>
  </div>
  </div>
    </div>
    <div class="col-sm-4" >
    <div class="text-left">
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1" data-whatever="@mdo">Change Password</button>
  <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModal1Label" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModal1Label">Change Password</h4>
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
			<div class="form-group">
          <input type="reset" class="btn btn-default" value="Reset">
          <button type="submit" class="btn btn-primary">Change Password</button>
        </div>
           </form>
        </div>
        
       
      </div>
    </div>
  </div>
    </div>
  </div>
    <div class="col-sm-4" >
     <button type="button" class="btn btn-default">Security Questions</button>
    </div>
  </div>
                    
                    
                </div>
            </div>
        
    
   </section>

<%@ include file="footer.jsp" %>
</body>
</html>