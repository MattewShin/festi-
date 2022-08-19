package com.festi.letfeVO;

import lombok.Data;

@Data
public class LetfeVO {
	
	private Integer lf_code;
	private String lf_name;		//축제명
	private String lf_start;	// 시작일
	private String lf_end;		// 마감일
	private String lf_place;
	private Integer lf_lat;
	private Integer lf_lng;
	//위에 mem_code 삭제 밑에 추가 
	private String lf_content;
	private Integer lf_count;
	private String lf_memo;
	private Integer fest_scatcode;
	private String lf_info;
	private String lf_scatname;
	
	/*추가!!!!!! 우편번호 상세주소 주소 */
	private String lf_sim_addr;
	private String lf_detail_addr;
	private String lf_postnum;

	
	//추가
	private Integer img_code;
	
	
	private String img_save;
	private String img_reg;
	
	/*추가 자동완성*/
	private String value;
	
	//검색필터
	private String autoComplete; //검색내용
	private String search;

	private String keyword;

	//**김민석 추가 0809 오전 11:52 letfe :: lf_party, lf_party_max
	private Integer lf_party;
	private Integer lf_party_max;
	
	
	//**김민석 추가 0809 오후 2:33 memcode
	private Integer mem_code;
	private String  mem_id;
	
	//**김민석 추가 0810 오후 2:40
	private String mem_name;
	

	private String fest_scatname;
	private Integer fest_lcatcode;
	
	//** 김민석 추가 0812 오후 2:59 **참여인원(파티)테이블를 위해
	private Integer party_code;
	private String party_date;
	
	// 카운트 다운
	private String years;
	private String months;
	private String days;
	
}
