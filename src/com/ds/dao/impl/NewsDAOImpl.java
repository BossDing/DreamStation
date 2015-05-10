package com.ds.dao.impl;

import java.sql.SQLException;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.ds.bean.News;
import com.ds.dao.NewsDAO;

public class NewsDAOImpl extends HibernateDaoSupport implements NewsDAO {
	public void saveNews(News news) {

		this.getHibernateTemplate().save(news);

	}

	public void removeNews(News news) {
		this.getHibernateTemplate().delete(news);
	}

	public void updateNews(News news) {
		this.getHibernateTemplate().update(news);
	}

	public News findNewsById(int id) {
		News news = (News) this.getHibernateTemplate().get(News.class, id);
		Session session = this.getSession();
		String hql = "update News news set news.account = news.account+1 where news.id="
				+ id;
		Query query = session.createQuery(hql);
		int ret = query.executeUpdate();
		session.close();
		return news;
	}

	@SuppressWarnings("rawtypes")
	public List queryForPage(final String hql, final int offset,
			final int length) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery(hql);
				query.setFirstResult(offset);
				query.setMaxResults(length);
				List list = query.list();
				return list;
			}
		});
		return list;
	}

	public int getAllRowCount(String hql) {
		return getHibernateTemplate().find(hql).size();
	}

}