package com.tcs.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.MediaType;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.ClientResponse.Status;
import com.sun.jersey.api.client.WebResource;
import com.tcs.employee.bean.Employee;

/**
 * Servlet implementation class Login_Servlet
 */
@WebServlet("/Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = null;

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String opt = request.getParameter("action");
		if(opt.equals("register")){
			registration(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

	private void registration(HttpServletRequest request, HttpServletResponse response){
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String emp_id = request.getParameter("emp_id");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		
		String name=fname+" "+lname;
		
		Client restClient = Client.create();
		WebResource webResource = restClient.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/EmployeeService/registration");
		ClientResponse resp = webResource.accept(MediaType.APPLICATION_JSON).entity(new Employee(),MediaType.APPLICATION_JSON)
				.put(ClientResponse.class);
		if (resp.getStatus()==Status.BAD_REQUEST.getStatusCode() ) {
			resp.getEntity(String.class);
		}else{
			
		}
	}
	
}
