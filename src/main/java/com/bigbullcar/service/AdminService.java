package com.bigbullcar.service;

import java.util.List;

import com.bigbullcar.entity.Admin;

public interface AdminService {

	public List<Admin> getAdminList();

	public Admin getAdmin(Admin admin);

	public int insertAdmin(Admin admin);

	public int deleteAdmin(Admin admin);

	public int updateAdmin(Admin admin);
}
