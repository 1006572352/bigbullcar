package com.bigbullcar.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bigbullcar.entity.User;
import com.bigbullcar.exception.AllException;
import com.bigbullcar.service.UserService;

/**
 * 使用注解@Controller代表：该类属于springmvc的控制类
 * 
 * @author lyj 2016-11-5
 * 
 */
@Controller
@RequestMapping("/user")
public class UserController {
	// 封装由dao实现最终返回的用户集合对象2016-11-5
	private List<User> userList = new ArrayList<User>();
	// 使用spring注解方式：注入一个用户服务接口，该用户服务类
	@Resource
	private UserService userService;	
	/**
	 * 用户登录请求：2016-11-5 lyj
	 * 
	 * 用户名和密码自动去空格：2016-11-7 lyj
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(String userName, String password,
			HttpSession session, HttpServletRequest req) {
		try{
		   session.removeAttribute("messages");
		   System.err.println(userName);
	       System.err.println(password);

		// 用户名自动去空格
		String userName1 = userName;
		String userNames = userName1.replaceAll(" ", "");
		System.out.println(userNames);

		// 设置session有效时间为2秒
		session.setMaxInactiveInterval(500);


		// 用户名和密码自动去空格
		 userName = userName.replaceAll(" ", "");
		 password = password.replaceAll(" ", "");
		System.out.println(userName);
		System.out.println(password);

		/**
		 * 判断登录用户输入的验证码 11-8 lyj
		 */
		// 取出验证码输入框的值
		String input = req.getParameter("input");
		if (!input.equals("GOOD")) {
			session.setAttribute("message", "验证码输入有误，请重新输入");
			return new ModelAndView("redirect:../resources/jsp/login.jsp");
		}
		userList = userService.getUserList();
		for (User user : userList) {
			System.err.println(user.getUserName() + "================="
					+ user.getPassword());
			if (user.getUserName().equals(userName)
					&& user.getPassword().equals(password)) {
				
				//设置session域有效时间为500秒
				session.setMaxInactiveInterval(500);		
				
				session.setAttribute("userName", user.getUserName());
				
				session.setAttribute("userNames", "用户："+user.getUserName());
				// 登录成功返回首页

				session.setAttribute("userName",  userNames);



				return new ModelAndView("redirect:../index.jsp");
			} else {
				session.setAttribute("message", "用户名或密码错误，请重新输入");
			}
		}
		}catch(Exception e){
			throw new AllException(e.getMessage());
		}
		// 登录失败返回登录页面重新登陆
		return new ModelAndView("redirect:../resources/jsp/login.jsp");
	}

	/**
	 * 用戶注冊，数据保存 2016-11-5 lyj
	 * 
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addUser(String userName, String password,
			String telephone, String email, HttpSession session) {	
		try{
		session.removeAttribute("message");
		session.removeAttribute("messages");
		
		System.err.println(userName + password);		
		//判断注册用户名和密码是否包含空格
		System.out.println(userName.indexOf(" "));
		if(userName.indexOf(" ") != -1 || password.indexOf(" ") != -1){
			session.setAttribute("messagess", "用户名和密码不能有空格，请重新注册");
			return new ModelAndView("redirect:../resources/jsp/reg.jsp");
		}
		
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		user.setTelephone(telephone);
		user.setEmail(email);
		userList = userService.getUserList();
		for (User users : userList) {
			System.err.println(users.getUserName());
			if (users.getUserName().equals(userName)) {
				session.setAttribute("messagess", "用户名已存在，请重新注册");
				return new ModelAndView("redirect:../resources/jsp/reg.jsp");
			}
		}
		int num = 0;
		num = userService.insertUser(user);
		if (num == 1) {
			userList.add(user);
		}
		session.setAttribute("message", "注册成功，请登录");
		session.setAttribute("userName", userName);
		session.setAttribute("password", password);
		
		}catch(Exception e){
			throw new AllException(e.getMessage());
		}
		return new ModelAndView("redirect:../resources/jsp/login.jsp");
	}
	
	/**
	 * 
	 * 密码找回页面验证 获取前端验证码 2016-11-7 lyj
	 * 
	 * @param userName
	 * @param telephone
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/retieve", method = RequestMethod.POST)
	public ModelAndView retieve(String userName, String telephone,
			HttpSession session, HttpServletRequest req) {	
		try{
		session.removeAttribute("message1");
		session.removeAttribute("message2");
		// System.err.println(req.getParameter("nums"));
		// System.err.println(userName);
		// System.err.println(telephone);
		
		// 获取前端用户输入验证码值
		String num1 = req.getParameter("nums");
		//获取后台产生的验证码值
		session.getAttribute("num");
		// System.err.println(session.getAttribute("num"));
			
		userList = userService.getUserList();	
		for (User user : userList) {
			// System.err.println(user.getUserName()+user.getTelephone());
			if (!session.getAttribute("num").equals(num1)) {
				session.setAttribute("message1", "验证码输入有误，请点击换一张，重新输入");
				return new ModelAndView("redirect:../resources/jsp/retieve.jsp");
			}
			if (user.getTelephone().equals(telephone)
					&& user.getUserName().equals(userName)) {
				session.setAttribute("messages", user.getUserName() + "--你的密码是："
						+ user.getPassword());
				return new ModelAndView("redirect:../resources/jsp/login.jsp");
			}
		}
		session.setAttribute("message2", "用户名或手机号输入有误");
		}catch(Exception e){
			throw new AllException(e.getMessage());
		}
		return new ModelAndView("redirect:../resources/jsp/retieve.jsp");
	}

	/**
	 * 找回密码页面产生验证码 2016-11-7 lyj
	 */
	@RequestMapping(value = "/verify", method = RequestMethod.GET)
	public ModelAndView verify(HttpSession session) {
		try{
		session.removeAttribute("message1");
		session.removeAttribute("message2");
		System.err.println("---------------");
		int num1 = (int) Math.floor(Math.random() * 10);
		int num2 = (int) Math.floor(Math.random() * 10);
		int num3 = (int) Math.floor(Math.random() * 10);
		int num4 = (int) Math.floor(Math.random() * 10);
		session.setAttribute("num", num1 + "" + num2 + "" + num3 + "" + num4);
		}
		catch(Exception e){
			throw new AllException(e.getMessage());}
		return new ModelAndView("redirect:../resources/jsp/retieve.jsp");
	}
	/**
	 * 注册页面返回登录页面  清除session域值
	 * 11.8  lyj
	 */
	@RequestMapping(value = "/clear", method = RequestMethod.GET)
	public ModelAndView clear(HttpSession session) {
		try{
		session.removeAttribute("message");
		session.removeAttribute("messages");
		}catch(Exception e){
			throw new AllException(e.getMessage());
		}
	
		return new ModelAndView("redirect:../resources/jsp/login.jsp");
	}
	/**
	 * 用户个人信息视图
	 * 11.8  lyj
	 */
	@RequestMapping(value = "/userview", method = RequestMethod.GET)
	public ModelAndView userview(HttpSession session ,Model model){
		try{
		String userName =(String) session.getAttribute("userName");
		System.err.println(userName);
		userList = userService.getUserList();
		for(User user:userList){
			if(user.getUserName().equals(userName)){
				System.err.println(user.getUserName());		
				model.addAttribute("user",user);
				break;
			}
		}		
		}catch(Exception e){
			throw new AllException(e.getMessage());
		}
		return new ModelAndView("userview");
	}
	 @RequestMapping(value = "/update", method = RequestMethod.POST)
		public ModelAndView update(String telephone,String email,String password,HttpSession session,Model model){
		 try{
	    	String userName =(String) session.getAttribute("userName");
			userList = userService.getUserList();
			System.err.println(userName);
			for(User user : userList){
				if(user.getUserName().equals(userName)){
					user.setTelephone(telephone);
					user.setEmail(email);
					user.setPassword(password);
					System.err.println(password);
					int num = userService.updateUser(user);
					if(num==1){
						model.addAttribute("user", user);
						return	new ModelAndView("userview");
					}
				}
			}
		 }catch(Exception e){
			 throw new AllException(e.getMessage());
		 }
			return new ModelAndView("update-lyj");		
		}
	 
	  /**
	     * 获得用户信息
	     * 11.9  lyj
	     */
	    @RequestMapping(value = "/getInfo", method = RequestMethod.GET)
	    public String getInfo(Model model,HttpSession session){
	    	try{
	    	String userName =(String) session.getAttribute("userName");
			userList = userService.getUserList();
			for(User user : userList){
				if(user.getUserName().equals(userName)){
					model.addAttribute("user", user);
					break;
				}
			}
	    	}catch(Exception e){
	    		e.printStackTrace();
	    		throw new AllException(e.getMessage());
	    	}
			return "update-lyj";  	
	    }

}
