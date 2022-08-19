package com.festi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.festi.letfeVO.IndexVO;
import com.festi.service.IndexService;

@Controller
public class IndexController {

	@Autowired
	private IndexService indexService;
	
	@RequestMapping("index")
	public String showLetfe (IndexVO vo, Model m) {
		
		// 2. 인기 축제
		List<IndexVO> top = indexService.topfest(vo);
		m.addAttribute("top", top);
		
		// 3. 축제 정보
		List<IndexVO> cate = indexService.festCate(vo);
		List<IndexVO> finfo = indexService.festInfo(vo);
		m.addAttribute("cate", cate);
		m.addAttribute("fest", finfo);		
		
		// 4. 진행 중인 렛페		
		List<IndexVO> info = indexService.letfeInfo(vo);
		List<IndexVO> img = indexService.letfeImg(vo);
		m.addAttribute("letfe",info);
		m.addAttribute("img", img);
		
		// 5. 에온 리스트
		List<IndexVO> aon = indexService.aonList(vo);
		m.addAttribute("aon",aon);
		
		return "./index";
		
	}	
}
