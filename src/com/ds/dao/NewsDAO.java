package com.ds.dao;

import java.util.List;

import com.ds.bean.News;

public interface NewsDAO {
	public void saveNews(News news);
	public void removeNews(News news);
	public void updateNews(News news);
	public News findNewsById(int id);

    
   
    @SuppressWarnings("rawtypes")
	public List queryForPage(final String hql,final int offset,final int length);
    
   
    public int getAllRowCount(String hql);

}
