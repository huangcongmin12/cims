package com.cims.service;

import java.util.List;

import com.cims.domain.Link;

/**
 * CIMS LinkService
 *
 * @author huangcongmin
 * @version , 2013-5-18
 * @since
 */
public interface LinkService {

	Link get(Long id);

	Long save(Link link);

	void update(Link link);

	void delete(Long id);

	int getCount();

	List<Link> list(int index, int size);
}
