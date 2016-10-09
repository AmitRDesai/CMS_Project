package com.tcs.employee.controller;

import java.util.ArrayList;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.ClientResponse.Status;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import com.tcs.controller.ControllerServlet;
import com.tcs.employee.bean.Wallet;
import com.tcs.vendor.bean.Item;
import com.tcs.vendor.bean.Vendor;

public class EmployeeUtil {
	
	public static ArrayList<Vendor> retriveVendor() {

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(ControllerServlet.url);
		ClientResponse resp = webResource.path("EmployeeService/displayVendor")
				.get(ClientResponse.class);
		if (resp.getStatus() == Status.CONFLICT.getStatusCode()) {
			return null;
		} else if (resp.getStatus() == Status.OK.getStatusCode()) {

			ArrayList<Vendor> list = resp.getEntity(new GenericType<ArrayList<Vendor>>() {
			});
			return list;

		} else {
			return null;
		}

	}
	
	
	public static ArrayList<Item> retriveItems(String vendorId) {

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(ControllerServlet.url);
		ClientResponse resp = webResource.path("EmployeeService/get_items/"+vendorId)
				.get(ClientResponse.class);
		if (resp.getStatus() == Status.CONFLICT.getStatusCode()) {
			return null;
		} else if (resp.getStatus() == Status.OK.getStatusCode()) {

			return resp.getEntity(new GenericType<ArrayList<Item>>() {
			});

		} else {
			return null;
		}

	}
	
	public static ArrayList<Wallet> retriveWallet() {

		Client restClient = Client.create();
		WebResource webResource = restClient.resource(ControllerServlet.url);
		ClientResponse resp = webResource.path("EmployeeService/showWallet")
				.get(ClientResponse.class);
		if (resp.getStatus() == Status.CONFLICT.getStatusCode()) {
			return null;
		} else if (resp.getStatus() == Status.OK.getStatusCode()) {

			return resp.getEntity(new GenericType<ArrayList<Wallet>>() {
			});

		} else {
			return null;
		}

	}
	
}
