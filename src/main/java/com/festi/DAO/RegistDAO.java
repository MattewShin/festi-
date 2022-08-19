package com.festi.DAO;


import com.festi.letfeVO.MemberVO;

public interface RegistDAO {

	
	//회원가입
	public void registMember(MemberVO vo);
	
	
	//회원가입 중복검사
	public int overlapped(MemberVO vo);
}
