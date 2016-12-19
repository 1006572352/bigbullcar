package com.bigbullcar.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bigbullcar.entity.Anonym;
import com.bigbullcar.service.AnonymService;


@Controller
@RequestMapping("/anonym")
public class AnonymController {

	@Resource
	private AnonymService anonymService;	
	
	@RequestMapping(value="/add",method = RequestMethod.POST)
    public String add(String anonymTel){
		System.err.println("3333333333");
		if(anonymTel.equals("")){
			
			return "../../index";
		}
		Anonym anonym = new Anonym();
		anonym.setAnonymTel(anonymTel);		
		int num = anonymService.add(anonym);
		if(num==1){
			
			return "../../index";
		}
	
		return "../../index";
	}
}
