package com.tcs.admin.service;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.DELETE;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import com.tcs.admin.bean.Admin;
import com.tcs.admin.bean.ItemVerifyData;
import com.tcs.admin.dao.AdminDao;
import com.tcs.employee.bean.Employee;
import com.tcs.vendor.bean.Vendor;

@Path("/AdminService")
public class AdminService {
	
	AdminDao admindao=new AdminDao();
	Admin returnAdmin;
	Response response;
	// Admin Login
	/* Samrat */
	
	@POST
	@Path("/Login")
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	
	public Response loginAdmin(Admin admin){
		
		
		try{
			returnAdmin = admindao.login(admin.getA_id(), admin.getA_pwd());
			
			if(returnAdmin != null){
				response = Response.ok().entity(returnAdmin).build();
			}
			else 
				response = Response.status(Response.Status.NOT_ACCEPTABLE).build();
		}catch (Exception e) {
			response = Response.status(Response.Status.CONFLICT).build();
		}
		
		return response;
	}
	
	
	@POST
	 @Path("/AddVendor")
	 @Produces(MediaType.APPLICATION_JSON)
	 
	 public Response add_Vendor(Vendor vendor)
	 {
		
		String v_id="";
		try {
			    v_id = admindao.addVendor(vendor);
			    response = Response.ok().entity(v_id).build();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			response = Response.status(Response.Status.BAD_REQUEST).build();
			e.printStackTrace();
		}
		return response;
	 }
	

	@GET
	@Path("/GetVendors")
	@Produces(MediaType.APPLICATION_JSON)
	
	public Response get_Vendors() {
		/* Saurabh */
		
		ArrayList<Vendor> vendorlist = new ArrayList<>();
		
		
			try {
				vendorlist=admindao.getVendors();
				response = Response.ok().entity(vendorlist).build();
			} catch (ClassNotFoundException | SQLException e) {
				response=Response.status(Response.Status.BAD_REQUEST).build();
			}

		 
		return response;
	}	
	
	@GET
	@Path("/GetAdmin")
	@Produces(MediaType.APPLICATION_JSON)

	public Response get_Admin()
	{
		ArrayList<Admin> adminList = new ArrayList<>();
	 
		try
		{
			adminList = admindao.getAdmin();
			response = Response.ok().entity(adminList).build();
		}
		catch (ClassNotFoundException | SQLException e) 
		{
			response = Response.status(Response.Status.BAD_REQUEST).build();
		}
		return response;
	 }
 
 
 @POST
 @Path("/AddAdmin")
 @Produces(MediaType.APPLICATION_JSON)
 @Consumes(MediaType.APPLICATION_JSON)
 public Response add_Admin(Admin admin){
	 Response response = null;
	 try{
		 //System.out.println("Into the function");
		 String admin_id = admindao.addAdmin(admin);
		 if(admin_id != null)
			 response = Response.ok().entity(admin_id).build();
//		 else{
//			 System.out.println("Null String");
//		 }
		 
		 
	 }catch(ClassNotFoundException | SQLException e){
		 response = Response.status(Response.Status.BAD_REQUEST).build();
	 }
	 
	 return response;
 }


	@DELETE
	@Path("/DeleteVendor/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	
	public Response delete_Vendor(@PathParam("id") String id) 
	{
		/* sid */
	
		try 
		{
			if (admindao.deleteVendor(id)) 
			{
				response = Response.ok().entity(id).build();
			}
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			// TODO Auto-generated catch block
			System.out.println("database error");
		}
		return response;
	}
	
	 @GET
	 @Path("/GetItemsToVerify")
	 @Produces(MediaType.APPLICATION_JSON) 
	
	 public Response get_Items()
	 {
		 ArrayList<ItemVerifyData> itemList = new ArrayList<>();
		 
		 try
		 {
			 itemList = admindao.itemDisplayForVerification();
			 response = Response.ok().entity(itemList).build();
		 }
		 catch (ClassNotFoundException | SQLException e) 
		 {
			 response = Response.status(Response.Status.BAD_REQUEST).build();
		 }
		 return response;
	 }
	 
	 @POST
	 @Path("/GetVendorById")
	 @Produces(MediaType.APPLICATION_JSON)
	 
	 public Response get_Vendor_By_Id(String v_id)
	 {
		 Vendor vendor=null;
		 try
		 {
			 vendor=admindao.getVendorById(v_id);
			 response=Response.ok().entity(vendor).build();
		 }
		 catch(Exception e)
		 {
			 response=Response.status(Response.Status.BAD_REQUEST).build();
		 }
		 return response;
	 }
	 

	 @POST
	 @Path("/GetAdminById")
	 @Produces(MediaType.APPLICATION_JSON)
	 
	 public Response get_Admin_By_Id(String a_id)
	 {
		 Admin admin=null;
		 try
		 {
			 admin=admindao.getAdminById(a_id);
			 response=Response.ok().entity(admin).build();
		 }
		 catch(Exception e)
		 {
			 response=Response.status(Response.Status.BAD_REQUEST).build();
		 }
		 return response;
	 }
	 

	 @POST
	 @Path("/GetEmployeeById")
	 @Produces(MediaType.APPLICATION_JSON)
	 
	 public Response get_Employee_By_Id(String e_id)
	 {
		 Employee employee=null;
		 try
		 {
			 employee=admindao.getEmployeeById(e_id);
			 response=Response.ok().entity(employee).build();
		 }
		 catch(Exception e)
		 {
			 response=Response.status(Response.Status.BAD_REQUEST).build();
		 }
		 return response;
	 }
	
		
	
}
