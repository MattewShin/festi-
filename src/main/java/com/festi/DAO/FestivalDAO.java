package com.festi.DAO;

import java.util.List;

import com.festi.letfeVO.FestivalVO;
import com.festi.letfeVO.ImgVO;

public interface FestivalDAO {

	public List festivalList();
	public List selectLcat();
	public List selectScat(String lcat);
	public void insertFestival(FestivalVO vo);
	// 페이징 처리
	public int totalRecord(String keyword);
	// 조회
	public List<FestivalVO> listFestival(int start, int end, String keyword);
	// 마지막 시퀀스 번호
	public String festivalSeq();
	// 이미지 첨부
	public int insertImage(ImgVO vo);
	// 축제 댓글 등록
	public int insertReply(FestivalVO vo);		
	// 축제 댓글 삭제
	public Integer deleteReply(Integer replyCode);
	// 축제 댓글 조회
	public List<FestivalVO> selectReply(String fest_code);	
	// 축제 제목,내용 조회
	public FestivalVO selectFestival(int fest_code);
	// 축제 이미지 조회
	public List selectImage(int fest_code);
	
	public int selectLove(String festcode, String sid);
	
	public int loveInsert(String fest_code, String mem_id);

	public int loveDelete(String fest_code, String mem_id);
}
