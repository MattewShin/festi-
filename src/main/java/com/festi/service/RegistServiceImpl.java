package com.festi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.RegistDAOImpl;
import com.festi.letfeVO.MemberVO;

@Service("registService")
public class RegistServiceImpl implements RegistService{

	@Autowired
	private RegistDAOImpl registDAO;
	
	@Override
	public void registMember(MemberVO vo) {
		
		
		System.out.println("registMember (RegistDAOImpl)에서 호출");
		System.out.println(vo.toString());
		
		
		registDAO.registMember(vo);
	}

	
	public int overlapped(MemberVO vo) {
		System.out.println("overlapped (RegistDAOImpl)에서 호출");
		System.out.println(vo.toString());
		
		return registDAO.overlapped(vo);
		
	}
}
