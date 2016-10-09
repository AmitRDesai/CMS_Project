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
</head>
<body>
<div class="bd-example">
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Add</button>
  
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="exampleModalLabel">Add Items</h4>
        </div>
        <div class="modal-body">
          <form>
            <h3>Add Items</h3>
        
       
          <div class="form-group">
            <label class="col-lg-3 control-label">Vendor Id:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" required pattern='[0-9]+' read-only>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Item Name:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="" required pattern="[a-zA-Z]{1,}">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Item Price:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="" required pattern='[0-9]+'>
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Item Type:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" value="" required pattern="[a-zA-Z]{1,}">
            </div>
          </div>
       <h3>Daily Availablity</h3>
          <div class="form-group">
            <label class="col-lg-3 control-label"></label>
            <div class="col-lg-8">
            <table><tr><th>Monday&nbsp&nbsp</th><th><input type="radio" name="i_mo" value="1" checked> Available&nbsp&nbsp</pre><input type="radio" name="i_mo" value="0"> Not Available<br></th></tr>
        <tr><th>Tuesday&nbsp&nbsp</th><th><input type="radio" name="i_tu" value="1" checked> Available&nbsp&nbsp<input type="radio" name="i_tu" value="0"> Not Available<br></th></tr>
       <tr><th>Wednesday&nbsp&nbsp</th><th><input type="radio" name="i_we" value="1" checked> Available&nbsp&nbsp<input type="radio" name="i_we" value="0"> Not Available<br></th></tr>
      <tr><th>Thursday&nbsp&nbsp</th><th><input type="radio" name="i_th" value="1" checked> Available&nbsp&nbsp<input type="radio" name="i_th" value="0"> Not Available<br></th></tr>
     <tr><th>Friday&nbsp&nbsp</th><th><input type="radio" name="i_fr" value="1" checked> Available&nbsp&nbsp<input type="radio" name="i_fr" value="0"> Not Available<br></th></tr>
    <tr><th>Saturday&nbsp&nbsp</th><th><input type="radio" name="i_sa" value="1" checked> Available&nbsp&nbsp<input type="radio" name="i_sa" value="0"> Not Available<br></th></tr>
   <tr><th>Sunday&nbsp&nbsp</th><th><input type="radio" name="i_su" value="1" checked> Available&nbsp&nbsp<input type="radio" name="i_su" value="0"> Not Available<br></th></tr></table>
             
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label"></label>
            <div class="col-lg-8">
              <input type="submit" class="btn btn-primary" value="Submit">
              <span></span>
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>
        </form>
          
        </div>
        
        
      </div>
    </div>
  </div>
</div>
</body>
</html>
</body>
</html>