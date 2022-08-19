<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>




<meta charset="UTF-8">
<title>Insert title here</title>
<link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link rel="stylesheet" href="resources/regist/css/reg-nicepage.css" media="screen">
<link rel="stylesheet" href="resources/regist/css/reg-Page-1.css" media="screen">


<!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
/** 우편번호 찾기 */
function execDaumPostcode() {
    daum.postcode.load(function(){
        new daum.Postcode({
            oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
           console.log(data.zonecode);
           console.log(data.roadAddress);
              $("#postcode").val(data.zonecode);
              $("#address").val(data.roadAddress);   
            }
        }).open();
    });
}
$(document).ready(function(){
    $('.main i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-solid fa-eye-slash")
            .prev('input').attr('type','password');
        }
    });//비밀번호 보이기 안보이기 click function end .main i
    
    
    $("#overlappedID").on('click',function(){
	//	$("#signup").attr("type", "button");
		
	if($('#mem_id').val() != ''){
	
		$.ajax({
		type: "get",
		async: false,
		url: "idCheck",
		data: {'mem_id' : $('#mem_id').val()},
		dataType: 'json',
		success: function (data) {
			console.log(data);
	
		if(data == 1) {
			$("#olmessage").text("이미 사용중인 ID 입니다.");
			$("#olmessage").addClass("olmessagef");
			$("#olmessage").removeClass("olmessaget");
			}else{
			$("#olmessage").text("사용 가능한 ID 입니다.");
			$("#olmessage").addClass("olmessaget");
			$("#olmessage").removeClass("olmessagef");
		//	$("#signup").attr("type", "submit");
			}
			},
			error: function(){alert('틀림');}
		});//ajax
		
    }else{
    	$("#olmessage").text("ID를 입력해주세요.");
		
	}
		
    });//#overlappedID").on('click',function(){

    $('#re-mem_pwd').blur(function(){	
    	
    	if($('#re-mem_pwd').val() != $('#mem_pwd').val()){
    		if($('#re-mem_pwd').val()!=''){
    		alert("비밀번호가 일치하지 않습니다.");
    		 // $("#pwdmsg").text("비밀번호가 일치하지 않습니다.");
    		  $('#re-mem_pwd').val('');
    		  $('#re-mem_pwd').focus();
    		}    	
    		}
    		
    
    }); //blur
    
    	
    	
    	
    
});


</script>
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"><!--비밀번호 눈모양  -->

<script src="https://kit.fontawesome.com/11b1baeb75.js" crossorigin="anonymous"></script>



<style type="text/css">


.olmessagef {color: red; font-style: Italic;}
.olmessaget {color: blue; font-style: Italic;}
</style>

</head>
  <body class="u-body u-xl-mode" data-lang="en">
    <section class="skrollable u-clearfix u-palette-2-light-1 u-section-1" id="carousel_eaf9">
      <div class="u-shape u-shape-svg u-text-palette-1-base u-shape-1">
        <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 100 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-adfe"></use></svg>
        <svg class="u-svg-content" viewBox="0 0 100 160" x="0px" y="0px" id="svg-adfe"><path d="M27.2,27c9.9,13.9,9.9,25.8,0,39.8c-6.4,9.1-6.4,16.8,0,25.9c9.8,13.8,9.8,25.1,0,38.9c-6.5,9.2-6.5,15.4,0,24.6l-4.8,3.8
	c-8-11.2-8.3-20.6,0-32.2c7.8-11,8.7-19,0-31.3c-8.3-11.6-7.9-22.4,0-33.5c8.2-11.4,8.5-20.3,0-32.2c-8.3-11.6-8.3-19.2,0-30.8
	l4.8,3.8C20.6,13.1,20.6,17.7,27.2,27z M11,27c9.9,13.9,9.9,25.8,0,39.8c-6.4,9.1-6.4,16.8,0,25.9c9.8,13.8,9.8,25.1,0,38.9
	c-6.5,9.2-6.5,15.4,0,24.6L6.2,160c-8-11.2-8.3-20.6,0-32.2c7.8-11,8.7-19,0-31.3c-8.3-11.6-7.9-22.4,0-33.5
	c8.2-11.4,8.5-20.3,0-32.2C-2.1,19.2-2.1,11.6,6.2,0L11,3.8C4.4,13.1,4.4,17.7,11,27z M38.8,127.8c7.8-11,8.7-19,0-31.3
	c-8.3-11.6-7.9-22.4,0-33.5c8.2-11.4,8.5-20.3,0-32.2c-8.3-11.6-8.3-19.2,0-30.8l4.8,3.8c-6.6,9.3-6.6,13.9,0,23.3
	c9.9,13.9,9.9,25.8,0,39.8c-6.4,9.1-6.4,16.8,0,25.9c9.8,13.8,9.8,25.1,0,38.9c-6.5,9.2-6.5,15.4,0,24.6l-4.8,3.7
	C30.8,148.8,30.5,139.4,38.8,127.8z M76.2,27c9.9,13.9,9.9,25.8,0,39.8c-6.4,9.1-6.4,16.8,0,25.9c9.8,13.8,9.8,25.1,0,38.9
	c-6.5,9.2-6.5,15.4,0,24.6l-4.8,3.8c-8-11.2-8.3-20.6,0-32.2c7.8-11,8.7-19,0-31.3c-8.3-11.6-7.9-22.4,0-33.5
	c8.2-11.4,8.5-20.3,0-32.2c-8.3-11.6-8.3-19.2,0-30.8l4.8,3.8C69.6,13.1,69.6,17.7,76.2,27z M60,27c9.9,13.9,9.9,25.8,0,39.8
	c-6.4,9.1-6.4,16.8,0,25.9c9.8,13.8,9.8,25.1,0,38.9c-6.5,9.2-6.5,15.4,0,24.6l-4.8,3.8c-8-11.2-8.3-20.6,0-32.2
	c7.8-11,8.7-19,0-31.3c-8.3-11.6-7.9-22.4,0-33.5c8.2-11.4,8.5-20.3,0-32.2c-8.3-11.6-8.3-19.2,0-30.8L60,3.8
	C53.4,13.1,53.4,17.7,60,27z M87.8,127.8c7.8-11,8.7-19,0-31.3c-8.3-11.6-7.9-22.4,0-33.5c8.2-11.4,8.5-20.3,0-32.2
	c-8.3-11.6-8.3-19.2,0-30.8l4.8,3.8c-6.6,9.3-6.6,13.9,0,23.3c9.9,13.9,9.9,25.8,0,39.8c-6.4,9.1-6.4,16.8,0,25.9
	c9.8,13.8,9.8,25.1,0,38.9c-6.5,9.2-6.5,15.4,0,24.6l-4.8,3.7C79.8,148.8,79.5,139.4,87.8,127.8z"></path></svg>
      </div>
      <div class="u-expanded-width-xs u-shape u-shape-svg u-text-palette-2-base u-shape-2">
        <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 150" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-1073"></use></svg>
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 150" x="0px" y="0px" id="svg-1073"><path d="M43.2,126.9c14.2,1.3,27.6,7,39.1,15.6c8.3,6.1,19.4,10.3,32.7,5.3c11.7-4.4,18.6-17.4,21-30.2c2.6-13.3,8.1-25.9,15.7-37.1
	c8.3-12.1,10.8-27.9,5.3-42.7C150.5,20.3,134.6,9,117,7.6C107.9,6.9,98.8,5,90.1,1.9C83-0.6,75-0.7,67.4,2.1
	c-9.9,3.7-17,11.6-20.1,21c-3.3,10.1-10.9,18-20.6,22.2c-0.1,0-0.1,0.1-0.2,0.1c-20.3,8.9-31,32-24.6,53.2
	C6.9,115.6,25.2,125.2,43.2,126.9z"></path></svg>
      </div>
      <div class="u-shape u-shape-svg u-text-grey-10 u-shape-3">
        <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 140" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ba49"></use></svg>
        <svg class="u-svg-content" viewBox="0 0 160 140" x="0px" y="0px" id="svg-ba49"><g><g><path d="M138.9,102.2c-9.5,10.1-24.4,20.2-41.2,27.4C63.2,144.5,21,147.1,3.1,112.4c-9.9-19.1,6.5-28.8,11.8-45.7
			c5.3-16.9-11.4-32.3-5.1-49.9c1.8-4.9,4.9-9,8.9-11.9C24,1,30.8-0.8,37.8,0.3C43.6,1.2,49,3.5,54.3,5.7c8.8,3.7,17.4,7.1,26.3,9.8
			c15.7,4.7,31.3,3.7,47.1,7.2c8.5,1.9,16.7,5.6,22.6,11.8C170.3,55.7,155.8,84.1,138.9,102.2z"></path>
</g>
</g></svg>  
      </div>
      <div class="u-palette-3-base u-shape u-shape-circle u-shape-4"></div>
      <div class="u-form u-radius-50 u-white u-form-1">
        
        
        
        
        <form action="registMember" method="POST" class="u-clearfix u-form-spacing-16 u-form-vertical u-inner-form"  style="padding: 43px;">
         
        
         <!--아이디  -->
          <div class="u-form-group u-form-name" style="width: 50%;">
            <label for="name-4c18" class="u-label">아이디</label>
            <input type="text" maxlength="16" placeholder="6~16자/영문,소문자,숫자 사용 가능" pattern="^([a-z0-9_]){6,16}$" id="mem_id" name="mem_id" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
          </div>
          
          <div class="u-form-group u-form-name u-form-group-1" style="width: 50%;">
          <button  id="overlappedID" class="u-active-white u-border-2 u-border-active-palette-2-base u-border-hover-palette-2-base u-border-palette-2-base u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-base u-radius-50 u-btn-1" >중복확인</button>
          <span id="olmessage" style=" position: absolute; top: 25px; right: 130px;"></span>
          </div>

				

				<!--비밀번호  -->

          <div class="u-form-group u-form-partition-factor-2 u-form-group-2 main">
            <label for="text-eded" class="u-label">비밀번호</label>
            <input  placeholder="8~16자/문자,숫자,특수 문자 모두 혼용"  type='password' id="mem_pwd" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{8,16}$" name="mem_pwd" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
        	 <i class="fa-solid fa-eye-slash" style="position: absolute;top: 171px;color: orchid;margin: 0px 0px 2px 290px;"></i>
    
          </div>
        
         <!--재 비밀번호  -->
          <div class="u-form-group u-form-partition-factor-2 u-form-group-3 main">
            <label for="text-dc60" class="u-label">비밀번호 확인</label>
            <input  placeholder="비밀번호를 다시 입력해주세요" type='password' id="re-mem_pwd" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{8,16}$" name="re-mem_pwd" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
         	<i class="fa-solid fa-eye-slash" style="position: absolute;top: 171px;color: orchid;margin: 0px 0px 2px 290px;"></i>
              	  <!-- <span id="pwdmsg" style=" position: absolute; top: 130px; right: 212px; ">비밀번호관련</span> -->
          </div>


			

				<div class="u-form-group u-form-partition-factor-2 u-form-group-4">
            <label for="text-31ed" class="u-label">이름</label>
            <input type="text" placeholder="실명을 입력해주세요" id="mem_name" name="mem_name" pattern="[가-힣a-zA-Z]+" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle">
          </div>
          <div class="u-form-group u-form-partition-factor-2 u-form-group-5">
            <label for="text-aedf" class="u-label">생년월일</label>
            <input type="text" id="mem_birth" name="mem_birth" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" placeholder="1994-08-02">
          </div>
          <div class="u-form-group u-form-phone u-form-group-6">
            <label for="phone-0d27" class="u-label">휴대전화</label>
            <input type="tel" pattern="\+?\d{0,3}[\s\(\-]?([0-9]{2,3})[\s\)\-]?([\s\-]?)([0-9]{3})[\s\-]?([0-9]{2})[\s\-]?([0-9]{2})" placeholder="'-'빼고 입력해주세요" id="mem_tel" name="mem_tel" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-email u-form-group">
            <label for="email-4c18" class="u-label">이메일</label>
            <input type="email" name="mem_email" placeholder="Enter a valid email address" id="mem_email" name="mem_email" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-radiobutton u-form-group-8">
            <div class="u-form-radio-button-wrapper">
              <input type="radio" name="mem_sex" value="남자" required="required">
              <label class="u-label" for="radiobutton">남자</label>
              <br>
              <input type="radio" name="mem_sex" value="여자" required="required">
              <label class="u-label" for="radiobutton">여자</label>
              <br>
            </div>
          </div>
          
          
          <input type="hidden" name="mem_join">
          
          
          
       <div class="u-form-group u-form-message">
            <label class="col-md-2 offset-md-3 col-form-label">주&nbsp;&nbsp;소&nbsp;&nbsp;<span class="m--font-orange vertical-middle">*</span></label>
  			  <input type="text" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" name="mem_zip_code" id="postcode" placeholder="우편번호" readonly="">
  				  
<button type="button" class="u-active-white u-border-2 u-border-active-palette-2-base u-border-hover-palette-2-base u-border-palette-2-base u-btn u-btn-round u-btn-submit u-button-style u-hover-white u-palette-2-base u-radius-50 u-btn-1" onclick="execDaumPostcode()" style="width: 178px; margin: 6px 0px 1px 476px;">우편번호 찾기</button>
<input type="text" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" name="mem_sim_addr" id="address" placeholder="도로명 주소" readonly="">
				    <input type="text" class="u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle" name="mem_detail_addr" placeholder="상세 주소" required=""> 
          </div> 
          
          
          
   
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          <div class="u-form-agree u-form-group u-form-group-11">
            <input type="checkbox" id="agree-a472" name="agree" class="u-agree-checkbox" required="">
            <label for="agree-a472" class="u-label">페스티플러스 이용 약관에 동의합니다 <a href="#">상세보기</a>
            </label>
          </div>
         <!--  <div class="u-align-center-lg u-align-center-md u-align-center-sm u-align-center-xs u-align-right-xl u-form-group u-form-submit"> -->
            
            
            <input id="signup" type="submit" value="회원가입" class="u-active-white u-border-2 u-border-active-palette-2-base u-border-hover-palette-2-base u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-white u-palette-2-base u-radius-50">
        <!-- class="u-active-white u-border-2 u-border-active-palette-2-base u-border-hover-palette-2-base u-border-palette-2-base u-btn u-btn-round u-button-style u-hover-white u-palette-2-base u-radius-50" -->
      
        </form>
      </div>
     <!--  <h1 class="u-text u-text-body-color u-text-default u-title u-text-1">회원가입</h1> -->
    </section>
    
    
    
    
  

<style>.u-disable-duration * {transition-duration: 0s !important;}</style>
</body>
</html>