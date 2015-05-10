package com.ds.action;

import java.util.Date;

import com.ds.bean.News;
import com.ds.bean.pageBean;
import com.ds.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class News_Action extends ActionSupport {
	private News news;
	Date date = new Date();
	private NewsService service; 
	private int page;
	private pageBean pageBean;
	
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	public NewsService getService() {
		return service;
	}
	public void setService(NewsService service) {
		this.service = service;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public pageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(pageBean pageBean) {
		this.pageBean = pageBean;
	}
	
	public String ListFrontNews() throws Exception {
		this.pageBean = service.queryForPage(10, page);
		return SUCCESS;
	
	}
	
	public String ListBackNews() throws Exception {
		
		this.pageBean = service.queryForPage(4, page);
		return SUCCESS;
	}
	
	public String RemoveNews() throws Exception {
		this.service.delete(news);
		return  SUCCESS;
	}
	public String SaveNews() throws Exception {
		
		news.setDate(date);
		this.service.save(news);
	
		return SUCCESS;
	}
	public String UpdateNews() throws Exception {
		news.setDate(date);
		this.service.update(news);
		return  SUCCESS;
	}
	public String Find_News_By_Id() throws Exception {
		this.pageBean = service.queryForPage(1, getPage());
		this.news = this.service.findById(news.getId());
		return  SUCCESS;
	}
	
}

