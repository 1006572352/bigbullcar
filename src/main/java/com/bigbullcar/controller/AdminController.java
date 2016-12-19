package com.bigbullcar.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.enterprise.inject.New;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bigbullcar.entity.Admin;
import com.bigbullcar.entity.CarMessage;
import com.bigbullcar.entity.Message;
import com.bigbullcar.entity.User;
import com.bigbullcar.service.AdminService;
import com.bigbullcar.service.CarMessageService;
import com.bigbullcar.service.MessageService;
import com.bigbullcar.service.UserService;

/**
 * 管理员controller
 * 
 * @author zxt 2016-11-10
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	private List<User> userList = new ArrayList<User>();
	private CarMessage carMessage;

	public CarMessage getCarMessage() {
		return carMessage;
	}

	public void setCarMessage(CarMessage carMessage) {
		this.carMessage = carMessage;
	}

	private List<CarMessage> carMessageList = new ArrayList<CarMessage>();
	// 封装由dao实现最终返回的用户集合对象2016-11-5
	private List<Admin> adminList = new ArrayList<Admin>();
	// 使用spring注解方式：注入一个用户服务接口，该用户服务类
	@Resource
	private AdminService adminService;
	@Resource
	private UserService userService;
	@Resource
	private CarMessageService carMessageService;
	@Resource
	private MessageService messageService;

	/**
	 * 搜索功能
	 */
	@RequestMapping(value = "/adminSousuo", method = RequestMethod.GET)
	public ModelAndView sousuo(String userName, Model model) {
		userList = userService.getUserList();
		model.addAttribute("userList", userList);
		List<String> userNameList = userService.getUserByName();
		
		int userIndex = userNameList.indexOf(userName);
		System.out.println("下标" + userIndex);
		System.out.println("获取用户名"+userName);
		//model.addAttribute("userList", userList);
		// 分页
		int size = userList.size();
		System.out.println(size);
		double pagesize = 5;
		int pagenum = (int) Math.ceil(size / pagesize);
		int curpage = (int) Math.ceil((userIndex+1) / pagesize);
		System.out.println("当前页数" + curpage);
		System.err.println("查询页" + curpage);
		System.out.println("总页数" + pagenum);
		if (curpage > pagenum) {
			curpage = pagenum;
		}

		int start = (int) ((curpage - 1) * pagesize);
		int end = (int) (curpage * pagesize - 1);
		if (start < 0) {
			start = 0;
		}
		if (end > size - 1) {
			end = size - 1;
		}
		if (end < 0) {
			end = 0;
		}
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("curpage", curpage);
		model.addAttribute("pagenum", pagenum);
		System.out.println(userList.size());
		// carMessageList = carMessageService.selectCarMessages(new
		// CarMessage());
		// 设置session有效时间为500秒
		return new ModelAndView("admin");

	}

	/**
	 * 用户登录请求：2016-11-5 zxt 用户名自动去空格：2016-11-7 zxt
	 */
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public ModelAndView login(String adminName, String aPassword,
			HttpSession session, Model model) {

		System.err.println(adminName);
		System.err.println(aPassword);

		// 用户名自动去空格
		String adminName1 = adminName;
		String adminNames = adminName1.replaceAll(" ", "");
		System.out.println(adminNames);
		adminList = adminService.getAdminList();
		for (Admin admin : adminList) {
			System.err.println(admin.getAdminName() + "================="
					+ admin.getaPassword());
			if (admin.getAdminName().equals(adminNames)
					&& admin.getaPassword().equals(aPassword)) {
				// 登录成功[p
				session.setAttribute("adminName", "用户：" + adminNames);
				userList = userService.getUserList();
				// model.addAttribute("adminList", adminList);
				model.addAttribute("userList", userList);

				// 分页
				int size = userList.size();
				System.out.println(size);
				double pagesize = 5;
				int pagenum = (int) Math.ceil(size / pagesize);

				int curpage = 1;

				System.out.println("当前页数" + curpage);
				System.out.println("总页数" + pagenum);
				if (curpage > pagenum) {
					curpage = pagenum;
				}

				int start = (int) ((curpage - 1) * pagesize);
				int end = (int) (curpage * pagesize - 1);
				if (start < 0) {
					start = 0;
				}
				if (end > size - 1) {
					end = size - 1;
				}
				if (end < 0) {
					end = 0;
				}
				model.addAttribute("start", start);
				model.addAttribute("end", end);
				model.addAttribute("curpage", curpage);
				model.addAttribute("pagenum", pagenum);
				System.out.println(userList.size());
				// carMessageList = carMessageService.selectCarMessages(new
				// CarMessage());
				// 设置session有效时间为500秒
				session.setMaxInactiveInterval(500);
				return new ModelAndView("admin");

			} else {
				session.setAttribute("message", "登录失败，请重新输入");
				// 设置session有效时间为2秒
				session.setMaxInactiveInterval(2);
			}
		}

		// 登录失败返回登录页面重新登陆
		return new ModelAndView("redirect:../resources/jsp/adminLogin.jsp");
	}

	@RequestMapping(value = "/adminLogin{curpage}", method = RequestMethod.GET)
	public ModelAndView login(@PathVariable Integer curpage,
			HttpSession session, Model model) {
		System.out.println("curpage" + curpage);
		userList = userService.getUserList();

		model.addAttribute("userList", userList);

		// 分页
		int size = userList.size();
		System.out.println(size);
		double pagesize = 5;
		int pagenum = (int) Math.ceil(size / pagesize);
		if (curpage == null) {
			curpage = 1;
		} else {
			if (curpage < 1) {
				curpage = 1;
			}
			System.out.println("当前页数" + curpage);
			System.out.println("总页数" + pagenum);
			if (curpage > pagenum) {
				curpage = pagenum;
			}
		}
		int start = (int) ((curpage - 1) * pagesize);
		int end = (int) (curpage * pagesize - 1);
		if (start < 0) {
			start = 0;
		}
		if (end > size - 1) {
			end = size - 1;
		}
		if (end < 0) {
			end = 0;
		}
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("curpage", curpage);
		model.addAttribute("pagenum", pagenum);
		System.out.println(userList.size());
		// carMessageList = carMessageService.selectCarMessages(new
		// CarMessage());
		// 设置session有效时间为500秒
		session.setMaxInactiveInterval(500);
		return new ModelAndView("admin");

	}
	
	/**
	 * 查看客户留言
	 */
	@RequestMapping(value = "/adminSelectMessage/{username}", method = RequestMethod.GET)
	public String adminSelectMessage(@PathVariable("username") String username,Model model){
		//Message message = new Message();
		//message.setUsername(username);
		List<Message> messageByUsername = messageService.getMessageByUsername(username);
		model.addAttribute("message", messageByUsername);
		return "userMessage";
	}
	/**
	 * 查看车辆详情
	 * 
	 * @param username
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/adminLook/{username}", method = RequestMethod.GET)
	public String adminSelect(@PathVariable("username") String username,
			Model model) {
		System.out.println("==========================" + username);
		System.out.println(carMessageList.size());
		CarMessage carMessage = new CarMessage();
		carMessage.setUsername(username);
		carMessageList = carMessageService.selectCarMessages(carMessage);
		model.addAttribute("carMessageList", carMessageList);
		return "adminSelect";
	}

	/**
	 * 增加用户车辆信息
	 */

	@RequestMapping(value = "/adminAddCar", method = RequestMethod.POST)
	public String adminAddCar(HttpSession session,Model model) {
		String username  = (String)session.getAttribute("userName");
		System.err.println("增加" + username);
		CarMessage carMessage = new CarMessage();
		carMessage.setUsername(username);
		carMessageService.addCar(carMessage);
		carMessageList = carMessageService.selectCarMessages(carMessage);
		System.err.println("增加后" + carMessageList.size());
		model.addAttribute("carMessageList", carMessageList);
		return "adminSelect";
	}

	/**
	 * 修改用户车辆信息
	 * 
	 * @param username
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/adminUpdateCar/{carid}", method = RequestMethod.GET)
	public String adminUpdateCar(@PathVariable("carid") Integer carid,
			Model model, HttpSession session) {
		System.out.println("" + carid);
		session.setAttribute("carId", carid);
		CarMessage carMessage = new CarMessage();
		carMessage.setCarid(carid);
		List<CarMessage> selectCarMessages = carMessageService
				.selectCarMessages(carMessage);
		model.addAttribute("car", selectCarMessages.get(0));
		model.addAttribute("carMessage", new CarMessage());
		return "adminUpdate";
	}

	@RequestMapping(value = "/adminUpdateCar/{carid}", method = RequestMethod.POST)
	public String adminUpdateCar(CarMessage carMessage, HttpSession session,
			Model model) {
		Integer carid = (Integer) session.getAttribute("carId");
		System.out.println("---------" + carid);
		System.out.println(carMessage.getCarbrand());
		// 执行更新车辆信息
		carMessage.setCarid(carid);
		carMessageService.update(carMessage);
		// 获取用户名
		CarMessage c2 = new CarMessage();
		c2.setCarid(carid);
		List<CarMessage> selectCarMessages = carMessageService
				.selectCarMessages(c2);
		String username = selectCarMessages.get(0).getUsername();
		// 获取用户名对应的车辆集合

		CarMessage c3 = new CarMessage();
		c3.setUsername(username);
		;
		carMessageList = carMessageService.selectCarMessages(c3);
		System.err.println("更新后" + carMessageList.size());
		model.addAttribute("carMessageList", carMessageList);
		System.out.println("------------------成功更新车辆信息-------------");
		return "adminSelect";
	}

	/**
	 * 删除用户信息，同时删除车辆信息，留言信息 2016-11-10
	 */
	@RequestMapping(value = "/deleteuser/{username}", method = RequestMethod.GET)
	public String userDelete(@PathVariable("username") String username,
			Model model) {
		Message message = new Message();
		message.setUsername(username);
		Integer deleteMessage = messageService.deleteMessage(message);
		System.out.println("1删除留言信息" + deleteMessage);

		CarMessage carMessage = new CarMessage();
		carMessage.setUsername(username);
		List<CarMessage> selectCarMessages = carMessageService
				.selectCarMessages(carMessage);
		Integer carid = selectCarMessages.get(0).getCarid();
		System.err.println("carid --------" + carid);
		int deleteByPrimaryKey = carMessageService.deleteByPrimaryKey(carid);

		System.out.println("接下来删除车辆信息" + deleteByPrimaryKey);
		User user = new User();
		user.setUserName(username);
		int deleteUser = userService.deleteUser(user);
		System.out.println("3删除用户" + deleteUser);
		userList = userService.getUserList();
		System.out.println(userList.size());
		// carMessageList = carMessageService.selectCarMessages(new
		// CarMessage());
		model.addAttribute("userList", userList);
		int size = userList.size();
		System.out.println(size);
		double pagesize = 5;
		int pagenum = (int) Math.ceil(size / pagesize);
		Integer curpage = 1;

		System.out.println("当前页数" + curpage);
		System.out.println("总页数" + pagenum);
		if (curpage > pagenum) {
			curpage = pagenum;
		}

		int start = (int) ((curpage - 1) * pagesize);
		int end = (int) (curpage * pagesize - 1);
		if (start < 0) {
			start = 0;
		}
		if (end > size - 1) {
			end = size - 1;
		}
		if (end < 0) {
			end = 0;
		}
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("curpage", curpage);
		model.addAttribute("pagenum", pagenum);
		return "admin";
	}
}
