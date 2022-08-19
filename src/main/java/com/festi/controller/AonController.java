package com.festi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.festi.letfeVO.AonVO;
import com.festi.service.AonService;

@Controller
public class AonController {

	@Autowired
	private AonService aonService;

	// 에온 리스트 불러오는 메소드

	@RequestMapping("aon")
	public String openAonList(Model model) {
		List<AonVO> aList = aonService.selectAonList();
		model.addAttribute("aList", aList);
		
		return "afteronline/aonlist";
	}

	// 에온 상세보기
	@RequestMapping("aonlook")
	public String openAonlookpage(@RequestParam("goods_code") String goods_code, Model model) {
		AonVO avo = aonService.selectAonOne(goods_code);
		model.addAttribute("goods", avo);
		
		return "afteronline/aolookpage";
	}

	//주문
	@RequestMapping("aonorder")
	public String onpenAonOrder(@RequestParam("goods_code") String goods_code, Model model) {
		AonVO avo = aonService.selectAonOne(goods_code);
		
		model.addAttribute("goods", avo);
		
		return "afteronline/aonorder";
	}

	//결제
	@RequestMapping("aonorderok")
	public String openAonOrderOk() {
		return "afteronline/aonorderok";
	}

	//등록페이지 오픈
	@RequestMapping("goodsupload")
	public String aonupload() {
		return "afteronline/goodsupload";
	}

	//등록
	@RequestMapping("aonuploadok")
	public String insertAon(AonVO avo){
		aonService.aonInsert(avo);
		
		
		return "redirect:aon";
	}
	

}
