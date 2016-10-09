<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Adding Of Items</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>ADD ITEM</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Item</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Adding Items</h4>
        </div>
        <div class="modal-body">
          <form action="${pageContext.request.contextPath}/Controller" id="addItem" method="post">
  <center><input type="hidden" name="action" value="addItems">
   <label>VendorId:</label><br><input type="text" name="v_id"required><br>
    <label>ItemName:</label><br><input type="text" name="i_name" required><br>
     <label>ItemPrice:</label><br><input type="text" name="i_price" required><br>
       <label>ItemType:</label><br><input type="text" name="i_type" required><br>
       <label>Serve Count:</label><br><input type="text" name="serve_count" required><br>
           <label>Daily Availablity</label><br>
          <table><tr><th>Monday</th><th><input type="radio" name="i_mo" value="1" checked> Available<input type="radio" name="i_mo" value="0"> Not Available<br></th></tr>
        <tr><th>Tuesday</th><th><input type="radio" name="i_tu" value="1" checked> Available<input type="radio" name="i_tu" value="0"> Not Available<br></th></tr>
       <tr><th>Wednesday</th><th><input type="radio" name="i_we" value="1" checked> Available<input type="radio" name="i_we" value="0"> Not Available<br></th></tr>
      <tr><th>Thursday</th><th><input type="radio" name="i_th" value="1" checked> Available<input type="radio" name="i_th" value="0"> Not Available<br></th></tr>
     <tr><th>Friday</th><th><input type="radio" name="i_fr" value="1" checked> Available<input type="radio" name="i_fr" value="0"> Not Available<br></th></tr>
    <tr><th>Saturday</th><th><input type="radio" name="i_sa" value="1" checked> Available<input type="radio" name="i_sa" value="0"> Not Available<br></th></tr>
   <tr><th>Sunday</th><th><input type="radio" name="i_su" value="1" checked> Available<input type="radio" name="i_su" value="0"> Not Available<br></th></tr></table>
  <button type="submit" class="btn btn-success">Submit</button></form></center>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> 
</div>
</body>
</html>


    