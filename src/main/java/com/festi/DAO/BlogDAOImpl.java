package com.festi.DAO;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.festi.exception.BlogTransEx;
import com.festi.letfeVO.BlogVO;

@Repository("blogDAO")
public class BlogDAOImpl implements BlogDAO {

	
	@Autowired
	private SqlSessionTemplate sst;

	//이미지와 블로그 글 같이 들어가도록 트랜잭션 처리...무조건 같이 들어가도록 구현....
	@Transactional(rollbackFor = BlogTransEx.class)
	public Integer insertPost(BlogVO bvo) throws BlogTransEx {
		Integer resultPost = sst.insert("BlogMapper.insertBlog", bvo);
		if (resultPost == 0)
			throw new BlogTransEx();

		Integer resultImg = sst.insert("BlogMapper.insertBlogImg", bvo);
		if (resultImg == 0)
			throw new BlogTransEx();

		return resultPost + resultImg;
	}

	@Override
	public void deletePost(String post_code) {
		// TODO Auto-generated method stub
		sst.delete("BlogMapper.deletePost", post_code);
		sst.delete("BlogMapper.deletePostImg", post_code);
		
	}
	
	@Override
	public BlogVO selectPostCode(String post_code) {
		// TODO Auto-generated method stub
		return sst.selectOne("BlogMapper.selectPostCode", post_code);
	}
	
	//특정 사람이 쓴 블로그 글 가져오는 메소드
	@Override
	public List<BlogVO> selectPost(String mem_id) {
		// TODO Auto-generated method stub
		return sst.selectList("BlogMapper.selectPost", mem_id);
	}

	//모든 블로그 글을 가져오는 메소드
	@Override
	public List<BlogVO> selectAllPost(HashMap map) {
		// TODO Auto-generated method stub

		
		return sst.selectList("BlogMapper.selectAllPost", map);
	}
	
	//총 레코드 수를 반환하는 SQL호출하는 메소드
	@Override
	public Integer totalRecord(HashMap map) {
		
		Integer total = sst.selectOne("BlogMapper.totalRecord", map);
		
		return total;
	}

	@Override
	public BlogVO selectBlogDetail(String post_code) {
		// TODO Auto-generated method stub
		return sst.selectOne("BlogMapper.selectBlogDetail", post_code);
	}

	@Override
	public List<BlogVO> selectBlog3(String post_code) {
		// TODO Auto-generated method stub
		return sst.selectList("BlogMapper.selectBlog3", post_code);
	}

	@Override
	public List<BlogVO> selectReply(String post_code) {
		// TODO Auto-generated method stub
		return sst.selectList("BlogMapper.selectReply", post_code);
	}

	@Override
	public Integer countReply(String post_code) {
		// TODO Auto-generated method stub
		return sst.selectOne("BlogMapper.countReply", post_code);
	}

	@Override
	public Integer insertReply(BlogVO bvo) {
		// TODO Auto-generated method stub
		return sst.insert("BlogMapper.insertReply", bvo);
	}

	@Override
	public Integer deleteReply(Integer replyCode) {
		// TODO Auto-generated method stub
		return sst.delete("BlogMapper.deleteReply", replyCode);
	}

	@Override
	public Integer modifyReply(HashMap map) {
		// TODO Auto-generated method stub
		return sst.update("BlogMapper.updateReply", map);
	}

	@Override
	public List<BlogVO> searchPost(HashMap map) {
		// TODO Auto-generated method stub
		return sst.selectList("BlogMapper.searchPost", map);
	}

	@Override
	public Integer updateBlog(BlogVO bvo) {
		// TODO Auto-generated method stub
		sst.update("BlogMapper.updateBlog", bvo);
		sst.update("BlogMapper.updateBlogImg", bvo);
		
		return null;
	}





}
