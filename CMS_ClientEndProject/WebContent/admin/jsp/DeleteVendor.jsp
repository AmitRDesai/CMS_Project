<%@page import="java.util.ArrayList,com.tcs.vendor.bean.Vendor"%>
<%@include file="template.jsp"%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Delete Vendor
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Delete Vendor Details</li>
      </ol>
    

	<%
			ArrayList<Vendor> vendor=new ArrayList<Vendor>();
			
			Vendor v=null;
			
			v=new Vendor("12","raj","raj@df","tcs@123",Long.parseLong("7234567890"),1,"veg");
			vendor.add(new Vendor("12","raj","raj@df","tcs@123",Long.parseLong("7234567890"),1,"veg"));
			vendor.add(new Vendor("12","raj","raj@df","tcs@123",Long.parseLong("7234567890"),1,"veg"));
			vendor.add(new Vendor("12","raj","raj@df","tcs@123",Long.parseLong("7234567890"),1,"veg"));
			vendor.add(new Vendor("12","raj","raj@df","tcs@123",Long.parseLong("7234567890"),1,"veg"));
			vendor.add(v);
	%>
    <!-- Main content -->
    
    <section class="content">

	
	
  	<div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="example1_length"><label>Show <select name="example1_length" aria-controls="example1" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="example1_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="example1"></label></div></div></div><div class="row"><div class="col-sm-12">
  	<table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                <thead>
                <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 50px;">Vendor ID</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 75px;">Vendor Name</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 121px;">Vendor Email</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 92px;">Vendor Phone</th><th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 100px;">Vendor Type</th>
                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 64px;">Edit</th>
                <th tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 64px;">Delete</th>
                </tr>
                </thead>
                <% 
				for(Vendor vendors:vendor)
					{
				%>
                <tbody>
                <tr role="row" class="odd">
                  <td class="sorting_1"><%=vendors.getV_id()%></td>
                  <td><%=vendors.getV_name()%></td>
                  <td><%=vendors.getV_email()%></td>
                  <td><%=vendors.getV_phone()%></td>
                  <td><%=vendors.getV_type()%></td>
                  <td><a href="#"><i class="fa fa-edit"></i> Edit</a></td>
                  <td><a href=""><i class="fa fa-trash"></i> Delete</a></td>
                </tr></tbody>
                <% } %>
                
              </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li></ul></div></div></div></div>
  
    </section>
    
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
	<a href="logout.html">Logout</a><br/>
<a href="logout.html">Profile</a>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<%@include file="content.jsp"%>