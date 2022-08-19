package com.festi.service;

import java.util.List;

import com.festi.letfeVO.AonVO;

public interface AonService {
	
	//에온 등록 메소드
	public void aonInsert(AonVO avo);

	//에온 리스트 불러오는 메소드
	public List<AonVO> selectAonList();
	
	//상품 클릭시 상세보는 메소드
	public AonVO selectAonOne(String goods_code);

	
	

}
