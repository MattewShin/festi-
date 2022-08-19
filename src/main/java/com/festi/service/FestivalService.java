package com.festi.service;

import java.util.HashMap;
import java.util.List;

import com.festi.letfeVO.FestivalVO;
import com.festi.letfeVO.ImgVO;
public interface FestivalService {

//	축제 리스트
	List festivalList();
//	카테고리(L)
	List festLcat();
//	카테고리(S)
	List festScat(String lcat);
//	축제 insert
	void insertFestival(FestivalVO vo);
//	축제 총 게시물 수
	int totalRecord(String keyword);
	Object listFestival(int start, int end, String keyword);
	// 마지막 시퀀스 번호
	String festivalSeq();
	int insertImage(ImgVO vo);
	// 축제 댓글 등록
	public int insertReply(FestivalVO vo);
		
	// 축제 댓글 삭제
	public Integer deleteReply(Integer replyCode);
			
	// 축제 댓글 수정
	public Integer modifyReply(HashMap map);
		
	// 댓글 작성자 이름 조회
	public String commentName(String string);
		
	// 축제 댓글 조회
	public List<FestivalVO> selectReply(String fest_code);
	// 축제 제목,내용 조회
	public FestivalVO selectFestival(int fest_code);
		
	// 축제 이미지 조회
	public List selectImage(int fest_code);
	
	// 좋아요 조회
	public int selectLove(String festcode, String sid);
	
	public int loveInsert(String fest_code,String mem_id);
	
	public int loveDelete(String fest_code, String mem_id);
}