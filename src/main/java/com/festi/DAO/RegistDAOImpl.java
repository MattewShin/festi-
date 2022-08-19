package com.festi.DAO;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.MemberVO;

@Mapper
@Repository("registDAO")
public class RegistDAOImpl implements RegistDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void registMember(MemberVO vo) {
		System.out.println("DAOIMPL==============>" + vo );
		mybatis.insert("RegistDAO.registMember",vo);
		
	}
	
	
	public int overlapped(MemberVO vo) {
		System.out.println("DAOIMPL=====overlapped=========>" + vo );
		
		
		return mybatis.selectOne("RegistDAO.overlapped",vo);
	}
	
	
}
