package com.festi.DAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.IndexVO;

@Repository("indexDAO")
public class IndexDAOImpl implements IndexDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	// 2. 인기 축제
	
	@Override
	public List<IndexVO> topfest(IndexVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("indexDAO.topfest");
	}
	
	// 3. 축제 정보
		
	
	@Override
	public List<IndexVO> festCate(IndexVO vo) {
		 return mybatis.selectOne("indexDAO.festCate");
	}
	
	@Override
	public List<IndexVO> festInfo(IndexVO vo) {
		return mybatis.selectList("indexDAO.festInfo");
	}
	
	
	// 4. 진행 중인 렛페
	
	 @Override 
	 public List<IndexVO> letfeImg(IndexVO vo) {
		 return mybatis.selectList("indexDAO.letfeImg", vo); 
	 
	 }
	
	 @Override 
	 public List<IndexVO> letfeInfo(IndexVO vo) { 
		 return mybatis.selectList("indexDAO.letfeInfo", vo); 
	 }

	 
	 // 5. 에온 리스트

	 @Override
		public List<IndexVO> aonList(IndexVO vo) {
			// TODO Auto-generated method stub
			return mybatis.selectList("indexDAO.aonList", vo); 
		}

	
}
