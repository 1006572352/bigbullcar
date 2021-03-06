package com.bigbullcar.dao;

import java.util.List;

import com.bigbullcar.entity.User;

public interface UserMapper {
	    //统计人员表记录数
		public int count();
		
		//新增用户
		public int add(User user);
		
		//更新用户
		public int updateUser(User user);
		
		//删除用户
		public int delete(User user);
		
		//查询用户
		public List<User> getUserList();
		public User getUser(User user);
		
		/**
		 * 通过用户名查找
		 * @param user
		 * @return
		 */
		public List<String> getUserByName();
		
		//新增用户查询关联角色表  2016-10-28
		public List<User> getRoleListByUser(User user);
		
		//新增用户查询关联地址表 2016-10-28
		public List<User> getAddressListByUser(User user);
		
		//新增动态sql语句查询条件  2016-10-28
		public List<User> newGetUserList(User user);
		
		//新增查询用户列表使用数组对象  2016-10-28
		public List<User> getUserListByArray(String[] roleId);
		
		//新增查询用户列表使用集合对象
		public List<User> getUserListByList(List<String> roleidList);
}