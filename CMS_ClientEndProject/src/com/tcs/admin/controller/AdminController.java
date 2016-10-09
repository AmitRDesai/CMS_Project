package com.tcs.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import com.tcs.admin.bean.Admin;
import com.tcs.vendor.bean.Vendor;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String form = request.getParameter("action");
		if(form.equalsIgnoreCase("addVendor"))
		{
			String v_name = request.getParameter("v_name");
			String v_email = request.getParameter("v_email");
			String v_phone = request.getParameter("v_phone");
			String v_type = request.getParameter("v_type");
			
			Vendor vendor = new Vendor(v_name, v_email, Long.parseLong(v_phone), v_type);
			response.getWriter().print(addVendor(vendor));
		}
		else if(form.equalsIgnoreCase("addAdmin"))
		{
			String empId = request.getParameter("a_Id");
			String empName =request.getParameter("a_name");
			String empEmail= request.getParameter("a_email");
			long empPhone= Long.parseLong(request.getParameter("a_phone"));
			
			Admin admin= new Admin(empId, empName,empEmail, empPhone);
			String id=addAdmin(admin);
			//response.getWriter().print("OK"+id);
			if(id.equalsIgnoreCase("no"))
			{
				response.getWriter().print("Error Occurred");
			}
		}
		
	}
	
	public static ArrayList<Vendor> getVendor(){
		String url = "http://localhost:8080/CMS_RestfullWebServiceProject/rest/AdminService/GetVendors";
		Client client = Client.create();
		WebResource webresource = client.resource(url);
		ClientResponse response = webresource.accept(MediaType.APPLICATION_JSON).get(ClientResponse.class);
		if(response.getStatus()==Response.Status.OK.getStatusCode()){
			return response.getEntity(new GenericType<ArrayList<Vendor>>(){});
		}else{
			return null;
		}
	}

	
	
	public static String addAdmin(Admin admin) throws IOException{
		
		String id = null;
		String url= "http://localhost:8080/CMS_RestfullWebServiceProject/rest/AdminService/AddAdmin";
		Client client= Client.create();
		WebResource webResource = client.resource(url);
		ClientResponse response= webResource.accept(MediaType.APPLICATION_JSON).entity(admin, MediaType.APPLICATION_JSON).post(ClientResponse.class);
		
		if(response.getStatus() != 200){
			return "no";
		}else{
			id = response.getEntity(String.class);
		}
		return id;
	}

	public static String addVendor(Vendor vendor)
	{
		String url = "http://localhost:8080/CMS_RestfullWebServiceProject/rest/AdminService/AddVendor";	
		Client client = Client.create();
		WebResource webresource = client.resource(url);
		ClientResponse response = webresource.entity(vendor)
				.accept(MediaType.APPLICATION_JSON).post(ClientResponse.class);
		
		if (response.getStatus()!=200) 
		{
			System.err.println("DataBase Error");
		} 
		else
		{
			  String id = response.getEntity(String.class);
			  return id;
		}
		return null;
	}


	
}
