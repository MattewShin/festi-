package com.festi.controller;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.festi.letfeVO.MemberVO;
import com.festi.service.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	//마이페이지 기본정보 조회
	@RequestMapping("mypage")
	public String Mypageopen(Model m, HttpSession session){
		String mem_id = (String) session.getAttribute("mem_id");
		MemberVO result = mypageService.selectMypage(mem_id);
		
		m.addAttribute("mypage", result);
		return "mypage/mypage";
	}
	
	//마이페이지 이미지 등록
	@RequestMapping("updateimg")
	public String updateMyimg(MultipartFile file, Model m, HttpSession session) {
		MemberVO vo = new MemberVO();
		
	       	// 업로드 파일 접근
	          
	          UUID uuid = UUID.randomUUID();
	          String img_save = uuid.toString() + "_" + file.getOriginalFilename();
	          
	          
	          //이게 맞는지 모르겠지만 경로는 이렇게 줌
	          // 해당 경로로 변경
	          File f = new File("C:\\Users\\kosmo\\git\\festi-\\src\\main\\webapp\\resources\\mypage\\upload\\"+img_save);
	       

	          try {
	             file.transferTo(f);
	             System.out.println(img_save+ ": 업로드 성공");
	          } catch (IllegalStateException e) {            
	             e.printStackTrace();
	          } catch (IOException e) {
	             
	             e.printStackTrace();
	          }
		
		vo.setMem_id((String)session.getAttribute("mem_id"));
		vo.setMem_profile(img_save);
		MemberVO imgopen = mypageService.selectProfile(vo.getMem_id());
		
		mypageService.updateMyimg(vo);
		m.addAttribute("mypage", imgopen);
		
		
		return "redirect:mypage";
	}

	
	
	
	
	@RequestMapping("my_blog")
	public String Myblogopen() {
		
		return "mypage/my_blog";
	}
		
	}
	