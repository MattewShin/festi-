package com.festi.DAO;


import com.festi.letfeVO.MemberVO;

public interface MypageDAO {
	
	//마이페이지 기본정보 조회
		public MemberVO selectMypage(String mem_id);
	
	//마이페이지 이미지 등록
		public void updateMyimg(MemberVO vo);
	
	//프로필 사진 띄우기
		public MemberVO selectProfile(String mem_id);
	
	
	
}
