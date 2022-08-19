package com.festi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.AonDAO;
import com.festi.letfeVO.AonVO;

@Service("aonService")
public class AonServiceImpl implements AonService{

	@Autowired
	private AonDAO aonDAO;
	
	@Override
	public void aonInsert(AonVO avo) {
		aonDAO.aonInsert(avo);		
	}

	@Override
	public List<AonVO> selectAonList() {
		return aonDAO.selectAonList();
	}

	@Override
	public AonVO selectAonOne(String goods_code) {
		return aonDAO.selectAonOne(goods_code);
	}
	



	

}
