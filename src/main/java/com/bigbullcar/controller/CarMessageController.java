package com.bigbullcar.controller;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.bigbullcar.entity.CarMessage;
import com.bigbullcar.entity.User;
import com.bigbullcar.exception.AllException;
import com.bigbullcar.service.CarMessageService;
import com.bigbullcar.service.UserService;

/**
 * 使用注解at Controller：代表该类属于springmvc的控制器类
 * @author 
 *
 */
@Controller
@RequestMapping("/bigbullcar")
public class CarMessageController {
	
	//封装由dao实现最终返回集合对象2016-10-31
		private List<CarMessage>carMessageList = new ArrayList<CarMessage>();
		@Resource
		private CarMessageService carMessageService;
		@Resource 
		private UserService userService;
		
		//设置getter  and  setter
		public List<CarMessage> getCarMessageList() {
			return carMessageList;
		}

		public void setCarMessageList(List<CarMessage> carMessageList) {
			this.carMessageList = carMessageList;
		}

		@RequestMapping(value="/brand/{carbrand}/{curpage}",method=RequestMethod.GET)
		public String selectCarMessageByCarBrand(@PathVariable("carbrand")String carBrand,@PathVariable("curpage") Integer curpage,Model model){
			try{
			String [] carprices = carBrand.split("-");
			String brand=carprices[0];
			Integer brand1=Integer.parseInt(carprices[1]);
			carMessageList=carMessageService.selectCarMessageByCarBrand(brand);
			int size = carMessageList.size();
			if(size==0){
				return "errorhcc";
			}
			System.err.println(size);
			double pagesize = 6;
			int pagenum = (int) Math.ceil(size / pagesize);
			if (curpage == null) {
				curpage = 1;
			} else {
				if (curpage < 1) {
					curpage = 1;
				}
				if (curpage > pagenum) {
					curpage = pagenum;
				}
			}
			int start = (int) ((curpage - 1) * pagesize);
			int end = (int) (curpage * pagesize - 1);
			if (end >= size - 1) {
				end = size - 1;
			}
			model.addAttribute("carmessageList",carMessageList);
			model.addAttribute("start",start);
			model.addAttribute("end",end);
			model.addAttribute("curpage",curpage);
			model.addAttribute("pagenum",pagenum);
			model.addAttribute("carBrand",carBrand);
			model.addAttribute("brand",brand);
			model.addAttribute("brand1",brand1);
			
			System.out.println("----selectCarMessages+post----");
			}catch(Exception e){
				throw new AllException(e.getMessage());
			}
			return "fenleishow";
		}

		@RequestMapping(value="/price/{carprice}/{curpage}",method=RequestMethod.GET)
		public String selectCarMessageByCarPrice(@PathVariable("carprice")String carPrice,@PathVariable("curpage") Integer curpage,Model model){
			try{
		   String [] carprices = carPrice.split("-");
		   Double maxprice = Double.parseDouble(carprices[1]);
		   Double minprice = Double.parseDouble(carprices[0]);
		   Integer brand1=Integer.parseInt(carprices[2]);
		   CarMessage carMessage = new CarMessage();
		   carMessage.setMaxprice(maxprice);
		   carMessage.setMinprice(minprice);
		   carMessageList=carMessageService.selectCarMessageByCarPrice(carMessage);
		   int size = carMessageList.size();
		   if(size==0){
				return "errorhcc";
			}
			System.err.println(size);
			double pagesize = 6;
			int pagenum = (int) Math.ceil(size / pagesize);
			if (curpage == null) {
				curpage = 1;
			} else {
				if (curpage < 1) {
					curpage = 1;
				}
				if (curpage > pagenum) {
					curpage = pagenum;
				}
			}
			int start = (int) ((curpage - 1) * pagesize);
			int end = (int) (curpage * pagesize - 1);
			if (end >= size - 1) {
				end = size - 1;
			}
			model.addAttribute("carmessageList",carMessageList);
			model.addAttribute("start",start);
			model.addAttribute("end",end);
			model.addAttribute("curpage",curpage);
			model.addAttribute("pagenum",pagenum);
			model.addAttribute("carBrand",carPrice);
			model.addAttribute("brand1",brand1);
			
			System.out.println("----selectCarMessages+post----");
			}catch(Exception e){
				throw new AllException(e.getMessage());
			}
			return "fenleishow";
		}
		
		@RequestMapping(value="/type/{cartype}/{curpage}",method=RequestMethod.GET)
		public String selectCarMessageByCarType(@PathVariable("cartype")String carType,@PathVariable("curpage") Integer curpage,Model model){
			try{
			String [] carprices = carType.split("-");
			String brand=carprices[0];
			Integer brand1=Integer.parseInt(carprices[1]);
			carMessageList=carMessageService.selectCarMessageByCarType(brand);
			int size = carMessageList.size();
			if(size==0){
				return "errorhcc";
			}
			System.err.println(size);
			double pagesize = 6;
			int pagenum = (int) Math.ceil(size / pagesize);
			if (curpage == null) {
				curpage = 1;
			} else {
				if (curpage < 1) {
					curpage = 1;
				}
				if (curpage > pagenum) {
					curpage = pagenum;
				}
			}
			int start = (int) ((curpage - 1) * pagesize);
			int end = (int) (curpage * pagesize - 1);
			if (end > size - 1) {
				end = size - 1;
			}
			model.addAttribute("carmessageList",carMessageList);
			model.addAttribute("start",start);
			model.addAttribute("end",end);
			model.addAttribute("curpage",curpage);
			model.addAttribute("pagenum",pagenum);
			model.addAttribute("carBrand",carType);
			model.addAttribute("brand",brand);
			model.addAttribute("brand1",brand1);
			System.out.println("----selectCarMessages+post----");
			}catch(Exception e){
				throw new AllException(e.getMessage());
			}
			return "fenleishow";
		}
	
		
		//  买车环节控制  2016-11-07  zbz
		@RequestMapping(value="/buycar{curpage}",method=RequestMethod.GET)
		public String selectCarMessagesBuy(@PathVariable Integer curpage,Model model,CarMessage carMessage){
			try{
			System.out.println(carMessage.getCartype());
			System.out.println(carMessage.getCarmileage());
			System.out.println(carMessage.getCarprice());
			System.out.println(carMessage.getCarage());
			System.out.println(carMessage.getCarbrand());
			try{
			carMessageList=carMessageService.selectCarMessages(carMessage);
			int size = carMessageList.size();
			System.err.println(size);
			double pagesize = 6;
			int pagenum = (int) Math.ceil(size / pagesize);
			if (curpage == null) {
				curpage = 1;
			} else {
				if (curpage < 1) {
					curpage = 1;
				}
				System.out.println("当前页数"+curpage);
				System.out.println("总页数页数"+pagenum);
				if (curpage > pagenum) {
					curpage = pagenum;
				}
			}
			int start = (int) ((curpage - 1) * pagesize);
			int end = (int) (curpage * pagesize - 1);
			if(start<0){
				start=0;
			}
			if (end > size - 1) {
				end = size - 1;
			}
			if(end<0){
				end=0;
			}
			model.addAttribute("carmessageList",carMessageList);
			model.addAttribute("start",start);
			model.addAttribute("end",end);
			model.addAttribute("curpage",curpage);
			model.addAttribute("pagenum",pagenum);
			
			System.out.println("----selectCarMessages+post----");
			}catch(Exception  e){
				throw new AllException(e.getMessage());
			}
			}catch(Exception e){
				throw new AllException(e.getMessage());
			}
			return "BuyCarzbz";
		}
		//  买车环节控制  2016-11-07  zbz
		@RequestMapping(value="/buycar/{carid}",method=RequestMethod.GET)
		public String selectCarPhotoBuy(@PathVariable("carid") Integer carId, Model model){
			try{
			CarMessage carMessage=new CarMessage();
			carMessage.setCarid(carId);
			carMessageList=carMessageService.selectCarMessages(carMessage);
			System.err.println(carMessageList.size());
			model.addAttribute("carmessageList",carMessageList);
			System.out.println("----selectCarPhotoBuy+post----");}catch(Exception e){
				throw new AllException(e.getMessage());
			}
			return "Car_Message_zhang";
		}
		
		
		
		//  卖车环节控制  2016-11-07  zbz
		@RequestMapping(value="/salecar",method=RequestMethod.GET)
		public ModelAndView selectCarMessagesSale(HttpSession session,Model model){
			try{
			//判断用户是否登录
			if(session.getAttribute("userName")==null){
			return new ModelAndView("redirect:/resources/jsp/login.jsp");
			}
			System.err.println(session.getAttribute("userName"));
			session.setMaxInactiveInterval(500);
			session.setAttribute("saleusername", session.getAttribute("userName"));
			model.addAttribute("carMessage", new CarMessage());
			System.out.println("----selectCarMessagesSale+get----");
			}catch(Exception e){
				throw new AllException(e.getMessage());
			}
			return new ModelAndView("SaleCarzbz");
		}
		
	//  卖车环节控制  2016-11-08  zbz
			@RequestMapping(value="/salecar",method=RequestMethod.POST)
			public String addCarMessagesSale(@Validated CarMessage carMessage,@RequestParam("attachs") MultipartFile[] attachs,HttpSession session,Model model,HttpServletRequest request){
				
				try{
				//spring 批量上传文件,获得新增序号
				List<CarMessage> selectCarMessages = carMessageService.selectCarMessages(new CarMessage());
				Integer index=selectCarMessages.size()+1;
				int lastindex=1;
				for (MultipartFile attach : attachs) {
					//判断数组对象中的attachs对象不为空
					if(!attach.isEmpty()){
						//由session对象获得服务器真实路径
						String realPath=request.getSession().getServletContext().getRealPath("/resources/images/zbz-images");
						//获得文件名称
						String fileName=attach.getOriginalFilename();
						System.out.println(fileName);
						//创建一个file对象
						File file=new File(realPath+"/"+index+"."+lastindex+".jpg");
						//最后由spring负责传输文件
						try {
							attach.transferTo(file);
						} catch (IllegalStateException e) {
							// TODO 自动生成的 catch 块
							e.printStackTrace();
						} catch (IOException e) {
							// TODO 自动生成的 catch 块
							e.printStackTrace();
						}
					}
					lastindex++;
				}
				System.out.println("汽车图片上传成功");
				//插入车辆信息
				System.out.println("-----------------------------------------");
				String saleuserName=(String)session.getAttribute("saleusername");
				System.out.println(saleuserName);
			if(carMessage.getCarmileage()==null){
				throw new AllException("行驶里程为空");
			}
			if(carMessage.getCarprice()==null){
				throw new AllException("车辆价格为空");
			}
			if(carMessage.getCarage()==null){
				throw new AllException("购车时间为空");
			}
			System.out.println(carMessage.getCartype());
				System.out.println(carMessage.getCarprice());
				System.out.println(carMessage.getCarage());
				System.out.println(carMessage.getCarbrand());
				carMessage.setUsername(saleuserName);
				carMessage.setCarstate(1);
				carMessage.setCarphoto(index);
				
				int insert = carMessageService.insert(carMessage);
				
				System.out.println("是否成功插入？"+insert);
			
				//查询用户信息
				List<User> userList = userService.getUserList();
				for(User user:userList){
					if(user.getUserName().equals(saleuserName)){
						model.addAttribute("user", user);
						model.addAttribute("newcarmessage", carMessage);
						model.addAttribute("picnum", lastindex);
						System.out.println("----------------成功匹配用户信息------------");
						break;
					}
				}
				System.out.println("----addCarMessagesSale+post----");
				}catch(Exception e){
					throw new AllException(e.getMessage());
				}
				return "UserMeaasgezbz";
			}
			
			/**
			 * 客服咨询控制   
			 * zbz  2016-11-09
			 */
			@RequestMapping(value="/customercard",method=RequestMethod.GET)
			public ModelAndView kefu(HttpSession session,Model model) {
				//判断用户是否登录
				if(session.getAttribute("userName")==null){
				return new ModelAndView("redirect:/resources/jsp/login.jsp");
				}
				System.err.println(session.getAttribute("userName"));
				User user=new User();
				user.setUserName((String )session.getAttribute("userName"));
				try{
				User user2 = userService.getUser(user);
				model.addAttribute("customeruser", user2);
				}catch(Exception e){
				
					throw new AllException(e.getMessage());
				}
				return new ModelAndView("CustomerCarezbz");
			}
		
}
