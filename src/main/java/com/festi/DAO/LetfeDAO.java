package com.festi.DAO;


import java.util.List;
import java.util.Map;

import com.festi.letfeVO.Criteria;
import com.festi.letfeVO.ImgVO;
import com.festi.letfeVO.LetfeVO;
import com.festi.letfeVO.PageVO;
import com.festi.letfeVO.Search;

public interface LetfeDAO {
	
	//신영범 렛페 등록 1페이지 인서트 :: 
	public void insertLetfe1(LetfeVO vo);
	
	//김민석 렛페 등록 2페이지 인서트
	public void insertLetfe(LetfeVO vo);
	
	//김민석 렛페 등록 3페이지 파일 인서트
	public void saveLetfe(ImgVO vo);
	
	//김민석 렛페 등록 3페이지 인서트
	public void updateLetfe(LetfeVO vo);

	//자동완성(1)
	public List<Map<String, Object>> autocomplete(Map<String, Object> paramMap) throws Exception;
	//자동완성(2)	
	public List<Map<String, Object>> autocompleteLocation(Map<String, Object> paramMap) throws Exception;
	//자동완성(3)
	public List<Map<String, Object>> autocompletesmallcat(Map<String, Object> paramMap) throws Exception;
	
	public List<Map<String, Object>> autocompleteStart(Map<String, Object> paramMap) throws Exception;
	
	
	
	
											//렛페 상세페이지 -----
	// 신영범 렛페 상세
	public List<LetfeVO> letfeinfo(int lf_code);
	
	// 신영범 렛페 상세 이미지
	public List<ImgVO> letfeinfoimg(int img_code);
	

	
	
	
	
	
	//김민석 렛페 리스트 메인페이지 뽑기
	public List<ImgVO> getImgList(String lf_name,String lf_sim_addr,String lf_end,String lf_start);
		
	//김민석 렛페 리스트 메인페이지 뽑기2
	public List<LetfeVO> getLefeList(String lf_name,String lf_sim_addr,String lf_end,String lf_start);
	
	public int totalRecord(String lf_name,String lf_sim_addr,String lf_end,String lf_start);
	
	public List<LetfeVO> listBoard(int start, int end,String lf_name,String lf_sim_addr,String lf_end,String lf_start);//시작 레코드 끝 레코드



	//조회수
	public int clickLfCnt(int lf_code) throws Exception;
	
	//김민석 렛페 상세페이지 파티 참여 TABLE: LETFE 
	public int insertPartyMember(int lf_code) throws Exception;

	
	public int selectPartyMember(int lf_code);
	
	
	//김민석 렛페 등록 ->파티 등록 (고민중)
	public void saveLetfeParty(int lf_code);
	
	
	
	public void insertPartyTable(LetfeVO vo);
	
	public int partyCheck(LetfeVO vo);
	
	public int max(LetfeVO vo);
	
	// 신영범 렛페 카운트다운	
	public LetfeVO years(LetfeVO vo);

	public LetfeVO months(LetfeVO vo);

	public LetfeVO days(LetfeVO vo);
	
}//다오 end


