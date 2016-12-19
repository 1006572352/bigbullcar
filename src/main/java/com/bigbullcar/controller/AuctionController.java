package com.bigbullcar.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bigbullcar.entity.Auction;
import com.bigbullcar.entity.CarMessage;
import com.bigbullcar.entity.User;
import com.bigbullcar.exception.AllException;
import com.bigbullcar.service.AuctionService;
import com.bigbullcar.service.CarMessageService;
import com.bigbullcar.service.UserService;

@Controller
@RequestMapping("/auction")
public class AuctionController {
	private final ReentrantLock lock = new ReentrantLock();
	private List<Auction> auctionList=new ArrayList<Auction>();
	public AuctionController(){
		//设置竞拍车辆
		carIdList.add(8);
		carIdList.add(9);
		carIdList.add(10);
		carIdList.add(7);

	}
	private List<Integer> carIdList=new ArrayList<Integer>();
	private CarMessage carm;
	
	public CarMessage getCarm() {
		return carm;
	}

	public void setCarm(CarMessage carm) {
		this.carm = carm;
	}

	public List<Integer> getCarIdList() {
		return carIdList;
	}

	public void setCarIdList(List<Integer> carIdList) {
		this.carIdList = carIdList;
	}

	@Resource
	private AuctionService auctionService;
	@Resource
	private CarMessageService carMessageService;
	@Resource
	private UserService userService;

	public List<Auction> getAuctionList() {
		return auctionList;
	}

	public void setAuctionList(List<Auction> auctionList) {
		this.auctionList = auctionList;
	}
	
	/**
	 * 进入竞拍页面，判断是否登录
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/jp",method=RequestMethod.GET)
	public ModelAndView jp(HttpSession session, Model model){
		try{
			//判断用户是否登录
			if(session.getAttribute("userName")==null){
			return new ModelAndView("redirect:/resources/jsp/login.jsp");
			}
			String username=(String )session.getAttribute("userName");
			
			//判断登录用户是否已经缴纳押金
			Auction auction=new Auction();
			auction.setUserName(username);
			List<Auction> select = auctionService.select(auction);
			if(select.size()==0){
				//表示没有缴纳押金
			}else{
				//表示用户已经缴纳过押金
				session.setAttribute("yajin", "yajin");
			}
			session.setAttribute("userName", username);
					System.out.println(carIdList.toString());
			model.addAttribute("carIdList", carIdList);
		}catch(Exception e){
			e.printStackTrace();
			throw new AllException(e.getMessage());
		}
		System.out.println("------------进入竞拍页面-------------");
		return new ModelAndView("jpzbz");
	}
	
	/**
	 * 具体展现竞拍某一辆车
	 * 
	 */
	@RequestMapping(value="/wyjp/{ul}",method=RequestMethod.GET)
	public String  wyjp(@PathVariable("ul") Integer ul,HttpSession session, Model model){
		try{
			//获得竞拍车辆信息
			session.setAttribute("jpcarid", ul);
			System.out.println(ul);
			CarMessage carMessage2=new CarMessage();
			carMessage2.setCarid(ul);
			CarMessage carMessage= carMessageService.selectCarMessages(carMessage2).get(0);
			System.out.println(carMessage);
			//,获取竞拍最高价格
			Auction jiageAuction=new Auction();
			jiageAuction.setCarId(ul);
			Auction selectMax = auctionService.selectMax(jiageAuction);
			double maxPrice=0d;
			if(selectMax!=null){
				maxPrice=selectMax.getBuyPrice();
			}
			java.text.DecimalFormat   df   =new   java.text.DecimalFormat("#.00");  
			df.format(carMessage.getCarprice()+maxPrice);
			model.addAttribute("jpprice",df.format(carMessage.getCarprice()+maxPrice));
			model.addAttribute("carMessage", carMessage);
		}catch(Exception e){
			e.printStackTrace();
			throw new AllException(e.getMessage());
		}
		System.out.println("------------具体展现某一竞拍车辆-------------");
		return "wyjpzbz";
	}
	
	/**
	 * 如果用户初次加价，缴纳押金
	 
	 */
	@RequestMapping(value="/yajinjp",method=RequestMethod.GET)
	public String  yajinjp(HttpSession session, Model model){
		try{
			//获取竞拍车辆id
			Integer ul = (Integer)session.getAttribute("jpcarid");
			String username=(String )session.getAttribute("userName");
			User user=new User();
			user.setUserName(username);
			User user2 = userService.getUser(user);
			//获取登录用户信息
			model.addAttribute("loginuser", user2);
			System.out.println(ul);
			session.setAttribute("jpcarid", ul);
		}catch(Exception e){
			e.printStackTrace();
			throw new AllException(e.getMessage());
		}
		System.out.println("------------初次加价，缴纳押金-------------");
		return "yajinzbz";
	}
	
	/**
	 * 缴纳押金后继续竞拍
	
	 */
	@RequestMapping(value="/jixujp",method=RequestMethod.GET)
	public String  jixujp(HttpSession session, Model model){
		try{
			
			//获取竞拍车辆id，登录用户名
			Integer ul = (Integer)session.getAttribute("jpcarid");
			String username=(String )session.getAttribute("userName");
			session.setAttribute("jpcarid", ul);
			session.setAttribute("userName", username);
			
			//缴纳押金，新增竞拍用户信息
			session.setAttribute("yajin", "yajin");
			Auction auction=new Auction();
			auction.setUserName(username);
			auction.setBuyPrice(0d);
			auction.setCarId(ul);
			auction.setIsMax(0);
			auctionService.add(auction);
			//获取登录用户信息
			User user=new User();
			user.setUserName(username);
			User user2 = userService.getUser(user);
		//获取竞拍车辆信息
			CarMessage carMessage=new CarMessage();
			carMessage.setCarid(ul);
			CarMessage carMessage2 = carMessageService.selectCarMessages(carMessage).get(0);
			//,获取竞拍最高价格
			Auction jiageAuction=new Auction();
			jiageAuction.setCarId(ul);
			Auction selectMax = auctionService.selectMax(jiageAuction);
			Double maxPrice=0d;
			if(selectMax!=null){
				maxPrice=selectMax.getBuyPrice();
			}
			java.text.DecimalFormat   df   =new   java.text.DecimalFormat("#.00");  
			df.format(carMessage2.getCarprice()+maxPrice);
			model.addAttribute("jpprice",df.format(carMessage2.getCarprice()+maxPrice));
			
			model.addAttribute("loginuser", user2);
			model.addAttribute("carMessage", carMessage2);
		}catch(Exception e){
			e.printStackTrace();
			throw new AllException(e.getMessage());
		}
		System.out.println("------------缴纳押金后继续竞拍-------------");
		return "wyjpzbz";
	}
	
	/**
	 * 用户进行加价，每次增加1000元
	 * 
	 */
	@RequestMapping(value="/jiajiajp",method=RequestMethod.GET)
	public String  jiajiajp(HttpSession session, Model model){
		try{
			lock.lock();
			//获取竞拍车辆id
			Integer ul = (Integer)session.getAttribute("jpcarid");
			String username=(String )session.getAttribute("userName");
			session.setAttribute("jpcarid", ul);
			session.setAttribute("userName", session.getAttribute("userName"));
			//获取登录用户信息
			User user=new User();
			user.setUserName(username);
			User user2 = userService.getUser(user);
		//获取竞拍车辆信息
			CarMessage carMessage=new CarMessage();
			carMessage.setCarid(ul);
			CarMessage carMessage2 = carMessageService.selectCarMessages(carMessage).get(0);
			model.addAttribute("loginuser", user2);
			model.addAttribute("carMessage", carMessage2);
			//,获取竞拍最高价格
			Auction jiageAuction=new Auction();
			jiageAuction.setCarId(ul);
			Auction selectMax = auctionService.selectMax(jiageAuction);
			Double maxPrice=0d;
			if(selectMax!=null){
				maxPrice=selectMax.getBuyPrice();
				System.out.println(maxPrice);
			}
			//加价后更新竞拍用户信息
			Auction auction=new Auction();
			auction.setUserName(username);
			auction.setBuyPrice(maxPrice+0.1);
			auctionService.update(auction);
			java.text.DecimalFormat   df   =new   java.text.DecimalFormat("#.00");  
		Double jjjjDouble=carMessage2.getCarprice()+maxPrice+0.1;
			model.addAttribute("jpprice",df.format(jjjjDouble));
		}catch(Exception e){
			e.printStackTrace();
			throw new AllException(e.getMessage());
		}
		System.out.println("------------用户进行加价，每次增加1000元-------------");
		lock.unlock();
		return "wyjpzbz";
	}
	
	
	
	
	

}
