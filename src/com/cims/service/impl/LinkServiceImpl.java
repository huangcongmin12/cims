package com.cims.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cims.dao.LinkDao;
import com.cims.domain.Link;
import com.cims.service.LinkService;

/**
 * CIMS LinkServiceImpl
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
@Service
public class LinkServiceImpl implements LinkService {

	@Autowired
	private LinkDao linkDao;

	public Link get(Long id) {
		return linkDao.get(Link.class, id);
	}

	public Long save(Link link) {
		return (Long) linkDao.save(link);
	}

	public void update(Link link) {
		linkDao.update(link);
	}

	public void delete(Long id) {
		linkDao.delete(Link.class, id);
	}

	public int getCount() {
		String hql = "select count(*) from Link";
		return linkDao.getCount(hql);
	}

	public List<Link> list(int index, int size) {
		String hql = "from Link";
		return linkDao.list(index, size, hql);
	}

}
