package com.festi.letfeVO;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class AonVO {
	
	// ��ǰ�� ���� ����
	private String goods_code;
	private String goods_name;
	private Integer goods_price;
	private String fest_code;
	private Integer mem_code;
	private Integer ao_stock;
	private String goods_comment;
	

	// �ֹ��ϱ� ���� ����
	private Integer request_code;
	private Integer re_cnt;
	private String re_addr;
	private String re_zipcode;
	private Integer re_total;


	// �̹����� ���� ����
	private int img_code;
	private String img_origin;//��¥ ���ϸ� (fname)(ª����)
	private String img_route; //�̹��� ���
	private String img_save; //����� �����̸� (b_realfname)(���)
	private String img_type; //�̹��� Ÿ��
	private long img_size;	// ���ϻ�����
	private String img_reg; //�����
	

	private String article_no; //�з��ڵ�
	
	MultipartFile file;	// write.jsp�� ����÷�ν� name="file"�� ������ ������

	public void setFile(MultipartFile file) {
		this.file = file;
	
	// ���ε� ���� ����
		if(! file.isEmpty()){
			this.img_origin = file.getOriginalFilename();
			this.img_size = file.getSize();
			// ���� ����� ���ϸ� �����
			
			this.img_size = file.getSize();
			this.img_type = file.getContentType();
			
			UUID uuid = UUID.randomUUID();
			img_save = uuid.toString() + "_" + img_origin;
			
			
			//�̰� �´��� �𸣰����� ��δ� �̷��� ��
			this.img_route = ("D://final/src/main/webapp/resources/afteronline/aoupload/"+img_save);
			//***********************************************
			// �ش� ��η� ����
			File f = new File("D:\\final\\src\\main\\webapp\\resources\\afteronline\\aoupload\\"+img_save);
		
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	public int getImg_code() {
		return img_code;
	}


	public void setImg_code(int img_code) {
		this.img_code = img_code;
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


	public String getArticle_no() {
		return article_no;
	}


	public void setArticle_no(String article_no) {
		this.article_no = article_no;
	}


	public MultipartFile getFile() {
		return file;
	}
	
	public String getGoods_code() {
		return goods_code;
	}
	public void setGoods_code(String goods_code) {
		this.goods_code = goods_code;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public Integer getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(Integer goods_price) {
		this.goods_price = goods_price;
	}
	public String getFest_code() {
		return fest_code;
	}
	public void setFest_code(String fest_code) {
		this.fest_code = fest_code;
	}
	public Integer getMem_code() {
		return mem_code;
	}
	public void setMem_code(Integer mem_code) {
		this.mem_code = mem_code;
	}
	public Integer getAo_stock() {
		return ao_stock;
	}
	public void setAo_stock(Integer ao_stock) {
		this.ao_stock = ao_stock;
	}
	public String getGoods_comment() {
		return goods_comment;
	}
	public void setGoods_comment(String goods_comment) {
		this.goods_comment = goods_comment;
	}

	public Integer getRequest_code() {
		return request_code;
	}

	public void setRequest_code(Integer request_code) {
		this.request_code = request_code;
	}

	public Integer getRe_cnt() {
		return re_cnt;
	}

	public void setRe_cnt(Integer re_cnt) {
		this.re_cnt = re_cnt;
	}

	public String getRe_addr() {
		return re_addr;
	}

	public void setRe_addr(String re_addr) {
		this.re_addr = re_addr;
	}

	public String getRe_zipcode() {
		return re_zipcode;
	}

	public void setRe_zipcode(String re_zipcode) {
		this.re_zipcode = re_zipcode;
	}

	public Integer getRe_total() {
		return re_total;
	}

	public void setRe_total(Integer re_total) {
		this.re_total = re_total;
	}

}
