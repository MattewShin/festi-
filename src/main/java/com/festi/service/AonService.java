package com.festi.service;

import java.util.List;

import com.festi.letfeVO.AonVO;

public interface AonService {
	
	//���� ��� �޼ҵ�
	public void aonInsert(AonVO avo);

	//���� ����Ʈ �ҷ����� �޼ҵ�
	public List<AonVO> selectAonList();
	
	//��ǰ Ŭ���� �󼼺��� �޼ҵ�
	public AonVO selectAonOne(String goods_code);

	
	

}
