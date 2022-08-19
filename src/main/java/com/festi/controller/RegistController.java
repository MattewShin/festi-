package com.festi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.festi.letfeVO.MemberVO;
import com.festi.service.RegistService;

@Controller
public class RegistController {

	@Autowired
	private RegistService registService;
	
	@RequestMapping("registMember")
	public String registMember(MemberVO vo,Model m) {
		
		
		System.out.println("야!!!!!!!!!!!!!!!!!!!!"+vo.getMem_name());
		
		registService.registMember(vo);
		
		m.addAttribute("mem_id", vo.getMem_id());
		
		return "regist/reigistDone";
	}
	

	@RequestMapping("goToHome")
	public String goToHome() {
		
		return "../../index";
	}
	
	@RequestMapping("goToLogin")
	public String goToLogin() {
		
		return "./login/login";
	}
	
	
	@ResponseBody
	@GetMapping(value="idCheck")
	public int overlappedID(MemberVO vo,HttpServletRequest http) throws Exception{
		String mem_id = http.getParameter("mem_id");
		vo.setMem_id(mem_id);
		int result = registService.overlapped(vo);
		
		
		return result;
	}
	
	
	
	
}
