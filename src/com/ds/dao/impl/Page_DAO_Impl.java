package com.ds.dao.impl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.ds.bean.Member;
import com.ds.bean.Message;
import com.ds.bean.Project;
import com.ds.bean.Thesis;
import com.ds.dao.Page_DAO;


public class Page_DAO_Impl extends HibernateDaoSupport implements Page_DAO {
	/*
	 * 分页查询
	 * hql查询条件
	 * offset开始记录
	 * length一次性查询几条记录
	 */
	public List<Project> queryForPage(String hql, int offset, int length) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);
		q.setMaxResults(length);
		@SuppressWarnings("unchecked")
		List<Project> list = q.list();
		System.out.println(list.size());
		session.close();
		return list;
	}

	
	public List<Message> queryForPage_Message(String hql, int offset, int length) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);
		q.setMaxResults(length);
		@SuppressWarnings("unchecked")
		List<Message> list_message = q.list();
		//System.out.println(list.size());
		session.close();
		return list_message;
	}
	public int getAllRowCount(String sql) {
		
		return this.getHibernateTemplate().find(sql).size();
	}


	public List<Message> queryForPage_Message_for_client(String hql,
			int offset, int length) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);
		q.setMaxResults(length);
		@SuppressWarnings("unchecked")
		List<Message> list_message = q.list();
		//System.out.println(list.size());
		session.close();
		return list_message;
	}
	public List<Thesis> queryForPage_Thesis(String hql, int offset, int length) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);
		q.setMaxResults(length);
		@SuppressWarnings("unchecked")
		List<Thesis> list_thesis = q.list();
		session.close();
		return list_thesis;
	}
	public Thesis find_thesis_by_id(int id) {
		// TODO Auto-generated method stub
		Thesis thesis = (Thesis) this.getHibernateTemplate().get(Thesis.class, id);
		Session session = this.getSession();
		String hql = "update Thesis thesis set thesis.clickRate = thesis.clickRate+1 where thesis.id="
				+ id;
		System.out.println("clickrate1=" + thesis.getClickRate());
		Query query = session.createQuery(hql);
		int ret = query.executeUpdate();
		System.out.println("clickrate2=" + thesis.getClickRate());
		session.close();
		return thesis;
	}
	public List<Member> queryForPage_forblackMember(String hql, int offset,
			int length) {
		Session session = this.getSession();
		Query q = session.createQuery(hql);
		q.setFirstResult(offset);
		q.setMaxResults(length);
		@SuppressWarnings("unchecked")
		List<Member> list_member = q.list();
		//System.out.println(list.size());
		session.close();
		return list_member;
	}

}
