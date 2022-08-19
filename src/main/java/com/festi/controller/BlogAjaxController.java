package com.festi.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.festi.letfeVO.BlogVO;
import com.festi.service.BlogService;

@RestController
public class BlogAjaxController {

	@Autowired
	private BlogService blogService;
	
	//ajax로 댓글 해당글 댓글 셀렉트
	@GetMapping("selectReply")
	public List<BlogVO> selectReply(BlogVO bvo) {
		System.out.println(bvo.getMem_id());
		List<BlogVO> replyList = blogService.selectReply(bvo.getPost_code());
		
		for(BlogVO list : replyList) {
			String listId = list.getMem_id();
			String sessionId = bvo.getMem_id();
			if(listId.equals(sessionId)) {
				list.setSame("ok");
			}else
			{
				list.setSame("no");
			}
		}
		
		return replyList;
	}
	
	//ajax로 댓글 인서트
	@PostMapping(value="insertReply")
	public String replyInsert(BlogVO bvo) {
		System.out.println("ajax 인서트 할때 뽑히는 아디"+bvo.getMem_id());
		int result = blogService.insertReply(bvo);
		if(result == 1) {
			return "ok";
		}
		else return "bibip";
	}
	
	//ajax로 댓글 삭제
	@DeleteMapping(value="deleteReply/{replyCode}")
	public String deleteReply(@PathVariable("replyCode") int replyCode) {
		
		String result = String.valueOf(blogService.deleteReply(replyCode));
		
		return result;
	}
	
	//ajax로 댓글 수정하는 메소드
	@PutMapping(value="modifyReply/{replyCode}")
	public String modifyReply(@RequestBody String afterReply, @PathVariable("replyCode") int replyCode) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("reply_code", String.valueOf(replyCode));
		map.put("reply_content", afterReply);
		
		
		String result = String.valueOf(blogService.modifyReply(map));
		
		return result;
	}
	
	//ajax로 검색어 받아와서 해당 검색으로 검색해주는
//	@PostMapping(value="searchPost")
//	public List<BlogVO> searchPost(@RequestParam("keyword") String keyword, @RequestParam("category") String category) {
//		
//		HashMap<String, String> map = new HashMap<String, String>();
//		map.put("keyword", keyword);
//		if(!category.equals("nope")) {
//		map.put("category", category);
//		}
//		List<BlogVO> bList = blogService.searchPost(map);
//		
//		return bList;
//	}
}
