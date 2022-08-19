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

	// 애온 눌리면 보여지는 페이지

	@RequestMapping("aon")
	public String openAonList(Model model) {
		List<AonVO> aList = aonService.selectAonList();
		model.addAttribute("aList", aList);
		
		return "afteronline/aonlist";
	}

	// 상품을 클릭을 하였을때 상세보기로 되는 페이지
	@RequestMapping("aonlook")
	public String openAonlookpage(@RequestParam("goods_code") String goods_code, Model model) {
		AonVO avo = aonService.selectAonOne(goods_code);
		model.addAttribute("goods", avo);
		
		return "afteronline/aolookpage";
	}

	// 상품 주문을 눌렀을때 발생
	@RequestMapping("aonorder")
	public String onpenAonOrder(@RequestParam("goods_code") String goods_code, Model model) {
		AonVO avo = aonService.selectAonOne(goods_code);
		
		model.addAttribute("goods", avo);
		
		return "afteronline/aonorder";
	}

	// 결제 버튼 눌렸을때 주문완료
	@RequestMapping("aonorderok")
	public String openAonOrderOk() {
		return "afteronline/aonorderok";
	}

	// 등록하는 페이지 열리게 하는 코드
	@RequestMapping("goodsupload")
	public String aonupload() {
		return "afteronline/goodsupload";
	}

	// 등록을 하기 위한 메소드
	@RequestMapping("aonuploadok")
	public String insertAon(AonVO avo){
		aonService.aonInsert(avo);
		
		return "afteronline/aonlist";
	}
	

}
