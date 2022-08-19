package com.festi.service;

import java.util.List;
import java.util.Map;


import com.festi.letfeVO.ImgVO;
import com.festi.letfeVO.LetfeVO;
import com.festi.letfeVO.Search;


//인터페이스로 바꿈-김민석
public interface LetfeService {

	//1번 페이지 인서트 
	void insertLetfe1(LetfeVO vo);
	
	//2번 페이지 인서트-김민석
	void insertLetfe(LetfeVO vo);
	
	//3번페이지 인서트 파일 - 김민석
	void saveLetfe(ImgVO vo);
	
	//김민석 렛페 등록 3페이지 인서트
	void updateLetfe(LetfeVO vo);





	//김민석 자동완성
	List<Map<String, Object>>autocomplete(Map<String, Object> paramMap) throws Exception;
	
	
	//김민석 자동완성 로케이션
	List<Map<String, Object>>autocompleteLocation(Map<String, Object> paramMap) throws Exception;
	
	
	//김민석 자동완성 로케이션
	List<Map<String, Object>>autocompletesmallcat(Map<String, Object> paramMap) throws Exception;
	
	//김민석 자동완성 로케이션
	List<Map<String, Object>>autocompleteStart(Map<String, Object> paramMap) throws Exception;	
	
	
	

	
												//*****상세페이지 이동	
	// 신영범 렛페 상세
	 List<LetfeVO> letfeinfo(int lf_code);
		
	// 신영범 렛페 이미지
	 List<ImgVO> letfeinfoimg(int img_code);
												//*****상세페이지 이동	
	
	
	
	


	//-----------------------------------------------------------------------------
	//김민석 페이징 
	List<LetfeVO> listBoard(int start, int end, String lf_name,String lf_sim_addr,String lf_end,String lf_start);//시작 레코드 끝 레코드
		
	//김민석 렛페 리스트 메인페이지 뽑기
	List<ImgVO> getImgList(String lf_name,String lf_sim_addr,String lf_end,String lf_start);
	
	//김민석 렛페 리스트 메인페이지 뽑기2
	List<LetfeVO> getLefeList(String lf_name,String lf_sim_addr,String lf_end,String lf_start);
	
	//김민석 총 레코드 갯수
		int totalRecord(String lf_name,String lf_sim_addr,String lf_end,String lf_start);

		
	//조회수
	int clickLfCnt(int lf_code) throws Exception;

	//김민석 렛페 상세페이지 파티 참여 TABLE: LETFE 
	int insertPartyMember(int lf_code) throws Exception;
	
	int selectPartyMember(int lf_code);

	//김민석 참여 테이블 인서트
	void saveLetfeParty(int lf_code);

	void insertPartyTable(LetfeVO vo);

	int partyCheck(LetfeVO vo);
	
	int max(LetfeVO vo);
	
	// 신영범 렛페 카운트다운
	LetfeVO years(LetfeVO vo);

	LetfeVO months(LetfeVO vo);

	LetfeVO days(LetfeVO vo);


}
