package com.festi.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.MypageDAOImpl;
import com.festi.letfeVO.MemberVO;


@Service("mypageService")
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDAOImpl mypageDAO;
	
	//마이페이지 기본정보 조회
	public MemberVO selectMypage(String mem_id) {
		return mypageDAO.selectMypage(mem_id);
		
	}
	
	//마이페이지 이미지 등록
	public void updateMyimg(MemberVO vo) {
	mypageDAO.updateMyimg(vo);
	}
	
	//프로필 사진 띄우기
	public MemberVO selectProfile(String mem_id) {
	return mypageDAO.selectProfile(mem_id);
	}
	
	
	
	
}
