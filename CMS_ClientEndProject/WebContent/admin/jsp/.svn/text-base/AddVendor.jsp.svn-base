 <%@page import="java.util.ArrayList,com.tcs.vendor.bean.Vendor"%>
<%@include file="template.jsp"%>

<div class="content-wrapper">
   		<section class="content-header">
      		<h1>Add Vendor</h1>
			<ol class="breadcrumb">
        		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        		<li class="active">Add Vendor Details</li>
      		</ol>
    	</section>
    	<section class="content">
  			<form class="form-horizontal" action="http://localhost:8080/CMS_ClientEndProject/AdminController" method="post">
              	<div class="box-body">
                	<div class="form-group">
                  		<label for="v_name" class="col-sm-2 control-label">Vendor Name:</label>
                  		<div class="col-sm-6">
                  			<input type="hidden" class="form-control" id="action" name="action" value="addVendor">
                    		<input type="text" pattern="[A-Za-z]+" class="form-control" id="v_name" name="v_name" placeholder="Name" oninvalid="setCustomValidity('Please enter valid name')" onchange="try{setCustomValidity('')}catch(e){}" required>
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="v_email" class="col-sm-2 control-label">Email:</label>

                  		<div class="col-sm-6">
                    		<input type="email" class="form-control" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" id="v_email" name="v_email" placeholder="Email" oninvalid="setCustomValidity('Please enter valid email')" onchange="try{setCustomValidity('')}catch(e){}" required/>
                  		</div>
                	</div>
                	<div class="form-group">
                  		<label for="v_phone" class="col-sm-2 control-label">Phone Number:</label>
                  		<div class="col-sm-6">
                    		<input type="tel" pattern ="^[789]\d{9}$" class="form-control" id="v_phone" name="v_phone" placeholder="Phone" oninvalid="setCustomValidity('Please enter valid phone number')" onchange="try{setCustomValidity('')}catch(e){}" required>
                  		</div>
                	</div>
            		<div class="form-group">
                		<label for="" class="col-sm-2 control-label">Vendor Type:</label>
                	
                		<div class="col-sm-6">
                			<select name="v_type" id="v_type" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">	
                  				<option>Veg</option>
                  				<option>Non-veg</option>
                  				<option>Drinks & Juice</option>
                  			</select>
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