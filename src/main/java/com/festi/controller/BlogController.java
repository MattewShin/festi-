package com.festi.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.festi.letfeVO.BlogVO;
import com.festi.service.BlogService;

@Controller
public class BlogController {

	// 페이징 처리를 위한 변수
	public int pageSize = 12; // 한 페이지당 보여줄 레코드 수
	public int totalRecord = 0; // 전체 레코드 수 초기값 설정
	public int totalPage = 1; // 페이지 수 초기값

	@Autowired
	private BlogService blogService;

	// 블로그 리스트 여는 메소드
	@RequestMapping("blog")
	public String openBlog(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum,
			@RequestParam(value = "category", defaultValue = "") String category,
			@RequestParam(value = "keyword", defaultValue = "") String keyword, Model m) {
		System.out.println("1번" + category);
		System.out.println("2번" + keyword);
		HashMap<String, String> map = new HashMap<String, String>();
		if (keyword != "" && category != "") {
			map.put("keyword", keyword);
			if (category.equals("mem_id")) {
				map.put("category", "m." + category);
			} else if (category.equals("post_title")) {
				map.put("category", "p." + category);
			} else if (category.equals("post_content")) {
				map.put("category", "p." + category);
			} else if (category.equals("nope")) {
				map.put("category", "");
			}
		}
		// 페이징 처리-----------------------------------------------------
		totalRecord = blogService.totalRecord(map); // 17
		totalPage = totalRecord / pageSize; // 17/12 1...5
		if (totalRecord % pageSize != 0) {
			totalPage++;
		}

		// 시작과 끝 레코드 개수 정하기
		// 1페이지면 1~12
		// 2페이지면 13~24
		int start = (pageNum - 1) * pageSize + 1;
		int end = start + pageSize - 1;

		map.put("start", String.valueOf(start));
		map.put("end", String.valueOf(end));
		
		List<BlogVO> allList = blogService.selectAllPost(map);
		m.addAttribute("allList", allList);
		m.addAttribute("totalPage", totalPage);
		m.addAttribute("keyword", keyword);
		m.addAttribute("category", category);
		
		
		return "blog/blogList";
	}

	// 블로그 글 상세보기 페이지 여는 메소드
	@RequestMapping("gotoDetail")
	public String openDetail(@RequestParam(value = "post_code") String post_code, Model m) {

		// 블로그 글 상세내용 셀렉트----------------------------------------
		BlogVO bVO = blogService.selectBlogDetail(post_code);
		List<BlogVO> blogList3 = blogService.selectBlog3(post_code);
		m.addAttribute("blogDetail", bVO);
		m.addAttribute("blogList3", blogList3);
		

		// 댓글 리스트 셀렉트---------------------------------------------
		// List<BlogVO> replyList = blogService.selectReply(post_code);
		// m.addAttribute("replyList", replyList);

		 //댓글 갯수 셀렉트
		Integer countReply = blogService.countReply(post_code);
		m.addAttribute("countReply", countReply);

		return "blog/blogDetail";
	}

	// 개인 블로그 여는 메소드
	@RequestMapping("perBlog")
	public String openPerBlog(Model m, @RequestParam(value = "mem_id") String mem_id) {
		List<BlogVO> blogList = blogService.selectPost(mem_id);
		String profile = blogService.selectProfile(mem_id);
		m.addAttribute("blogList", blogList);
		m.addAttribute("profile", profile);

		return "blog/perBlog";
	}
	
	//로그인 한 아이디에 맞춰 블로그 열어주는 메소드
	@RequestMapping("myBlog")
	public String openMyBlog(Model m, HttpSession session) {
		List<BlogVO> blogList = blogService.selectPost((String)session.getAttribute("mem_id"));
		m.addAttribute("blogList", blogList);
		
		return "blog/perBlog";
	}

	// 블로그 글 쓰는 페이지 여는 메소드
	@RequestMapping("writeBlog")
	public String openWriteBlog() {

		return "blog/writeBlog";
	}

	// 블로그 글 인서트 후 개인블로그 페이지 리다이렉트
	@RequestMapping("blogInsert")
	public String blogInsert(BlogVO bvo, HttpSession session) throws Exception {
		System.out.println(session.getAttribute("mem_id"));
		String mem_id = (String) session.getAttribute("mem_id");
		bvo.setMem_id(mem_id);

		System.out.println("블로그인서트 눌림");

		blogService.insertPost(bvo);

		return "redirect:blog";
	}

	@RequestMapping("deletePost")
	public String deletePost(@RequestParam(value = "post_code") String post_code) {
		blogService.deletePost(post_code);

		return "redirect:blog";
	}

	@RequestMapping("modifyPost")
	public String modifyPost(@RequestParam(value = "post_code") String post_code, Model m) {

		BlogVO bvo = blogService.selectPostCode(post_code);
		m.addAttribute("post", bvo);

		return "blog/modifyBlog";
	}

	/*
	 * //댓글 인서트 하는 메소드
	 * 
	 * @RequestMapping("replyInsert") public String
	 * replyInsert(@RequestParam(value="post_code") String post_code) {
	 * 
	 * return "redirect:"; }
	 */
	
	@RequestMapping("blogUpdate")
	public String blogUpdate(BlogVO bvo) {
		System.out.println(bvo.getPostkind_name());
		System.out.println(bvo.getPost_code());
		blogService.updateBlog(bvo);
		
		return "redirect:myBlog";
	}

}
