package com.festi.service;

import com.festi.letfeVO.KakaoVO;
import com.festi.letfeVO.MemberVO;

public interface LoginService {

	public MemberVO loginCheck(String mem_id, String mem_pwd);
	
	//******************
	public String getAccessToken(String authorize_code);

	public KakaoVO getUserInfo(String access_Token);
	
}
