package com.tcs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

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
import com.sun.jersey.api.client.ClientResponse.Status;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.research.ws.wadl.Response;
import com.tcs.admin.bean.Admin;
import com.tcs.employee.bean.Employee;
import com.tcs.employee.bean.ErrorMessage;
import com.tcs.employee.bean.Login;
import com.tcs.employee.bean.Wallet;
import com.tcs.employee.controller.EmployeeUtil;
import com.tcs.vendor.bean.Item;
import com.tcs.vendor.bean.Vendor;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static final String url = "http://localhost:8080/CMS_RestfullWebServiceProject/rest/";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ControllerServlet() {
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

		String opt = request.getParameter("action");
		if (opt.equals("register")) {
			registration(request, response);
		} else if (opt.equals("login")) {
			login(request, response);
		} else if (opt.equals("logout")) {
			logout(request, response);
		} else if (opt.equals("myWallet")) {
			retriveWallet(request, response);
		} else if (opt.equals("order")) {

			placeOrder(request, response);

		}

	}

	private void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getSession().invalidate();
		request.getRequestDispatcher("/home.jsp").forward(request, response);
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

	private void login(HttpServletRequest request, HttpServletResponse response)
			throws ClientHandlerException, UniformInterfaceException,
			IOException, ServletException {
		String id = request.getParameter("login_username");
		if (id.toUpperCase().charAt(0) == 'V') {
			loginVendor(request, response);
		} else if (id.toUpperCase().charAt(0) == 'A') {
			loginAdmin(request, response);
		} else {
			loginEmployee(request, response);
		}
	}

	private void loginEmployee(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException, ServletException {
		String username = request.getParameter("login_username");
		String password = request.getParameter("login_password");

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(url);
		ClientResponse resp = webResource
				.path("EmployeeService/login")
				.accept(MediaType.APPLICATION_JSON)
				.entity(new Login(username, password),
						MediaType.APPLICATION_JSON).post(ClientResponse.class);
		if (resp.getStatus() == Status.OK.getStatusCode()) {

			Employee employee = resp.getEntity(Employee.class);
			HttpSession session = request.getSession();
			session.setAttribute("employee", employee);
			response.setStatus(200);
			response.setContentType("text/json");
			// response.sendRedirect("employee/dashboard.jsp");
			String link = "employee/dashboard.jsp";
			response.getWriter().println("{ \"link\" : \"" + link + "\"}");

		} else if (resp.getStatus() == 201 || resp.getStatus() == 202) {
			response.setStatus(resp.getStatus());
			response.setContentType("text/json");
			ErrorMessage errorMessage = resp.getEntity(ErrorMessage.class);
			response.getWriter().println(new Genson().serialize(errorMessage));
		} else {
			// redirect to error page
		}
	}

	private void loginAdmin(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException, ServletException {
		String username = request.getParameter("login_username");
		String password = request.getParameter("login_password");

		Client restClient = Client.create();
		WebResource webResource = restClient
				.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/AdminService/Login");
		ClientResponse resp = webResource
				.accept(MediaType.APPLICATION_JSON)
				.entity(new Admin(username, null, password, null, 0),
						MediaType.APPLICATION_JSON).post(ClientResponse.class);
		if (resp.getStatus() == Status.CONFLICT.getStatusCode()) {
			response.getWriter().println(resp.getEntity(String.class));
		} else if (resp.getStatus() == Status.OK.getStatusCode()) {

			Admin admin = resp.getEntity(Admin.class);
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			request.getRequestDispatcher("admin/Dashboard.jsp").forward(
					request, response);
		} else {
			response.getWriter().println("Unable to connect to the server.");
		}

	}

	private void loginVendor(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException, ServletException {
		String userID = request.getParameter("login_username");
		String password = request.getParameter("login_password");

		Client restClient = Client.create();

		WebResource webResource = restClient
				.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/VendorWebService/login");

		ClientResponse resp = webResource
				.accept(MediaType.APPLICATION_JSON)
				.entity(new Vendor(userID, null, password, null, 0, 0, null),
						MediaType.APPLICATION_JSON).post(ClientResponse.class);

		if (resp.getStatus() == Status.CONFLICT.getStatusCode()) {
			response.getWriter().println(resp.getEntity(String.class));
		} else if (resp.getStatus() == Status.OK.getStatusCode()) {
			Vendor vendor = resp.getEntity(Vendor.class);
			HttpSession session = request.getSession();
			session.setAttribute("vendorId", vendor.getV_id());
			session.setAttribute("vendorName", vendor.getV_name());
			request.getRequestDispatcher("").forward(request, response);
		} else {
			response.getWriter().println("Unable to connect to the server.");
		}
	}

	private void registration(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException {
		String fname = request.getParameter("e_fname");
		String lname = request.getParameter("e_lname");
		String emp_id = request.getParameter("e_id");
		String emp_eMail = request.getParameter("e_email");
		String emp_PhoneNo = request.getParameter("e_phoneno");
		String password = request.getParameter("password");

		// Commented by Rahul Golani
		// String cpassword = request.getParameter("cpassword");

		String name = fname + " " + lname;

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(url);
		ClientResponse resp = webResource
				.path("EmployeeService/registration")
				.accept(MediaType.APPLICATION_JSON)
				.entity(new Employee(emp_id, name, password, emp_eMail,
						Long.parseLong(emp_PhoneNo), 1),
						MediaType.APPLICATION_JSON).post(ClientResponse.class);
		if (resp.getStatus() == Status.OK.getStatusCode()
				|| resp.getStatus() == 201) {
			ErrorMessage errorMessage = resp.getEntity(ErrorMessage.class);
			response.setContentType("text/json");
			response.setStatus(resp.getStatus());
			response.getWriter().println(new Genson().serialize(errorMessage));
		} else {
			// // redirect to error page
			// response.getWriter().println("Unable to connect to the server.");
		}
	}

	public void retriveWallet(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException, ServletException {

		String emp_id = request.getParameter("e_id");

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(url);
		ClientResponse resp = webResource.path("EmployeeService/showWallet")
				.accept(MediaType.APPLICATION_JSON)
				.entity(emp_id, MediaType.APPLICATION_JSON)
				.post(ClientResponse.class);
		if (resp.getStatus() == Status.BAD_REQUEST.getStatusCode()) {
			response.getWriter().println(resp.getEntity(String.class));
		} else if (resp.getStatus() == Status.CONFLICT.getStatusCode()) {
			response.getWriter().println(resp.getEntity(String.class));
		} else if (resp.getStatus() == Status.OK.getStatusCode()) {
			request.setAttribute("Wallets",
					resp.getEntity(new GenericType<ArrayList<Wallet>>() {
					}));
			getServletContext().getRequestDispatcher("/employee/myWallet.jsp")
					.forward(request, response);
			// response.getWriter().println(resp.getEntity(String.class));
		} else {
			response.getWriter().println("Unable to connect to the server.");
		}
	}

	private void placeOrder(HttpServletRequest request,
			HttpServletResponse response) throws ClientHandlerException,
			UniformInterfaceException, IOException, ServletException {
		HttpSession session = request.getSession(false);
		ArrayList<Item> al = EmployeeUtil.retriveItems(request
				.getParameter("vid"));
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new java.util.Date());
		String day1 = calendar.DAY_OF_MONTH + "";
		String day2 = (calendar.DAY_OF_MONTH + 1) + "";

		java.sql.Date t_Date = java.sql.Date.valueOf(request
				.getParameter("orderDate"));
		Date odate = new java.util.Date(t_Date.getTime());
		response.getWriter().println(odate);
		calendar.setTime(odate);
		response.getWriter().println(calendar.DAY_OF_MONTH + "");
		// Employee emp=(Employee)session.getAttribute("employee");
		// for(Item it:al){
		// emp.setOrder(it.getI_id(),
		// Integer.parseInt(request.getParameter(it.getI_id()+"_"+day1)));
		// }
	}

}