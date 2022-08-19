package com.festi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.festi.letfeVO.KakaoVO;
import com.festi.letfeVO.MemberVO;
import com.festi.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping("login")
	public String openLogin() {

		return "login/login";
	}
			////이게 진짜!!!!!!!!
	// 로그인 후 로그인 성공하면 세션에 로그인 정보 저장

	@RequestMapping("loginCheck")
	public String loginCheck(MemberVO mvo, HttpSession session) {

		try {
			MemberVO result = loginService.loginCheck(mvo.getMem_id(), mvo.getMem_pwd());
			if (mvo.getMem_id().equals(result.getMem_id())) {
				session.setAttribute("mem_id", mvo.getMem_id());
				return "../../index";
			} else {
				return "redirect:login";
			}
		} catch (Exception e) {
			return "redirect:login";
		}

	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "../../index";
	}

	
	
	
	//김민석 추가 **
	@RequestMapping("regist")
	public String goToRegist() {
		
		return "regist/regist";
	}
	//login.jsp
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session ) throws Exception {
		
		System.out.println("#########" + code);
		String access_Token = loginService.getAccessToken(code);
		
		
		KakaoVO userInfo = loginService.getUserInfo(access_Token);//*****************
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("#####number###### :" + userInfo.getK_number());//*****************
		System.out.println("###nickname#### : " + userInfo.getK_name());//*****************
		System.out.println("###email#### : " + userInfo.getK_email());//*****************
      
		//session.invalidate();
		// 위 코드는 session객체에 담긴 정보를 초기화 하는 코드.
		session.setAttribute("mem_id", userInfo.getKakao_id());//*****************("kakaoN", userInfo.getK_number())
		session.setAttribute("kakaoE", userInfo.getK_email());//*****************
		// 위 2개의 코드는 닉네임과 이메일을 session객체에 담는 코드
		// jsp에서 ${sessionScope.kakaoN} 이런 형식으로 사용할 수 있다.
		
		
		return "../../index";
		/*
		 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
		 * 없는 페이지를 넣어도 무방합니다.
		 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
		 */
    	}
	
	
}