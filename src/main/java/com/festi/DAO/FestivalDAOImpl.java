package com.festi.DAO;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.FestivalVO;
import com.festi.letfeVO.ImgVO;

@Repository("festivalDAO")
public class FestivalDAOImpl {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List festivalList() {
		System.out.println("===> Mybatis festivalList() 호출");
		return mybatis.selectList("FestivalDAO.festivalList");
	}
	
	public List festLcat() {
		System.out.println("===> Mybatis festLcat() 호출");
		return mybatis.selectList("FestivalDAO.festLcat");
	}
	
	public List festScat(String lcat) {
		System.out.println("===> Mybatis festScat() 호출");
		return mybatis.selectList("FestivalDAO.festScat", lcat);
	}
	
	public void insertFestival(FestivalVO vo) {
		System.out.println("===> Mybatis insertFestival() 호출");
		mybatis.insert("FestivalDAO.insertFestival",vo);
	}
	
	// 페이징 처리
	public int totalRecord(String keyword) {
		return mybatis.selectOne("FestivalDAO.totalRecord", keyword);
	}
	
	public List<FestivalVO> listFestival(int start, int end, String keyword){ // 시작레코드, 끝레코드 받기
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("start", Integer.toString(start));
		map.put("end", Integer.toString(end));
		map.put("keyword", keyword);
		
		return mybatis.selectList("FestivalDAO.listFestival", map);
	}
	
	//이미지 첨부
	public int insertImage(ImgVO vo) {
		return mybatis.insert("FestivalDAO.insertImage", vo);
	}
	
	// 마지막 시퀀스 번호
	public String festivalSeq() {
		return mybatis.selectOne("FestivalDAO.festSeq");
	}
	// 축제 댓글 등록
	public int insertReply(FestivalVO vo) {
		System.out.println("==> FestivalMapper insertReply 호출");
		return mybatis.insert("FestivalDAO.insertReply", vo);
	}
	// 축제 댓글 삭제
	public Integer deleteReply(Integer replyCode) {
		System.out.println("==> FestivalMapper deleteReply 호출");
		return mybatis.delete("BlogMapper.deleteReply", replyCode);
	}
	// 축제 댓글 수정
	public Integer modifyReply(HashMap map) {
		System.out.println("==> FestivalMapper modifyReply 호출");
		return mybatis.update("BlogMapper.updateReply", map);
	}	
	
	// 댓글 작성자 이름 조회
	public String commentName(String string) {
		System.out.println("==> FestivalMapper commentName 호출");
		return mybatis.selectOne("FestivalDAO.commentName", string);
	}
	
	// 축제 댓글 조회
	public List<FestivalVO> selectReply(String fest_code){
		System.out.println("==> FestivalMapper selectReply 호출");
		return mybatis.selectList("FestivalDAO.selectReply", fest_code);
	}
	// 축제 제목,내용 조회
	public FestivalVO selectFestival(int fest_code) {
		System.out.println("==> FestivalMapper selectFestival 호출");
		return mybatis.selectOne("FestivalDAO.selectFestival", fest_code);
			
	}
	// 축제 이미지 조회
	public List selectImage(int fest_code) {
		System.out.println("==> FestivalMapper selectImage 호출");
		return mybatis.selectList("FestivalDAO.selectImage", fest_code);
				
	}

	public int selectLove(String festcode, String sid) {
		System.out.println("==> FestivalMapper selectLove 호출");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("fest_code", festcode);
		map.put("mem_id", sid);
		
		return mybatis.selectOne("FestivalDAO.selectLove", map);
	}

	public int loveInsert(String fest_code, String mem_id) {
		System.out.println("==> FestivalMapper loveInsert 호출");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("fest_code", fest_code);
		map.put("mem_id", mem_id);
		
		return mybatis.insert("FestivalDAO.loveInsert", map);
	}

	public int loveDelete(String fest_code, String mem_id) {
		System.out.println("==> FestivalMapper loveDelete 호출");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("fest_code", fest_code);
		map.put("mem_id", mem_id);
		
		return mybatis.delete("FestivalDAO.loveDelete", map);
	}
}
