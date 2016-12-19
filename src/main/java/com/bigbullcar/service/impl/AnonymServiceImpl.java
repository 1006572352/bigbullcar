package com.bigbullcar.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.bigbullcar.dao.AnonymMapper;
import com.bigbullcar.entity.Anonym;
import com.bigbullcar.service.AnonymService;

@Service
public class AnonymServiceImpl implements AnonymService {
	
	
	@Resource
	private AnonymMapper anonymDao;

	
	public int add(Anonym anonym) {
		
		return anonymDao.add(anonym);
	}

}
