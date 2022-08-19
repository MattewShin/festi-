package com.festi.letfeVO;

import lombok.Data;

@Data
public class IndexVO {
	
	// 공통 VO
	private String aticle_no;
	private String fest_code;	// 에온, 렛페
	
	// 3. 축제 정보 VO
	private String fest_scatname;
	
	private String fest_name;
	private String fest_startday;
	private String fest_endday;
	private String fest_place;
	private String fest_host;
	private String fest_content;
	private String fest_tel;
	private String fest_email;
	private String fest_homepage;
	private int fest_pay;
	private int fest_lat;
	private int fest_lng;
	private int fest_rate;
	private int fest_scatcode;		
	
	// 4. 진행 중인 렛페 VO
	private String img_save; //저장된 파일이름 (b_realfname)(긴거)
	
	private String lf_code;	// 렛페코드
	private String lf_name;		//축제명	
	private String lf_content;	// 축제설명
	private String lf_start;	// 시작일
	private String lf_end;		// 마감일
	private Integer lf_party;	// 참여 중인 인원
	private Integer lf_party_max; // 참여 마감 인원
	
	// 5. 에온
	
	private String goods_name;
	private String goods_comment;
	private String goods_code;
	private Integer goods_price;
	private Integer mem_code;
	private Integer ao_stock;	// 재고
	
	
	
	
}
