package com.ds.dao.impl;

import java.util.List;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Admin;
import com.ds.dao.Admin_DAO;

public class Admin_DAO_Impl extends HibernateDaoSupport implements Admin_DAO {

	

	public Admin find_admin_by_name(String propertyName, Object value) {
		String sql = "from Admin admin where admin."+propertyName+"=?";
		@SuppressWarnings("unchecked")
		List<Admin> list = this.getHibernateTemplate().find(sql, value);
		if(list!=null&&list.size()==1)
		{
			return list.get(0);
		}
		return null;
	}

}
