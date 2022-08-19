package com.festi.letfeVO;

public class FestivalVO {

	private String fest_code;	//축제 코드(PK)
	private String fest_name;	//축제명
	private String fest_startday;//축제 시작일
	private String fest_endday;	//축제 마감일
	private String fest_place;	//장소
	private String fest_host;	//주최자
	private String fest_content;//내용
	private String fest_tel;	//연락처
	private String fest_email;	//이메일
	private String fest_homepage;//홈페이지
	private String fest_sim_addr;//주소
	private String fest_detail_addr;//상세주소
	private int fest_pay;		//요금
	private int fest_lat;		//위도
	private int fest_lng;		//경도
	private int fest_rate;		//조회수
	private int fest_scatcode;	//s카테고리
	private String fest_scatname;//s카테고리명
	private String fest_lcatname;//l카테고리명
	
	private int reply_code;     	//댓글코드(PK)
	private String reply_date;		//날짜
	private int reply_score;		//평점
	private int mem_code;			//회원코드(FK)
	private String reply_content;	//댓글내용
	private String article_no;		//글번호
	
	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private String mem_profile;
	
	private String same;
	
	public String getFest_code() {
		return fest_code;
	}
	public void setFest_code(String fest_code) {
		this.fest_code = fest_code;
	}
	public String getFest_name() {
		return fest_name;
	}
	public void setFest_name(String fest_name) {
		this.fest_name = fest_name;
	}
	public String getFest_startday() {
		return fest_startday;
	}
	public void setFest_startday(String fest_startday) {
		this.fest_startday = fest_startday;
	}
	public String getFest_endday() {
		return fest_endday;
	}
	public void setFest_endday(String fest_endday) {
		this.fest_endday = fest_endday;
	}
	public String getFest_place() {
		return fest_place;
	}
	public void setFest_place(String fest_place) {
		this.fest_place = fest_place;
	}
	public String getFest_host() {
		return fest_host;
	}
	public void setFest_host(String fest_host) {
		this.fest_host = fest_host;
	}
	public String getFest_content() {
		return fest_content;
	}
	public void setFest_content(String fest_content) {
		this.fest_content = fest_content;
	}
	public String getFest_tel() {
		return fest_tel;
	}
	public void setFest_tel(String fest_tel) {
		this.fest_tel = fest_tel;
	}
	public String getFest_email() {
		return fest_email;
	}
	public void setFest_email(String fest_email) {
		this.fest_email = fest_email;
	}
	public String getFest_homepage() {
		return fest_homepage;
	}
	public void setFest_homepage(String fest_homepage) {
		this.fest_homepage = fest_homepage;
	}
	public int getFest_pay() {
		return fest_pay;
	}
	public void setFest_pay(int fest_pay) {
		this.fest_pay = fest_pay;
	}
	public int getFest_lat() {
		return fest_lat;
	}
	public void setFest_lat(int fest_lat) {
		this.fest_lat = fest_lat;
	}
	public int getFest_lng() {
		return fest_lng;
	}
	public void setFest_lng(int fest_lng) {
		this.fest_lng = fest_lng;
	}
	public int getFest_rate() {
		return fest_rate;
	}
	public void setFest_rate(int fest_rate) {
		this.fest_rate = fest_rate;
	}
	public int getFest_scatcode() {
		return fest_scatcode;
	}
	public void setFest_scatcode(int fest_scatcode) {
		this.fest_scatcode = fest_scatcode;
	}
	public int getReply_code() {
		return reply_code;
	}
	public void setReply_code(int reply_code) {
		this.reply_code = reply_code;
	}
	public String getReply_date() {
		return reply_date;
	}
	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}
	public int getReply_score() {
		return reply_score;
	}
	public void setReply_score(int reply_score) {
		this.reply_score = reply_score;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public String getArticle_no() {
		return article_no;
	}
	public void setArticle_no(String article_no) {
		this.article_no = article_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pwd() {
		return mem_pwd;
	}
	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getSame() {
		return same;
	}
	public void setSame(String same) {
		this.same = same;
	}
	public String getFest_scatname() {
		return fest_scatname;
	}
	public void setFest_scatname(String fest_scatname) {
		this.fest_scatname = fest_scatname;
	}
	public String getFest_sim_addr() {
		return fest_sim_addr;
	}
	public void setFest_sim_addr(String fest_sim_addr) {
		this.fest_sim_addr = fest_sim_addr;
	}
	public String getFest_detail_addr() {
		return fest_detail_addr;
	}
	public void setFest_detail_addr(String fest_detail_addr) {
		this.fest_detail_addr = fest_detail_addr;
	}
	public String getFest_lcatname() {
		return fest_lcatname;
	}
	public void setFest_lcatname(String fest_lcatname) {
		this.fest_lcatname = fest_lcatname;
	}
	
	public String getMem_profile() {
		return mem_profile;
	}
	public void setMem_profile(String mem_profile) {
		this.mem_profile = mem_profile;
	}
	
}
