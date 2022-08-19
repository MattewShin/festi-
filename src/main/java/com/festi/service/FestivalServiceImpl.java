package com.festi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.FestivalDAOImpl;
import com.festi.letfeVO.FestivalVO;
import com.festi.letfeVO.ImgVO;

@Service("festivalService")
public class FestivalServiceImpl implements FestivalService{

	@Autowired
	private FestivalDAOImpl festivalDAO;
	
	public List festivalList() {
		return festivalDAO.festivalList();
	}

	public List festLcat() {
		return festivalDAO.festLcat();
	}

	public List festScat(String lcat) {
		return festivalDAO.festScat(lcat);
	}

	public void insertFestival(FestivalVO vo) {
		festivalDAO.insertFestival(vo);
	}

	public int totalRecord(String keyword) {
		
		return festivalDAO.totalRecord(keyword);
	}
	
	public Object listFestival(int start, int end, String keyword) {
		return festivalDAO.listFestival(start, end, keyword);
	}
	
	public String festivalSeq() {
		return festivalDAO.festivalSeq();
	}
	
	public int insertImage(ImgVO vo) {
		return festivalDAO.insertImage(vo);
	}
	// 축제 댓글 등록
	public int insertReply(FestivalVO vo) {
		return festivalDAO.insertReply(vo);
			}
	
	// 축제 댓글 삭제	
	public Integer deleteReply(Integer replyCode) {
		return festivalDAO.deleteReply(replyCode);
	}
	
	// 축제 댓글 등록
	public Integer modifyReply(HashMap map) {
		return festivalDAO.modifyReply(map);
	}

	// 댓글 작성자 이름 조회
	public String commentName(String string) {
		return festivalDAO.commentName(string);
	}

	// 축제 댓글 조회
	public List<FestivalVO> selectReply(String fest_code){
		return festivalDAO.selectReply(fest_code);
	}
	
	// 축제 제목,내용 조회
	public FestivalVO selectFestival(int fest_code) {
		return festivalDAO.selectFestival(fest_code);
	}
		
	// 축제 이미지 조회
	public List selectImage(int fest_code) {
		return festivalDAO.selectImage(fest_code);
	}

	@Override
	public int selectLove(String festcode, String sid) {
		return festivalDAO.selectLove(festcode, sid);
	}

	@Override
	public int loveInsert(String fest_code, String mem_id) {
		return festivalDAO.loveInsert(fest_code, mem_id);
	}

	@Override
	public int loveDelete(String fest_code, String mem_id) {
		return festivalDAO.loveDelete(fest_code, mem_id);
	}
}
