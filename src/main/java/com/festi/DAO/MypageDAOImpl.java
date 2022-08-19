package com.festi.DAO;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.MemberVO;


@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//마이페이지 기본정보 조회
	public MemberVO selectMypage(String mem_id){
		System.out.println("==> MypageMapper selectMypage 호출");
		return mybatis.selectOne("MypageDAO.selectMypage", mem_id);
		
	}
	//마이페이지 이미지 등록
	public void updateMyimg(MemberVO vo){
		System.out.println("==> MypageMapper updateMyimg 호출");
		mybatis.update("MypageDAO.updateMyimg", vo);
		
	}
	//프로필 사진 띄우기
	public MemberVO selectProfile(String mem_id) {
		return mybatis.selectOne("MypageDAO.selectProfile", mem_id);
	}
	
	
}
