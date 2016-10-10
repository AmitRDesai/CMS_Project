package com.tcs.employee.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.MediaType;

import com.owlike.genson.Genson;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientHandlerException;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.ClientResponse.Status;
import com.tcs.admin.bean.Admin;
import com.tcs.controller.ControllerServlet;
import com.tcs.employee.bean.ChangePwd;
import com.tcs.employee.bean.Employee;
import com.tcs.employee.bean.ErrorMessage;
import com.tcs.vendor.bean.Item;
import com.tcs.vendor.bean.Vendor;

/**
 * Servlet implementation class EmployeeController
 */
@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String operation = request.getParameter("operation");

		switch (operation) {
		case "get_items":
			retriveItems(request,response);
			break;

		case "change_pwd":
			changePwd(request, response);

			break;

		case "update":
			update(request, response);
			break;

		default:
			break;
		}

	}

	private void retriveItems(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		Client restClient = Client.create();
		WebResource webResource = restClient.resource(ControllerServlet.url);
		ClientResponse resp = webResource.path("EmployeeService/get_items/"+request.getParameter("v_id"))
				.get(ClientResponse.class);
		if (resp.getStatus() == Status.OK.getStatusCode()) {

			ArrayList<Item> itemList = resp.getEntity(new GenericType<ArrayList<Item>>(){});
			response.setStatus(resp.getStatus());
			response.setContentType("text/json");
			response.getWriter().println(new Genson().serialize(itemList));

		} else if (resp.getStatus() == 201) {
			response.setStatus(resp.getStatus());
			response.setContentType("text/json");
			ErrorMessage errorMessage = resp.getEntity(ErrorMessage.class);
			response.getWriter().println(new Genson().serialize(errorMessage));
		} else {
			// redirect to error page
		}
		
	}

	private void update(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(ControllerServlet.url);
		ClientResponse resp = webResource
				.path("EmployeeService/update")
				.entity(new Employee(id, name, password, email, Long
						.valueOf(phone), 0)).accept(MediaType.APPLICATION_JSON)
				.post(ClientResponse.class);
		if (resp.getStatus() == 200) {
			request.getSession().setAttribute("employee",
					resp.getEntity(Employee.class));
			response.getWriter().println("Update sucessful");
		} else {
			response.getWriter().println("Update unsucessful");
		}
	}

	private void changePwd(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException, ServletException {

		String id = request.getParameter("e_id");
		String oldPwd = request.getParameter("old_pwd");
		String newPwd = request.getParameter("new_pwd");

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(ControllerServlet.url);
		ClientResponse resp = webResource
				.path("EmployeeService/changePwd")
				.accept(MediaType.APPLICATION_JSON)
				.entity(new ChangePwd(id, oldPwd, newPwd),
						MediaType.APPLICATION_JSON).post(ClientResponse.class);
		response.getWriter().println(resp.getEntity(String.class));

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

}
