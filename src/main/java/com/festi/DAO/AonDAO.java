package com.festi.DAO;

import java.util.List;

import com.festi.letfeVO.*;

public interface AonDAO {
	
	//�ֿ� ��� �޼ҵ�
	public void aonInsert(AonVO avo);	
	
	//���� ����Ʈ �ҷ����� �޼ҵ�
	public List<AonVO> selectAonList();
	
	//��ǰ Ŭ���� �󼼺��� �޼ҵ�
	public AonVO selectAonOne(String goods_code);
	
}
