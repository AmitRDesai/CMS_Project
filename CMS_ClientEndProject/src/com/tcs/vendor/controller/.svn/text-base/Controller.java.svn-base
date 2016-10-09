package com.tcs.vendor.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tcs.employee.bean.Employee;
import com.tcs.vendor.bean.*;

import javax.ws.rs.core.MediaType;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
import com.tcs.vendor.bean.Item;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		System.out.println("Servlet invoked");
		String action = request.getParameter("action");
		System.out.println("Action: "+action);
//
//		// Adding Item to Vendor Menu
//		if (action.equalsIgnoreCase("addItems")) {
//
//			String v_id = request.getParameter("v_id");
//			String i_name = request.getParameter("i_name");
//			double i_price = Integer.parseInt(request.getParameter("i_price"));
//			String i_type = request.getParameter("i_type");
//			int i_mo = Integer.parseInt(request.getParameter("i_mo"));
//			int i_tu = Integer.parseInt(request.getParameter("i_tu"));
//			int i_we = Integer.parseInt(request.getParameter("i_we"));
//			int i_th = Integer.parseInt(request.getParameter("i_th"));
//			int i_fr = Integer.parseInt(request.getParameter("i_fr"));
//			int i_sa = Integer.parseInt(request.getParameter("i_sa"));
//			int i_su = Integer.parseInt(request.getParameter("i_su"));
//			int serve_count = Integer.parseInt(request
//					.getParameter("serve_count"));
//			Item item = new Item(0, v_id, i_name, i_price, i_type, i_mo, i_tu,
//					i_we, i_th, i_fr, i_sa, i_su, 0, 0, "None", serve_count);
//
//			try {
//				boolean status = false;
//				Client restClient = Client.create();
//				WebResource webResource = restClient
//						.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/VendorWebService/addItem");
//				ClientResponse resp = webResource
//						.accept(MediaType.APPLICATION_JSON)
//						.entity(item, MediaType.APPLICATION_JSON)
//						.post(ClientResponse.class);
//
//				if (resp.getStatus() != 200) {
//					System.err.println("Unable to connect to the server");
//				} else {
//					status = resp.getEntity(boolean.class);
//					System.out.println("Status of add item:" + status);
//				}
//				request.getRequestDispatcher("/add.jsp").forward(
//						request, response);
//
//			} catch (Exception e) {
//				throw new ServletException(
//						"poblem in adding item in controller", e);
//			}
//		}
//
//		// Updating Menu
//
//		if (action.equalsIgnoreCase("updateMenu")) {
//
//			int i_id = Integer.parseInt(request.getParameter("i_id"));
//			String v_id = request.getParameter("v_id");
//			String i_name = request.getParameter("i_name");
//			double i_price = Double
//					.parseDouble(request.getParameter("i_price"));
//			String i_type = request.getParameter("i_type");
//			int serve_count = Integer.parseInt(request.getParameter("serve_count"));
//			int i_mo = Integer.parseInt(request.getParameter("i_mo"));
//			int i_tu = Integer.parseInt(request.getParameter("i_tu"));
//			int i_we = Integer.parseInt(request.getParameter("i_we"));
//			int i_th = Integer.parseInt(request.getParameter("i_th"));
//			int i_fr = Integer.parseInt(request.getParameter("i_fr"));
//			int i_sa = Integer.parseInt(request.getParameter("i_sa"));
//			int i_su = Integer.parseInt(request.getParameter("i_su"));
//			Item it = new Item(i_id, v_id, i_name, i_price, i_type, i_mo, i_tu, i_we, i_th, i_fr, i_sa, i_su, 1, 0,"none",serve_count);
//			try {
//				Item item = new Item();
//				Client restClient = Client.create();
//				WebResource webResource = restClient
//						.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/VendorWebService/menu");
//				ClientResponse resp = webResource
//						.accept(MediaType.APPLICATION_JSON)
//						.entity(it, MediaType.APPLICATION_JSON)
//						.post(ClientResponse.class);
//
//				if (resp.getStatus() != 200) {
//					System.err.println("Unable to connect to the server");
//				} else {
//					item = resp.getEntity(Item.class);
//					System.out.println("output:" + item);
//				}
//
//				request.getRequestDispatcher("****").forward(
//						request, response);
//			} catch (Exception e) {
//				throw new ServletException("Cannot obtain products from DB", e);
//			}
//		}

		// Display of Vendor Menu
		if (action.equalsIgnoreCase("items")) {
			System.out.println("item module executing");
			String vendorID = "V10001";//request.getParameter("V10001");// fill it
			try {
				ArrayList<Item> itemList = null;
				Client restClient = Client.create();
				WebResource webResource = restClient
						.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/VendorWebService/menu");
				ClientResponse resp = webResource
						.accept(MediaType.APPLICATION_JSON)
						.entity(vendorID, MediaType.APPLICATION_JSON)
						.post(ClientResponse.class);

				if (resp.getStatus() != 200) {
					System.err.println("Unable to connect to the server");
				} else {
					itemList = resp
							.getEntity(new GenericType<ArrayList<Item>>() {
							});
					System.out.println("output:" + itemList);
				}
				for(Item i:itemList){
					System.out.println(i);
				}
				request.setAttribute("products", itemList); // Will be available
															// as ${products} in
															// JSP
				request.getRequestDispatcher("/vendor/listitems.jsp").forward(
						request, response);
			} catch (Exception e) {
				throw new ServletException("Cannot obtain products from DB", e);
			}
		}

		// Search item by Poonam(1083015)
//		if (action.equalsIgnoreCase("itemDisplay")) {
//			try {
//				request.getAttribute("i_name");
//			} catch (Exception e) {
//
//			}
//		}
//
//		// Deleting Item from Vendor Menu
//
//		if (action.equalsIgnoreCase("deleteItem")) {
//
//			String itemID = request.getParameter("***");// fill it
//			try {
//				boolean status = false;
//
//				Client restClient = Client.create();
//				WebResource webResource = restClient
//						.resource("http://localhost:8080/CMS_RestfullWebServiceProject/rest/VendorWebService/deleteItem");
//				ClientResponse resp = webResource
//						.accept(MediaType.APPLICATION_JSON)
//						.entity(itemID, MediaType.APPLICATION_JSON)
//						.put(ClientResponse.class);
//
//				if (resp.getStatus() != 200) {
//					System.err.println("Unable to connect to the server");
//				} else {
//					status = resp.getEntity(Boolean.class);
//					System.out.println("output:" + status);
//				}
//
//				request.setAttribute("products", status); // Will be available
//															// as ${products} in
//															// JSP
//				request.getRequestDispatcher("vendorDisplay.jsp").forward(
//						request, response);
//			} catch (Exception e) {
//				throw new ServletException("Cannot obtain products from DB", e);
//			}
//		}
//
//		// update vendor detail
//		if (action.equalsIgnoreCase("")) {
//			String v_id = request.getParameter("v_id");
//			String v_name = request.getParameter("v_name");
//			String v_email = request.getParameter("v_email");
//			long v_phone = Long.parseLong(request.getParameter("v_phone"));
//			String v_type = request.getParameter("v_type");
//
//		}

	}

}
