package com.festi.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.festi.letfeVO.FestivalVO;
import com.festi.service.FestivalService;

@RestController
public class FestivalAjaxController {

	@Autowired
	private FestivalService festivalService;

	
	// ajax로 댓글 해당글 댓글 셀렉트
		@GetMapping("blog-single-Replyselect")
		public List<FestivalVO> selectReply(FestivalVO vo) {
			List<FestivalVO> replyList = festivalService.selectReply(vo.getFest_code());

			for (FestivalVO list : replyList) {
				String listId = list.getMem_id();
				String sessionId = vo.getMem_id();
				if (listId.equals(sessionId)) {
					list.setSame("ok");
				} else {
					list.setSame("no");
				}
			}

			return replyList;
		}
	
	
	// ajax로 댓글 인서트

	@PostMapping("blog-single-Replyinsert")
	public String insertReply(FestivalVO vo) throws Exception {

		System.out.println("<>>>>>>>>>>>>>sadadsa>>>>>>>>>>>>>" + vo.getMem_id());
		String mem_code = festivalService.commentName(vo.getMem_id());
		vo.setMem_code(Integer.parseInt(mem_code));
		festivalService.insertReply(vo);

		return "success";
	}

	//ajax로 댓글 삭제
		@DeleteMapping(value="blog-single-deleteReply/{replyCode}")
		public String deleteReply(@PathVariable("replyCode") int replyCode) {
			
			String result = String.valueOf(festivalService.deleteReply(replyCode));
			
			return result;
		}
		
		@PutMapping(value="blog-single-modifyReply/{replyCode}")
		public String modifyReply(@RequestBody String afterReply, @PathVariable("replyCode") int replyCode) {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("reply_code", String.valueOf(replyCode));
			map.put("reply_content", afterReply);
			
			
			String result = String.valueOf(festivalService.modifyReply(map));
			
			return result;
		}
		
		// 축제 글쓰기(카테고리大)
		
		@ResponseBody
		@RequestMapping("lcat")
		public List<String> largeCategory() {
			List<String> list = festivalService.festLcat();
			
			return list;
		}
		
		// 축제 글쓰기(카테고리小)
		
		@ResponseBody
		@GetMapping("scat")
		public List<String> smallCategory(HttpServletRequest http) { 
			String lcat = http.getParameter("lcat");
			System.out.println(lcat);
			List<String> list = festivalService.festScat(lcat);
			
			return list;
		}
		
		//좋아요 ajax
		@ResponseBody
		@RequestMapping("love")
		public String loveInDel(HttpServletRequest http) {
			
			String festcode = (String)http.getParameter("festcode");
			System.out.println(festcode);
			String sid = (String)http.getParameter("sid");
			
			
			
			int num = festivalService.selectLove(festcode, sid);
			
			System.out.println(num);
			if(num == 0) {
				festivalService.loveInsert(festcode, sid);
				return "insert";
			}else {
				festivalService.loveDelete(festcode, sid);
				return "delete";
			}
		}
		
		//좋아요 찾기 ajax
		@ResponseBody
		@RequestMapping("lovefind")
		public String loveSelect(HttpServletRequest http) {
			
			String sid = (String)http.getParameter("sid");
			
			
			return "list";
		}
	}