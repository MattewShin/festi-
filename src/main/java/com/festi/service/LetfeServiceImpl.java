package com.festi.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.festi.DAO.LetfeDAOImpl;
import com.festi.letfeVO.Criteria;
import com.festi.letfeVO.ImgVO;
import com.festi.letfeVO.LetfeVO;
import com.festi.letfeVO.Search;


@Service("letfeService")
public class LetfeServiceImpl implements LetfeService {

	@Autowired
	private LetfeDAOImpl letfeDAO;


	//신영범 렛페 등록 1페이지 인서트 :: 
	public void insertLetfe1(LetfeVO vo) {
		letfeDAO.insertLetfe1(vo);
		}
	
	//김민석 렛페 등록 2페이지 인서트 ::
	public void insertLetfe(LetfeVO vo) {
		letfeDAO.insertLetfe(vo);		
	}
	
	//김민석 렛페 등록 3페이지 파일 인서트 ::
	public void saveLetfe(ImgVO vo) {
		letfeDAO.saveLetfe(vo);	
	}

	//김민석 렛페 등록 3페이지 인서트 :: 
	public void updateLetfe(LetfeVO vo) {
		letfeDAO.updateLetfe(vo);
		
	}


	@Override
	public List<Map<String, Object>> autocomplete(Map<String, Object> paramMap) throws Exception {
		
		return letfeDAO.autocomplete(paramMap);
	}

	@Override
	public List<Map<String, Object>> autocompleteLocation(Map<String, Object> paramMap) throws Exception {
		
		return letfeDAO.autocompleteLocation(paramMap);
	}

	@Override
	public List<Map<String, Object>> autocompletesmallcat(Map<String, Object> paramMap) throws Exception {
		
		return letfeDAO.autocompletesmallcat(paramMap);
	}

	
	@Override
	public List<Map<String, Object>> autocompleteStart(Map<String, Object> paramMap) throws Exception {
		
		return letfeDAO.autocompleteStart(paramMap);
	}

	
	
	
	///***상세페이지 이동
	
	
	@Override
	public List<LetfeVO> letfeinfo(String lf_code) {
		// TODO Auto-generated method stub
		return letfeDAO.letfeinfo(lf_code);
	}

	@Override
	public List<ImgVO> letfeinfoimg(int img_code) {
		// TODO Auto-generated method stub
		return letfeDAO.letfeinfoimg(img_code);
	}
	
	
	
	
	
	
	
	//페이징
	@Override
	public List<LetfeVO> listBoard(int start, int end,String lf_name,String lf_sim_addr,String lf_end,String lf_start) {
	
		return letfeDAO.listBoard(start, end,lf_name,lf_sim_addr,lf_end,lf_start);
	}

	//페이징
	@Override
	public int totalRecord(String lf_name,String lf_sim_addr,String lf_end,String lf_start) {
	 
		return letfeDAO.totalRecord(lf_name,lf_sim_addr,lf_end,lf_start);
	}


	//김민석 렛페 리스트 메인페이지 뽑기
	public List<ImgVO> getImgList(String lf_name,String lf_sim_addr,String lf_end,String lf_start){
		return letfeDAO.getImgList(lf_name,lf_sim_addr,lf_end,lf_start);
	}
	
	//김민석 렛페 리스트 메인페이지 뽑기2
	public List<LetfeVO> getLefeList(String lf_name,String lf_sim_addr,String lf_end,String lf_start){
		return letfeDAO.getLefeList(lf_name,lf_sim_addr,lf_end,lf_start);
		}

	

	@Override
	public int clickLfCnt(String lf_code) throws Exception {		
		return letfeDAO.clickLfCnt(lf_code);
	}
	
	//김민석 렛페 상세페이지 파티 참여 TABLE: LETFE 
	public int insertPartyMember(String lf_code) throws Exception{
		
	System.out.println("서비스 임플 =====>"    + lf_code);
		
		return letfeDAO.insertPartyMember(lf_code);
	}

	@Override
	public void saveLetfeParty(String lf_code) {
		letfeDAO.saveLetfeParty(lf_code);
	}

	@Override
	public int selectPartyMember(String lf_code) {

		return letfeDAO.selectPartyMember(lf_code);
	}

	@Override
	public void insertPartyTable(LetfeVO vo) {
		
		letfeDAO.insertPartyTable(vo);
		
	}

	@Override
	public int partyCheck(LetfeVO vo) {

		return letfeDAO.partyCheck(vo);
		
	}
	
	public int max(LetfeVO vo) {
		return letfeDAO.max(vo);
	}
	
	// 신영범 렛페 카운트다운
		public LetfeVO years(LetfeVO vo) {
			// TODO Auto-generated method stub
			return letfeDAO.years(vo);
		}

		public LetfeVO months(LetfeVO vo) {
			// TODO Auto-generated method stub
			return letfeDAO.months(vo);
		}

		public LetfeVO days(LetfeVO vo) {
			// TODO Auto-generated method stub
			return letfeDAO.days(vo);
		}


	
}
