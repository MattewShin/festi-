package com.festi.service;

import com.festi.letfeVO.MemberVO;

public interface RegistService {

	void registMember(MemberVO vo);

	int overlapped(MemberVO vo);
	
	
}
