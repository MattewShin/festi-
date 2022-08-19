package com.festi.DAO;

import java.util.List;

import com.festi.letfeVO.IndexVO;

public interface IndexDAO {
	
	// 2. 인기 축제
	
	List<IndexVO> topfest(IndexVO vo);
	
	// 3. 축제 정보 
	
	
	List<IndexVO> festCate(IndexVO vo);
	
	List<IndexVO> festInfo(IndexVO vo);

	// 4. 진행 중인 렛페
	
	List<IndexVO> letfeImg(IndexVO vo); 
	
	List<IndexVO> letfeInfo(IndexVO vo); 
	
	// 5. 에온 리스트
	
	List<IndexVO> aonList(IndexVO vo);
}
