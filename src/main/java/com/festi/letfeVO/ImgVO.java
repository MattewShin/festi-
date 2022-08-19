package com.festi.letfeVO;

import java.io.File;

import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class ImgVO {
	private int img_code;
	private String img_origin;//진짜 파일명 (fname)(짧은거)
	private String img_route; //이미지 경로
	private String img_save; //저장된 파일이름 (b_realfname)(긴거)
	private String img_type; //이미지 타입
	private long img_size;	// 파일사이즈
	private String img_reg; //등록일
	
	//(fk)
	private Integer class_code; //분류코드
	private String article_no; //분류코드
	
	private Integer fest_code;	//축제코드
	private Integer food_code;	//음식코드
	private Integer fun_code;	//놀거리코드
	private Integer stay_code;	//숙박코드
	private String lf_code;	//렛페코드
	private Integer goods_code;	//애온코드
	
	
	
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
	

	
	
	
	//*******************
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명

	public void setFile(MultipartFile file) {
		this.file = file;
	
	// 업로드 파일 접근
		if(! file.isEmpty()){
			this.img_origin = file.getOriginalFilename();
			this.img_size = file.getSize();
			// 실제 저장된 파일명 만들기
			
			this.img_size = file.getSize();
			this.img_type = file.getContentType();
			
			UUID uuid = UUID.randomUUID();
			img_save = uuid.toString() + "_" + img_origin;
			
			
			//이게 맞는지 모르겠지만 경로는 이렇게 줌
			this.img_route = ("D:/final/src/main/webapp/resources/letfe/upload/"+img_save);
			//***********************************************
			// 해당 경로로 변경
			File f = new File("D:\\final\\src\\main\\webapp\\resources\\letfe\\upload\\"+img_save);
		
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}

	public String getImg_origin() {
		return img_origin;
	}

	public void setImg_origin(String img_origin) {
		this.img_origin = img_origin;
	}

	public String getImg_route() {
		return img_route;
	}

	public void setImg_route(String img_route) {
		this.img_route = img_route;
	}

	public String getImg_save() {
		return img_save;
	}

	public void setImg_save(String img_save) {
		this.img_save = img_save;
	}

	public String getImg_type() {
		return img_type;
	}

	public void setImg_type(String img_type) {
		this.img_type = img_type;
	}

	public long getImg_size() {
		return img_size;
	}

	public void setImg_size(long img_size) {
		this.img_size = img_size;
	}

	public String getImg_reg() {
		return img_reg;
	}

	public void setImg_reg(String img_reg) {
		this.img_reg = img_reg;
	}

	public Integer getClass_code() {
		return class_code;
	}

	public void setClass_code(Integer class_code) {
		this.class_code = class_code;
	}

	public String getArticle_no() {
		return article_no;
	}

	public void setArticle_no(String article_no) {
		this.article_no = article_no;
	}

	public Integer getFest_code() {
		return fest_code;
	}

	public void setFest_code(Integer fest_code) {
		this.fest_code = fest_code;
	}

	public Integer getFood_code() {
		return food_code;
	}

	public void setFood_code(Integer food_code) {
		this.food_code = food_code;
	}

	public Integer getFun_code() {
		return fun_code;
	}

	public void setFun_code(Integer fun_code) {
		this.fun_code = fun_code;
	}

	public Integer getStay_code() {
		return stay_code;
	}

	public void setStay_code(Integer stay_code) {
		this.stay_code = stay_code;
	}

	public String getLf_code() {
		return lf_code;
	}

	public void setLf_code(String lf_code) {
		this.lf_code = lf_code;
	}

	public Integer getGoods_code() {
		return goods_code;
	}

	public void setGoods_code(Integer goods_code) {
		this.goods_code = goods_code;
	}

	public MultipartFile getFile() {
		return file;
	}

	public int getImg_code() {
		return img_code;
	}

	public void setImg_code(int img_code) {
		this.img_code = img_code;
	}
	
}
