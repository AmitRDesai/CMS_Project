<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddVendorForm</title>
<link rel="stylesheet" href="css/AddVendorForm.css">
</head>
<body>
<form action="http://localhost:8080/E1193360_Ass_Webs/mainservelet" method ="post">
      
        <h1>AddVendor</h1>
        
        <fieldset>
          <legend>Enter Vendor Details</legend>
         
         <label for="v_id">VENDOR ID:</label>
          
          <input type="text"  name="vendor_id" required>
           <label for="v_name">VENDOR NAME:</label>
          <input type="text"  name="vendor_name" required>
           <label for="">DATEOFBIRTH:</label>
          <input type="date"  name="dateofbirth" required>
           <label for="name">CUSTOMERTYPE:</label>
          	<select name="customertype">
          		<option>chooseone</option>
          		<option>minor</option>
          		<option>major</option>
          	</select>
          
           <label for="name">PANNO:</label>
          <input type="text"  name="panno" >
           <label for="name">PHONENUMBER:</label>
          <input type="tel" pattern="^[789]\d{9}$"  name="phoneno">
           <label for="name">EMAIL:</label>
          <input type="email"  name="email" >
           <label for="name">ADDRESS</label>
          <textarea  name="address" min=20></textarea>
          
          <label for="name">CITY:</label>
         <input type="text" name="city">
          
          <label for="name">STATE:</label>
          <input type="text"  name="state" >
          
          <label for="name">zip:</label>
          <input type="text"  name="zip" >
          
        </fieldset>
        
        <button type="submit">Submit</button>
      </form>
      
 
</body>
</html>