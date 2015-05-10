package com.ds.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ds.bean.Admin;
import com.ds.service.Admin_Service;
import com.opensymphony.xwork2.ActionSupport;

public class Admin_Action extends ActionSupport {
private Admin admin;
private Admin_Service admin_service;
public Admin getAdmin() {
	return admin;
}
public void setAdmin(Admin admin) {
	this.admin = admin;
}
public Admin_Service getAdmin_service() {
	return admin_service;
}
public void setAdmin_service(Admin_Service admin_service) {
	this.admin_service = admin_service;
}

@SuppressWarnings("deprecation")
public String login() throws Exception {
//	System.out.println("name="+this.admin.getAdminname());
//	System.out.println("password="+this.admin.getPassword());
	HttpSession session = ServletActionContext. getRequest().getSession();
	session.putValue("adminname", this.admin.getAdminname());
	
	
	System.out.println("flag="+this.admin_service.validate(this.admin.getAdminname(), this.admin.getPassword()));
	if(this.admin_service.validate(this.admin.getAdminname(), this.admin.getPassword()))
	{
		return SUCCESS;
		
	}
	return INPUT;
}
	

}
