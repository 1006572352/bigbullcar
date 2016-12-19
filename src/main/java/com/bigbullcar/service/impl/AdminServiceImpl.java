package com.bigbullcar.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.bigbullcar.dao.AdminMapper;
import com.bigbullcar.entity.Admin;
import com.bigbullcar.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Resource
	private AdminMapper adminDao;
	
	@Override
	public List<Admin> getAdminList() {
		// TODO 自动生成的方法存根
		return adminDao.getAdminList();
	}

	@Override
	public Admin getAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		return adminDao.getAdmin(admin);
	}

	@Override
	public int insertAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		return adminDao.add(admin);
	}

	@Override
	public int deleteAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		return adminDao.delete(admin);
	}

	@Override
	public int updateAdmin(Admin admin) {
		// TODO 自动生成的方法存根
		return adminDao.update(admin);
	}

}
