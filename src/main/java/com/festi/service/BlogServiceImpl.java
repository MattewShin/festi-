package com.festi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.BlogDAO;
import com.festi.letfeVO.BlogVO;

@Service("blogService")
public class BlogServiceImpl implements BlogService{

	
	@Autowired
	private BlogDAO blogDAO;
	
	@Override
	public Integer insertPost(BlogVO bvo) throws Exception{
		
		return blogDAO.insertPost(bvo);
	}
	
	@Override
	public void deletePost(String post_code) {
		blogDAO.deletePost(post_code);
	}
	
	@Override
	public BlogVO selectPostCode(String post_code) {
		// TODO Auto-generated method stub
		return blogDAO.selectPostCode(post_code);
	}

	@Override
	public List<BlogVO> selectPost(String mem_id) {
		// TODO Auto-generated method stub
		return blogDAO.selectPost(mem_id);
	}

	@Override
	public List<BlogVO> selectAllPost(HashMap map) {
		// TODO Auto-generated method stub
		return blogDAO.selectAllPost(map);
	}

	@Override
	public Integer totalRecord(HashMap map) {
		// TODO Auto-generated method stub
		return blogDAO.totalRecord(map);
	}

	@Override
	public BlogVO selectBlogDetail(String post_code) {
		// TODO Auto-generated method stub
		return blogDAO.selectBlogDetail(post_code);
	}

	@Override
	public List<BlogVO> selectBlog3(String post_code) {
		// TODO Auto-generated method stub
		return blogDAO.selectBlog3(post_code);
	}

	@Override
	public List<BlogVO> selectReply(String post_code) {
		// TODO Auto-generated method stub
		return blogDAO.selectReply(post_code);
	}

	@Override
	public Integer countReply(String post_code) {
		// TODO Auto-generated method stub
		return blogDAO.countReply(post_code);
	}

	@Override
	public Integer insertReply(BlogVO bvo) {
		// TODO Auto-generated method stub
		return blogDAO.insertReply(bvo);
	}

	@Override
	public Integer deleteReply(Integer replyCode) {
		// TODO Auto-generated method stub
		return blogDAO.deleteReply(replyCode);
	}

	@Override
	public Integer modifyReply(HashMap map) {
		// TODO Auto-generated method stub
		return blogDAO.modifyReply(map);
	}

	@Override
	public List<BlogVO> searchPost(HashMap map) {
		// TODO Auto-generated method stub
		return blogDAO.searchPost(map);
	}

	@Override
	public Integer updateBlog(BlogVO bvo) {
		// TODO Auto-generated method stub
		return blogDAO.updateBlog(bvo);
	}

	@Override
	public String selectProfile(String mem_id) {
		// TODO Auto-generated method stub
		return blogDAO.selectProfile(mem_id);
	}

}
