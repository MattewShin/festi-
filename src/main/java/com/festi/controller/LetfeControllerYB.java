package com.festi.controller;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.festi.letfeVO.Criteria;
import com.festi.letfeVO.ImgVO;
import com.festi.letfeVO.LetfeVO;
import com.festi.letfeVO.Search;
import com.festi.service.LetfeService;

//*************************민석

@Controller
public class LetfeControllerYB {
//김민석 수정 0802
	
	@Autowired
	private LetfeService letfeService;

	public static int pageSIZE =8; //한페이지에 보여줄 레코드 수
	public static int totalRecord = 0;// 가져올 레코드 수 초기값
	public static int totalPage =1;//페이지 수 초기값


	//등록1
	@RequestMapping("letfe-reg1")
	public String bb() {
		return "letfe/letfe-reg1";
	}
	
	//등록 1 -> 2 (영범) 
	@RequestMapping("saveReg")
	public String insertLetfe1(LetfeVO vo, HttpServletRequest request) {
		
		System.out.println(request.getParameter("mem_id"));
		System.out.println(request.getParameter("lf_scatname"));
		System.out.println(request.getParameter("lf_party_max"));
		  
		  letfeService.insertLetfe1(vo); 
	
		  
		  System.out.println("letfeController ===>"+vo);
		  
		  return "letfe/letfe-reg2";
	}
	
	//등록2
	@RequestMapping("example")
	public String cc() {
		return "letfe/letfe-reg2";
	}
	
	//등록 2
	@RequestMapping("saveLefe")
	public String insertRegistLefe(LetfeVO vo, HttpSession session)  throws IOException{

		letfeService.insertLetfe(vo);
		System.out.println("insertRegistLefe=====>" + vo); 
		return "letfe/letfe-reg3";
	}
	
	

	
	
	
/*	// 렛페 페이지 오픈
	@RequestMapping("letfe")
	public String aa() {
		return "letfe/blog"; 
	}
	*/
	
	//렛페 첫페이지 리스트 오픈 위에 있는게 매핑 되어있어서 저거 없애고 해야됨
/*	 @RequestMapping("letfe") 
	 public String getLefeList(@RequestParam(value="pageNUM",defaultValue = "1")int pageNUM,
			 Model m
			)throws Exception{ 
				 				 
		 // 페이징 처리
		totalRecord = letfeService.totalRecord();
		totalPage = totalRecord / pageSIZE;
		if(totalRecord % pageSIZE != 0) {//나머지 페이지가 있을 경우 페이지 수 +1
			totalPage++;
		}
		 
		int start = (pageNUM -1)*pageSIZE +1;
		int end = start + pageSIZE -1 ;
				
				// 리스트 db 값뽑아오기 
				List<ImgVO> ivo = letfeService.getImgList();
				List<LetfeVO> lvo = letfeService.getLefeList();				

				
				m.addAttribute("list", ivo);
				m.addAttribute("list", lvo);		
		
				//모델and뷰로 받지 말고 그냥 m으로 받아보자 ***문제될수 있음
				m.addAttribute("list", letfeService.listBoard(start, end));
				m.addAttribute("totalPage", totalPage);
			
				return "letfe/letfeMain";//블로그는 mav를 리턴하라고 나와있찌만 동원이도 이렇게 한듯
	 }*/

		//렛페 첫페이지 리스트 오픈 위에 있는게 매핑 되어있어서 저거 없애고 해야됨
	 @RequestMapping("letfe") 
	 public String getLefeList1(@RequestParam(value="pageNUM",defaultValue = "1")int pageNUM,
			 HttpServletRequest http,
			 Model m
			)throws Exception{ 
				 			
		String lf_name = http.getParameter("lf_name");
		
		String lf_sim_addr = http.getParameter("lf_sim_addr");
		
		String lf_end = http.getParameter("lf_end");
		
		String lf_start = http.getParameter("lf_start");

		 // 페이징 처리
		totalRecord = letfeService.totalRecord(lf_name,lf_sim_addr,lf_end,lf_start);
		totalPage = totalRecord / pageSIZE;
		if(totalRecord % pageSIZE != 0) {//나머지 페이지가 있을 경우 페이지 수 +1
			totalPage++;
		}
		 
		int start = (pageNUM -1)*pageSIZE +1;
		int end = start + pageSIZE -1 ;
				
				// 리스트 db 값뽑아오기 
				List<ImgVO> ivo = letfeService.getImgList(lf_name,lf_sim_addr,lf_end,lf_start);
				List<LetfeVO> lvo = letfeService.getLefeList(lf_name,lf_sim_addr,lf_end,lf_start);				

				
				m.addAttribute("list", ivo);
				m.addAttribute("list", lvo);		
		
				//모델and뷰로 받지 말고 그냥 m으로 받아보자 ***문제될수 있음
				m.addAttribute("list", letfeService.listBoard(start, end,lf_name,lf_sim_addr,lf_end,lf_start));
				m.addAttribute("totalPage", totalPage);
			
				return "letfe/letfeMain";//블로그는 mav를 리턴하라고 나와있찌만 동원이도 이렇게 한듯
	 }
	 
	 
	 
	 
	 
//*************************************자동완성 기능 들	 
	
	 	//메인 자동완성기능 (1)
	 	@RequestMapping(value = "lf_name")//안되서 수정==> input2.js도 수정해줘야됨
	 	public @ResponseBody 
	 	Map<String, Object> autocomplete
	 	(@RequestParam Map<String, Object> paramMap) throws Exception{

	 		List<Map<String, Object>> resultList = letfeService.autocomplete(paramMap);
	 		paramMap.put("resultList", resultList);

	 		return paramMap;
	 	}
	 	
	 	//메인 자동완성기능 (2)
	 	@RequestMapping(value = "autocompleteLocation")
	 	@ResponseBody 
	 	public Map<String, Object> autocompleteLocation
	 	(@RequestParam Map<String, Object> paramMap) throws Exception{

	 		List<Map<String, Object>> resultList = letfeService.autocompleteLocation(paramMap);
	 		paramMap.put("resultList", resultList);

	 		return paramMap;
	 	}
	 
	 	//메인 자동완성기능 (3)
	 	@RequestMapping(value = "autocompletesmallcat")
	 	@ResponseBody 
	 	public Map<String, Object> autocompletesmallcat
	 	(@RequestParam Map<String, Object> paramMap) throws Exception{

	 		List<Map<String, Object>> resultList = letfeService.autocompletesmallcat(paramMap);
	 		paramMap.put("resultList", resultList);

	 		return paramMap;
	 	}
	 	
	 	//메인 자동완성기능 (3)
	 	@RequestMapping(value = "autocompleteStart")
	 	@ResponseBody 
	 	public Map<String, Object> autocompleteStart
	 	(@RequestParam Map<String, Object> paramMap) throws Exception{

	 		List<Map<String, Object>> resultList = letfeService.autocompleteStart(paramMap);
	 		paramMap.put("resultList", resultList);

	 		return paramMap;
	 	}

	 	
//************************************************************************영범이형꺼 추가 통합

	 	
	 
		//등록 3
		@RequestMapping("savelefe2update")
		public String saveLetfe(ImgVO vo,LetfeVO lvo,Model m ,HttpServletRequest http) throws IOException{
			
			String lf_name = http.getParameter("lf_name");
			String lf_sim_addr = http.getParameter("lf_sim_addr");
			String lf_end = http.getParameter("lf_end");
			String lf_start = http.getParameter("lf_start");
			
			//**추가 파티테이블에는 넣었고 여기에다가 mem_code를 넣어야되니
			
			
		
			
			//int lf_code = Integer.parseInt(http.getParameter("lf_code"));
			
			letfeService.saveLetfe(vo);
			letfeService.updateLetfe(lvo);
			
			  
			  
			System.out.println("saveLetfe===================>" + vo); 
			
			List<ImgVO> ivo = letfeService.getImgList(lf_name,lf_sim_addr,lf_end,lf_start);
			List<LetfeVO> llvo = letfeService.getLefeList(lf_name,lf_sim_addr,lf_end,lf_start);
			m.addAttribute("ImgList", ivo);
			m.addAttribute("lefeList", llvo);

			//return "letfe"; 하면 안됨 
			return "redirect: letfe";
		}
		
		

		
		
		
	 // 렛페 상세 정보
		@GetMapping
		@RequestMapping(value = "blog-single-letfeInfo", method = RequestMethod.GET)
		public String letfeinfo1(Model m,HttpServletRequest http, LetfeVO vo) throws Exception {
		
			int lf_code = Integer.parseInt(http.getParameter("lf_code"));
			int img_code =Integer.parseInt(http.getParameter("img_code"));
			LetfeVO years = letfeService.years(vo);
			LetfeVO months = letfeService.months(vo);
			LetfeVO days = letfeService.days(vo);
			//조회수 증가
			letfeService.clickLfCnt(lf_code);
			
			//파티 참여 번호 증가
			//letfeService.insertPartyMember(lf_code);
			
			List<LetfeVO> listLetfevo = letfeService.letfeinfo(lf_code);
			
			List<ImgVO> listImgvo = letfeService.letfeinfoimg(img_code);
			
			m.addAttribute("letfe",listLetfevo);
			m.addAttribute("img",listImgvo);
			m.addAttribute("years", years.getYears());
			m.addAttribute("months", months.getMonths());
			m.addAttribute("days", days.getDays());
			/*
			 * System.out.println("Controller"); System.out.println("=========");
			 * System.out.println(result); System.out.println("=========");
			 *///blog-single-letfeInfo

			return "letfe/blog-single-letfeInfo";
		}
		
		
		@ResponseBody
		@GetMapping(value="insertParty")		
		public int insertParty(HttpServletRequest http) throws Exception {
			
			int lf_code = Integer.parseInt(http.getParameter("lf_code"));
			
			letfeService.insertPartyMember(lf_code);
			int lf_party = letfeService.selectPartyMember(lf_code);
			
			return lf_party;
			
		}
		
		@ResponseBody
		@GetMapping(value="insertPartyTable")
		public String insertPartyTable(LetfeVO vo, HttpServletRequest http) throws Exception{
			
			int lf_code = Integer.parseInt(http.getParameter("lf_code"));
			String mem_id = http.getParameter("mem_id");
			
			vo.setLf_code(lf_code);
			vo.setMem_id(mem_id);
			
			letfeService.insertPartyTable(vo);
			
			
			return null;
		}
		
		
		@ResponseBody
		@GetMapping(value="partyCheck")
		public int partyCheck(LetfeVO vo, HttpServletRequest http) throws Exception{
			
			int lf_code = Integer.parseInt(http.getParameter("lf_code"));
			String mem_id = http.getParameter("mem_id");
			vo.setLf_code(lf_code);
			vo.setMem_id(mem_id);
			
			int result = letfeService.partyCheck(vo);
			
			return result;
			
		}
		
		@ResponseBody
		@GetMapping(value="max")
		public int max(LetfeVO vo, HttpServletRequest http) throws Exception{
			
			String mem_id = http.getParameter("mem_id");
			vo.setMem_id(mem_id);
			
			int result = letfeService.max(vo);
			
			return result;
			
		}
		
		@ResponseBody
		@GetMapping(value="master_putPt")
		public String master_putPt(LetfeVO vo, HttpServletRequest http) throws Exception{
			int lf_code = Integer.parseInt(http.getParameter("lf_code"));
			String mem_id = http.getParameter("mem_id");
			
			vo.setLf_code(lf_code);
			vo.setMem_id(mem_id);
			
			letfeService.insertPartyTable(vo);
			
			return null;
		}
		
		
		
		
		@ResponseBody
		@RequestMapping(value = "/file-upload", method = RequestMethod.POST)
		public String fileUpload(
				@RequestParam("article_file") List<MultipartFile> multipartFile
				, HttpServletRequest request) {
			
			String strResult = "{ \"result\":\"FAIL\" }";
			String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
			String fileRoot;
			try {
				// 파일이 있을때 탄다.
				if(multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {
					
					for(MultipartFile file:multipartFile) {
						fileRoot = contextRoot + "resources/upload/";
						System.out.println(fileRoot);
						
						String originalFileName = file.getOriginalFilename();	//오리지날 파일명
						String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
						String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
						
						File targetFile = new File(fileRoot + savedFileName);	
						try {
							InputStream fileStream = file.getInputStream();
							FileUtils.copyInputStreamToFile(fileStream, targetFile); //파일 저장
							
						} catch (Exception e) {
							//파일삭제
							FileUtils.deleteQuietly(targetFile);	//저장된 현재 파일 삭제
							e.printStackTrace();
							break;
						}
					}
					strResult = "{ \"result\":\"OK\" }";
				}
				// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
				else
					strResult = "{ \"result\":\"OK\" }";
			}catch(Exception e){
				e.printStackTrace();
			}
			return strResult;
		}

//***********************************************************************

}
