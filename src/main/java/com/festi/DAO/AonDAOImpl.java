package com.festi.DAO;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.AonVO;


@Repository("aonDAO")
public class AonDAOImpl implements AonDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// �ֿ� ���� ���
	@Override
	public void aonInsert(AonVO avo) {
		System.out.println("=> AonMapper aonInsert() ȣ��");
		mybatis.insert("AonMapper.aonInsert", avo);
		mybatis.insert("AonMapper.aonInsert1", avo);
	}

	@Override
	public List<AonVO> selectAonList() {
		return mybatis.selectList("AonMapper.selectAonList");
	}

	@Override
	public AonVO selectAonOne(String goods_code) {
		System.err.println("=> AonMapper.selectOne() ȣ��");
		return mybatis.selectOne("AonMapper.selectAonOne", goods_code);
	}

}
