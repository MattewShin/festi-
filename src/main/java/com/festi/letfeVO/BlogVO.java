package com.festi.letfeVO;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class BlogVO {

   // 블로그 글 저장을 위한 변수
   private Integer mem_code;
   private String mem_id;
   private String blog_code;
   private String post_code;
   private String post_title;
   private String post_content;
   private String post_date;
   private Integer postkind_code;
   private String postkind_name;

   // 이미지 저장을 위한 변수
   private int img_code;
   private String img_origin;// 진짜 파일명 (fname)(짧은거)
   private String img_route; // 이미지 경로
   private String img_save; // 저장된 파일이름 (b_realfname)(긴거)
   private String img_type; // 이미지 타입
   private long img_size; // 파일사이즈
   private String img_reg; // 등록일

   private String article_no; // 분류코드

   private Integer reply_code;
   private String reply_date;
   private Integer reply_score;
   private String reply_content;

   private String same;

   MultipartFile file; // write.jsp에 파일첨부시 name="file"과 동일한 변수명

   public void setFile(MultipartFile file) {
      this.file = file;

      // 업로드 파일 접근
      if (!file.isEmpty()) {
         this.img_origin = file.getOriginalFilename();
         this.img_size = file.getSize();
         // 실제 저장된 파일명 만들기

         this.img_size = file.getSize();
         this.img_type = file.getContentType();

         UUID uuid = UUID.randomUUID();
         img_save = uuid.toString() + "_" + img_origin;


			//이게 맞는지 모르겠지만 경로는 이렇게 줌
			this.img_route = ("D:/final/src/main/webapp/resources/blogpage/upload/"+img_save);
			//***********************************************
			// 해당 경로로 변경
			File f = new File("D:\\final\\src\\main\\webapp\\resources\\blogpage\\upload\\"+img_save);

			 try {
		            file.transferTo(f);

		         } catch (IllegalStateException e) {
		            e.printStackTrace();
		         } catch (IOException e) {

		            e.printStackTrace();
		         }
		      }
		   }

		   public Integer getMem_code() {
		      return mem_code;
		   }

		   public void setMem_code(Integer mem_code) {
		      this.mem_code = mem_code;
		   }

		   public String getMem_id() {
		      return mem_id;
		   }

		   public void setMem_id(String mem_id) {
		      this.mem_id = mem_id;
		   }

		   public String getBlog_code() {
		      return blog_code;
		   }

		   public void setBlog_code(String blog_code) {
		      this.blog_code = blog_code;
		   }

		   public String getPost_code() {
		      return post_code;
		   }

		   public void setPost_code(String post_code) {
		      this.post_code = post_code;
		   }

		   public String getPost_title() {
		      return post_title;
		   }

		   public void setPost_title(String post_title) {
		      this.post_title = post_title;
		   }

		   public String getPost_content() {
		      return post_content;
		   }

		   public void setPost_content(String post_content) {
		      this.post_content = post_content;
		   }

		   public String getPost_date() {
		      return post_date;
		   }

		   public void setPost_date(String post_date) {
		      this.post_date = post_date;
		   }

		   public Integer getPostkind_code() {
		      return postkind_code;
		   }

		   public void setPostkind_code(Integer postkind_code) {
		      this.postkind_code = postkind_code;
		   }

		   public String getPostkind_name() {
		      return postkind_name;
		   }

		   public void setPostkind_name(String postkind_name) {
		      this.postkind_name = postkind_name;
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

		   public Integer getReply_code() {
		      return reply_code;
		   }

		   public void setReply_code(Integer reply_code) {
		      this.reply_code = reply_code;
		   }

		   public String getReply_date() {
		      return reply_date;
		   }

		   public void setReply_date(String replt_date) {
		      this.reply_date = replt_date;
		   }

		   public Integer getReply_score() {
		      return reply_score;
		   }

		   public void setReply_score(Integer reply_score) {
		      this.reply_score = reply_score;
		   }

		   public String getReply_content() {
		      return reply_content;
		   }

		   public void setReply_content(String reply_content) {
		      this.reply_content = reply_content;
		   }

		   public String getSame() {
		      return same;
		   }

		   public void setSame(String same) {
		      this.same = same;
		   }

		}