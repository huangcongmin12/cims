package com.cims.common.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.cims.common.dao.BaseDao;

/**
 * CIMS BaseDaoImpl
 * 
 * @author huangcongmin
 * @param <T>
 * @version , 2013-5-17
 * @since
 */
@Repository
public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

	/**
	 * 根据ID加载实体
	 * 
	 * @param entityClass
	 * @param id
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public T get(Class<T> entityClass, Serializable id) {
		return (T) this.getSessionFactory().getCurrentSession()
				.get(entityClass, id);
	}

	/**
	 * 保存实体
	 * 
	 * @param entity
	 * @return
	 */
	public Serializable save(T entity) {
		return this.getSessionFactory().getCurrentSession().save(entity);
	}

	/**
	 * 更新实体
	 * 
	 * @param entity
	 */
	public void update(T entity) {
		this.getSessionFactory().getCurrentSession().saveOrUpdate(entity);
	}

	/**
	 * 删除实体
	 * 
	 * @param entity
	 */
	public void delete(T entity) {
		this.getSessionFactory().getCurrentSession().delete(entity);
	}

	/**
	 * 根据ID删除实体
	 * 
	 * @param entityClass
	 * @param id
	 */
	public void delete(Class<T> entityClass, Serializable id) {
		this.delete(this.get(entityClass, id));
	}

	/**
	 * 获取总记录条数
	 * 
	 * @author huangcongmin
	 * @date 2013-5-17
	 * @param hql
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Integer getCount(String hql) {
		Query query = this.getSessionFactory().getCurrentSession().createQuery(hql);
		List<Long> list = query.list();
		Long count = list.get(0);
		Integer c = new Integer(count.toString());
		return c == null ? 0 : c;
	}

	/**
	 * 分页查询
	 * 
	 * @author huangcongmin
	 * @date 2013-5-17
	 * @param index
	 * @param size
	 * @param hql
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<T> list(int index, int size, String hql) {
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		query.setFirstResult((index - 1) * size);
		query.setMaxResults(size);
		return query.list();
	}

}
