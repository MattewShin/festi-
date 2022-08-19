package com.festi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.festi.letfeVO.FestivalVO;
import com.festi.letfeVO.ImgVO;
import com.festi.service.FestivalService;

@Controller
public class FestivalController {
	
	@Autowired
	private FestivalService festivalService;
	
	public static int pageSIZE = 12; // 한 페이지에 보여줄 레코드 수
	public static int totalRecord = 0; // 가져올 레코드 수 초기값
	public static int totalPage = 1; // 페이지 수 초기값
	
	@RequestMapping("festival")
	public String listFestival(@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM, @RequestParam(value="keyword", defaultValue="") String keyword,Model m) { // 페이지 번호를 받는 매개변수 추가, 기본페이지 1
		
		
		/*
		 * List<FestivalVO> result = festivalService.festivalList();
		 * m.addAttribute("festa", result);
		 */
		
		
		
		totalRecord = festivalService.totalRecord(keyword);
		totalPage = totalRecord / pageSIZE;
		if(totalRecord % pageSIZE != 0){ // 나머지 페이지가 있을 경우 페이지 수 +1
			totalPage++;
		}
		if (pageNUM < 1) {
			pageNUM = 1;
		}
//		totalPage = (int)Math.ceil( totalRecord / (double)pageSIZE ); // 이렇게도 가능
		System.out.println("pageNUM: "+pageNUM); // 페이지번호 잘 받나 확인
		
		// 현재페이지가 1페이지라면 시작레코드 1 ~ 끝레코드 10
		// 현재페이지가 2페이지라면 시작레코드 11 ~ 끝레코드 20
		int start = (pageNUM - 1) * pageSIZE + 1;
		int end = start + pageSIZE - 1;
		System.out.println("시작레코드: "+start);
		System.out.println("끝레코드: "+end);
		System.out.println("-----------------------------");
		
		m.addAttribute("list", festivalService.listFestival(start, end, keyword)); // 상태유지
		m.addAttribute("totalPage", totalPage);
		m.addAttribute("pageNUM", pageNUM);
		if(keyword != null) {
			m.addAttribute("keyword", keyword);
		}
		
		
		return "festival/festival";
	}
	
	// 축제 상세페이지
	@RequestMapping("blog-single")
	public String Festivalde(@RequestParam(value = "fest_code") int fest_code, Model m, HttpSession session) {
		// 제목, 내용 조회
		FestivalVO result = festivalService.selectFestival(fest_code);
		// 이미지 조회
		/* List<String> imgResult = festivalService.selectImage(fest_code); */
			
		m.addAttribute("fest", result);
		/* m.addAttribute("image", imgResult); */
			
		return "festival/blog-single";
	}
	
//	축제 작성 폼
	@RequestMapping("addFestival")
	public String add() {
		/*
		 * List lcat = festivalService.festLcat(); List scat =
		 * festivalService.festScat();
		 */
		
		
		return "festival/addFestival";
	}
	
//	축제 insert
	@RequestMapping("insertFestival")
	public String insertFestival(ImgVO vo,FestivalVO fvo,Model m) {
		
		System.out.println("== insertFestival 등록 ==");
		
		System.out.println(vo);
		System.out.println(fvo);
		System.out.println(fvo.getFest_name());
		System.out.println(fvo.getFest_scatname());
		System.out.println(fvo.getFest_host());
		System.out.println(fvo.getFest_startday());
		System.out.println(fvo.getFest_endday());
		System.out.println(fvo.getFest_content());
		System.out.println("================================");
		
		
	      
	    //글 등록
		System.out.println(vo);
		festivalService.insertFestival(fvo);
		
		return "redirect:festival";
	}
	
	
	
}
