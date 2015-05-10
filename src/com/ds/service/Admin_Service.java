package com.ds.service;

import com.ds.bean.Admin;


public interface Admin_Service {
	public Admin find(String propertyName,Object value);
	public boolean validate(String adminname,String password);
}
