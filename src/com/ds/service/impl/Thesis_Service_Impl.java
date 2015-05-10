package com.ds.service.impl;

import com.ds.bean.Thesis;
import com.ds.dao.Thesis_DAO;
import com.ds.service.Thesis_Service;

public class Thesis_Service_Impl implements Thesis_Service {
	private Thesis_DAO thesis_dao;

	public Thesis_DAO getThesis_dao() {
		return thesis_dao;
	}

	public void setThesis_dao(Thesis_DAO thesis_dao) {
		this.thesis_dao = thesis_dao;
	}

	public void save(Thesis thesis) {
		// TODO Auto-generated method stub
		this.thesis_dao.saveThesis(thesis);
	}

	public void delete(Thesis thesis) {
		// TODO Auto-generated method stub
		this.thesis_dao.deleteThesis(thesis);
	}
	public void update(Thesis thesis) {
		// TODO Auto-generated method stub
		this.thesis_dao.updateThesis(thesis);
	}
	public Thesis findById(int id) {
		// TODO Auto-generated method stub
		return thesis_dao.findById(id);
	}

	public int find_ALL() {
		// TODO Auto-generated method stub
		return this.thesis_dao.find_ALL();
	}





}
