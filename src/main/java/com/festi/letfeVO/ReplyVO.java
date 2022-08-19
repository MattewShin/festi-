package com.festi.letfeVO;

public class ReplyVO {

	private int reply_code;     	//댓글코드(PK)
	private String reply_date;		//날짜
	private int reply_score;		//평점
	private int mem_code;			//회원코드(FK)
	private String reply_content;	//댓글내용
	private String article_no;		//글번호
	
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
	
}
