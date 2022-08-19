package com.festi.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.batch.MyBatisBatchItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.Criteria;
import com.festi.letfeVO.ImgVO;
import com.festi.letfeVO.LetfeVO;
import com.festi.letfeVO.PageVO;
import com.festi.letfeVO.Search;

@Mapper
@Repository("letfeDAO")
public class LetfeDAOImpl implements LetfeDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//신영범 렛페 등록 1페이지 
	public void insertLetfe1(LetfeVO vo) {
		System.out.println("=> LetfeMapper letfeInsert() 호출");
		System.out.println(" insertLetfe1 값 넘어 오는지 확인 ====>"+vo);
		mybatis.insert("LetfeDAO.insertLetfe1", vo); 
		
	}
		
	//김민석 렛페 등록 2페이지 :: 달력 축제명 인서트 해보기
	//update로 수정 
	public void insertLetfe(LetfeVO vo) {
		System.out.println("===> Mybatis insertLetfe() 호출");
		mybatis.update("LetfeDAO.insertLetfe",vo);
	}

	//김민석 렛페 등록 3페이지 :: 파일 인서트
	public void saveLetfe(ImgVO vo){
		System.out.println("=====================================================");
		System.out.println("====>(DAOIimpl insertLetfe()22222222 vo 찍어보라고!!!! ::: ===> "+vo);
		System.out.println("getImg_origin====>>   "+ vo.getImg_origin());//null
		System.out.println("getImg_route====>> "+ vo.getImg_route());//null
		System.out.println("=====================================================");
	
		mybatis.insert("LetfeDAO.saveLetfe",vo);
	}

	//김민석 렛페 등록 3페이지 :: update 주소 한줄소개 내용 인서트
	public void updateLetfe(LetfeVO vo) {
		System.out.println("====updateLetfe==========DAOIimpl===========>"+ vo);
		mybatis.update("LetfeDAO.updateLetfe", vo);
	}

	


	
		
 //********************************************************************************************************		
/*	보류
 @Override
public List<String> wordSearchSHow(Map<String, String> paraMap) {

	return mybatis.selectList("LetfeDAO.wordSearchSHow", paraMap);
}
*/
//********************************************************************************************************
	
		@Override
		public List<Map<String, Object>> autocomplete(Map<String, Object> paramMap) {
			  System.out.println("======> LetfeDAOImpl  autocomplete ===>: "+paramMap); 
			
			  return mybatis.selectList("LetfeDAO.autocomplete",paramMap);
		}

		@Override
		public List<Map<String, Object>> autocompleteLocation(Map<String, Object> paramMap) throws Exception {
			
			 System.out.println("======> LetfeDAOImpl  autocomplete ===>: "+paramMap); 
			
			return mybatis.selectList("LetfeDAO.autocompleteLocation",paramMap);
		}
	
		@Override
		public List<Map<String, Object>> autocompletesmallcat(Map<String, Object> paramMap) throws Exception {
			
			 System.out.println("======> LetfeDAOImpl  autocomplete ===>: "+paramMap); 
			
			return mybatis.selectList("LetfeDAO.autocompletesmallcat",paramMap);
		}
		
		@Override
		public List<Map<String, Object>> autocompleteStart(Map<String, Object> paramMap) throws Exception {
			
			 System.out.println("======> LetfeDAOImpl  autocomplete ===>: "+paramMap); 
			
			return mybatis.selectList("LetfeDAO.autocompleteStart",paramMap);
		}
		
		
		
		
		
		
		
														//렛페 상세 페이지 *****
		// 신영범 렛페 상세 정보
		public List<LetfeVO> letfeinfo(String lf_code) {

		 System.out.println("===>  letfeinfo() 호출");

			return mybatis.selectList("LetfeDAO.letfeinfo", lf_code);
		}
		
		// 신영범 렛페 상세 이미지
		public List<ImgVO> letfeinfoimg(int img_code){
			System.out.println("---> letefeinfoimg 호출");
			return mybatis.selectList("LetfeDAO.letfeinfoimg", img_code);
		}
		
		
		
		
		
		

		//***수정*******************************************************************
		
		@Override
		public List<ImgVO> getImgList(String lf_name,String lf_sim_addr,String lf_end,String lf_start) {
			
			HashMap<String, String> map = new HashMap<String, String>(); 
			System.out.println("===> Mybatis getImgList() 호출");
			 map.put("lf_start", lf_start);
			 map.put("lf_end", lf_end);
			  map.put("lf_name", lf_name);
			  map.put("lf_sim_addr",lf_sim_addr);
			
			return mybatis.selectList("LetfeDAO.getImgList",map);
		}

		@Override
		public List<LetfeVO> getLefeList(String lf_name,String lf_sim_addr,String lf_end,String lf_start) {
			HashMap<String, String> map = new HashMap<String, String>(); 
			System.out.println("===> Mybatis getLefeList() 호출");
			 map.put("lf_start", lf_start);
			map.put("lf_end", lf_end);
			  map.put("lf_name", lf_name);
			  map.put("lf_sim_addr",lf_sim_addr);
			return mybatis.selectList("LetfeDAO.getLefeList",map);
		}


		  @Override 
		  public int totalRecord(String lf_name,String lf_sim_addr,String lf_end,String lf_start){ 	
			  HashMap<String, String> map = new HashMap<String, String>(); 
		  System.out.println("======> LetfeDAOImpl  totalRecord");
			 map.put("lf_start", lf_start);
		  map.put("lf_end", lf_end);
		  map.put("lf_name", lf_name);
		  map.put("lf_sim_addr",lf_sim_addr);
		  
		  return  mybatis.selectOne("LetfeDAO.totalRecord",map);
		  
		  }
		  
		  
		  public List<LetfeVO> listBoard(int start, int end,String lf_name,String lf_sim_addr,String lf_end,String lf_start){ 
			  
		  HashMap<String, String> map = new HashMap<String, String>(); 
			 map.put("lf_start", lf_start);
		  map.put("lf_end", lf_end);
		  map.put("start", Integer.toString(start)); 
		  map.put("end", Integer.toString(end));
		  map.put("lf_name", lf_name);
		  map.put("lf_sim_addr",lf_sim_addr);

		  
		  List<LetfeVO> list = mybatis.selectList("LetfeDAO.findAll", map);

		  return list;
		  
		 }

	/*영범이형
	 * @Repository("LetfeDAOImpl") public class LetfeDAOImpl implements LetfeDAO{
	 * 
	 * @Autowired private SqlSessionTemplate mybatis;
	 * 
	 * @Override public int letfeInsert(LetfeVO vo) {
	 * System.out.println("=> LetfeMapper letfeInsert() 호출"); return
	 * mybatis.insert("letfeMapper.letfeInsert", vo); }
	 */
	
		  
			public int clickLfCnt(String lf_code) throws Exception{
				return mybatis.update("LetfeDAO.clickLfCnt", lf_code);
			}

			
			public int insertPartyMember(String lf_code){
				
				
				System.out.println("====>(DAOIimpl insertparty ::: ===> "+lf_code);
				
				return mybatis.insert("LetfeDAO.insertPartyMember", lf_code);
			}
			
			
			@Override
			public void saveLetfeParty(String lf_code) {
			
				mybatis.insert("LetfeDAO.saveLetfeParty", lf_code);
				
			}

			public int selectPartyMember(String lf_code) {
				
				return mybatis.selectOne("LetfeDAO.selectPartyMember",lf_code);
			}


			
			public void insertPartyTable(LetfeVO vo) {
				System.out.println("파티페이블 인서트 vo 값===> " + vo);
				System.out.println("파티페이블 인서트 mem_code 값===> " + vo.getLf_code());
				System.out.println("파티페이블 인서트 lf_code 값===> " + vo.getMem_id());
				
				 mybatis.insert("LetfeDAO.insertPartyTable", vo);
			}

			@Override
			public int partyCheck(LetfeVO vo) {
				
				System.out.println("파티 체크 vo 값===> " + vo);
				System.out.println("파티 체크 mem_code 값===> " + vo.getLf_code());
				System.out.println("파티 체크 lf_code 값===> " + vo.getMem_id());
				
				
				return mybatis.selectOne("LetfeDAO.partyCheck",vo);
				
			}
			
	
			public int max(LetfeVO vo) {
				
				return mybatis.selectOne("LetfeDAO.max",vo);
			}
			
			// 신영범 렛페 카운트다운
			@Override
			public LetfeVO years(LetfeVO vo) {
				// TODO Auto-generated method stub
				return mybatis.selectOne("LetfeDAO.years",vo);
			}

			@Override
			public LetfeVO months(LetfeVO vo) {
				// TODO Auto-generated method stub
				return mybatis.selectOne("LetfeDAO.months",vo);
			}

			@Override
			public LetfeVO days(LetfeVO vo) {
				// TODO Auto-generated method stub
				return mybatis.selectOne("LetfeDAO.days",vo);
			}
			
}
