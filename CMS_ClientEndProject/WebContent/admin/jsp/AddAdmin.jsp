 <%@include file="template.jsp"%>
 	<div class="content-wrapper">
   		<section class="content-header">
      		<h1>Add Admin</h1>
			<ol class="breadcrumb">
        		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        		<li class="active">Add admin</li>
      		</ol>
    	</section>
    	<section class="content">
  			<form class="form-horizontal" action="http://localhost:8080/CMS_ClientEndProject/AdminController" method="post">
              	<div class="box-body">
              		<div class="form-group">
                  		<label for="a_name" class="col-sm-2 control-label">Employee Id:</label>
                  		<div class="col-sm-6">
                  			<input type="text" pattern="[0-9]+" class="form-control" id="a_Id" name="a_Id" placeholder="Enter Employee Id" oninvalid="setCustomValidity('Please enter valid Id')" onchange="try{setCustomValidity('')}catch(e){}" required>
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="a_name" class="col-sm-2 control-label">Admin Name:</label>
                  		<div class="col-sm-6">
                  			<input type="hidden" class="form-control" id="action" name="action" value="addAdmin">
                    		<input type="text" pattern="[A-Za-z]+" class="form-control" id="a_name" name="a_name" placeholder="Name" oninvalid="setCustomValidity('Please enter valid name')" onchange="try{setCustomValidity('')}catch(e){}" required>
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="a_email" class="col-sm-2 control-label">Email:</label>

                  		<div class="col-sm-6">
                    		<input type="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" id="a_email" name="a_email" placeholder="Email" oninvalid="setCustomValidity('Please enter valid email')" onchange="try{setCustomValidity('')}catch(e){}" required/>
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="a_phone" class="col-sm-2 control-label">Phone Number:</label>
                  		<div class="col-sm-6">
                    		<input type="tel" pattern ="^[789]\d{9}$" class="form-control" id="a_phone" name="a_phone" placeholder="Phone" oninvalid="setCustomValidity('Please enter valid phone number')" onchange="try{setCustomValidity('')}catch(e){}" required>
                  		</div>
                	</div>
                	<div class="form-group">
                		<div class="col-sm-2"></div>
                		<div class="col-sm-4">
                			<button type="submit" class="btn btn-info pull">Add</button>
                		</div>
          			</div>
          		</div>
    		</form>
  		</section>	
  	</div>
 <%@include file="content.jsp"%>