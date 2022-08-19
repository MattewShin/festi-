package com.festi.DAO;

import java.util.HashMap;
import java.util.List;

import com.festi.letfeVO.BlogVO;

public interface BlogDAO {

	//블로그 글 쓰는 메소드
	public Integer insertPost(BlogVO bvo) throws Exception;
	
	//블로그 글 삭제하는 메소드
	public void deletePost(String post_code);
	
	//포스트 코드로 글 가져오는 메소드
	public BlogVO selectPostCode(String post_code);
		
	//개인 블로그에서 그 블로그 주인이 쓴 글 보여주는 메소드
	public List<BlogVO> selectPost(String mem_id);
	
	//페이징 처리를 위한 메소드
	public List<BlogVO> selectAllPost(HashMap map);
	public Integer totalRecord(HashMap map);
	
	//블로그 글 자세히 보기를 위한 메소드
	public BlogVO selectBlogDetail(String post_code);
	
	//자세한 블로그 페이지에서 오른쪽에 최근글 3개 보여주는 메소드
	public List<BlogVO> selectBlog3(String post_code);
	
	//해당 글에대한 댓글 셀렉트 하는 메소드
	public List<BlogVO> selectReply(String post_code);
	
	//댓글 전체 카운트 메소드
	public Integer countReply(String post_code);
	
	//댓글 인서트
	public Integer insertReply(BlogVO bvo);
	
	//댓글 삭제
	public Integer deleteReply(Integer replyCode);
	
	//댓글 수정
	public Integer modifyReply(HashMap map);
	
	//블로그 글 검색
	public List<BlogVO> searchPost(HashMap map);
	
	//블로그 글 업데이트
	public Integer updateBlog(BlogVO bvo);
	

}
