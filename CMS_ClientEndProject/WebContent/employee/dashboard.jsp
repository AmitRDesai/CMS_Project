<%@page import="com.tcs.employee.controller.EmployeeUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/magnific-popup.css">

	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">

  	<link rel="stylesheet" href="css/nivo-lightbox.css">
  	<link rel="stylesheet" href="css/nivo_themes/default/default.css">

  	<link rel="stylesheet" href="css/hover-min.css">
  	<link rel="stylesheet" href="css/flexslider.css">

	<link rel="stylesheet" href="css/style.css">

  	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600' rel='stylesheet' type='text/css'>
<title>TCS ILP Canteen</title>
</head>
<body>

<%-- 
	ArrayList<Vendor> al=MainClass.getAllList();

--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="vendors" scope="page" value="<%=EmployeeUtil.retriveVendor()%>" />

<%@ include file="header_temp.jsp" %>
<div class="container">

    <table class="table table-hover">
			<thead>
				<tr>
					<th align="center">Vendor Id</th>
					<th align="center">Vendor Name</th>
					<th align="center">Vendor Type</th>
			</thead>
			<tbody>
     	<c:forEach var="vendor" items="${vendors}">
							<tr>
								<td><a	href="${pageContext.request.contextPath}/employee/items.jsp?vid=${vendor.v_id}">${vendor.v_id}</a>
								<td>${vendor.v_name}</td>
								<td>${vendor.v_type}</td>	
							</tr>

						</c:forEach>

			</tbody>
		</table>



</div>

<section id="feature" class="parallax-section">
  <div class="container">
    <div class="row">

      <div class="col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10">
          <div class="wow fadeInUp section-title" data-wow-delay="0.6s">
            <h2>Why Choose Us?</h2>
            <h4>Steak House HTML CSS Template</h4>
          </div>
      </div>

      <div class="clearfix"></div>

      <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
        <div class="feature-thumb">
          <div class="feature-icon">
             <span><i class="fa fa-cutlery"></i></span>
          </div>
          <h3>SPECIAL DISH</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elitquisque tempus ac eget diam et laoreet phasellus.</p>
        </div>
      </div>

      <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.6s">
        <div class="feature-thumb">
          <div class="feature-icon">
            <span><i class="fa fa-coffee"></i></span>
          </div>
          <h3>BLACK COFFEE</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elitquisque tempus ac eget diam et laoreet phasellus.</p>
        </div>
      </div>

      <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
        <div class="feature-thumb">
          <div class="feature-icon">
            <span><i class="fa fa-bell-o"></i></span>
          </div>
           <h3>DINNER</h3>
           <p>Lorem ipsum dolor sit amet, consectetur adipiscing elitquisque tempus ac eget diam et laoreet phasellus.</p>
        </div>
      </div>

    </div>
  </div>
</section>


</body>
</html>