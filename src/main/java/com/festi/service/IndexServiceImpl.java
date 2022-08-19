package com.festi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.festi.DAO.IndexDAO;
import com.festi.letfeVO.IndexVO;

@Service("indexService")
public class IndexServiceImpl implements IndexService {
	
	@Autowired
	private IndexDAO indexDAO;
	
	// 2. 인기 축제
	
	@Override
	public List<IndexVO> topfest(IndexVO vo) {
		// TODO Auto-generated method stub
		return indexDAO.topfest(vo);
	}
	
	// 3. 축제 정보
	
	
	@Override
	public List<IndexVO> festCate(IndexVO vo) {
		 return indexDAO.festCate(vo);
	}
	
	public List<IndexVO> festInfo(IndexVO vo){
		return indexDAO.festInfo(vo);
	}

	// 4. 진행 중인 렛페
	
	 public List<IndexVO> letfeImg(IndexVO vo) { 
		 return indexDAO.letfeImg(vo); 
	}
	
	 public List<IndexVO> letfeInfo(IndexVO vo) { 
		 return indexDAO.letfeInfo(vo); 
	 }

	 
	// 5. 에온 리스트
	 
	@Override
	public List<IndexVO> aonList(IndexVO vo) {
		return indexDAO.aonList(vo);
	}



	
}
