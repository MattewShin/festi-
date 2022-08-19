package com.festi.DAO;

import java.util.HashMap;

import com.festi.letfeVO.KakaoVO;
import com.festi.letfeVO.MemberVO;
//zfinalz
public interface LoginDAO {

	
	public MemberVO loginCheck(String mem_id, String mem_pwd);
//*****************************************************
	public void kakaoinsert(HashMap<String, Object> userInfo);
	
	public KakaoVO findkakao(HashMap<String, Object> userInfo);

	public void insertKakaoMember(HashMap<String, Object> userInfo);

}
