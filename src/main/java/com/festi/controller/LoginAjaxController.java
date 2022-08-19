package com.festi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.festi.letfeVO.GoogleOAuthRequest;
import com.festi.service.LoginService;

@RestController
public class LoginAjaxController {

	@Autowired
	private LoginService loginService;

	// 구글 로그인창 호출
	@RequestMapping(value = "googleLogin")
	public @ResponseBody String login(HttpServletRequest request) throws Exception {
		String googleAuthUrl = "https://oauth2.googleapis.com";
		String googleLoginUrl = "https://accounts.google.com";
		String googleRedirectUrl = "http://localhost:8080/zfinalz/index.jsp";
		String googleClientId = "417930366748-7e04n3abfq5g559gdmrbhtp5ofo6j0f6.apps.googleusercontent.com";
		String googleClientSecret = "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";

		String reqUrl = googleLoginUrl + "/o/oauth2/v2/auth?client_id=" + googleClientId + "&redirect_uri="
				+ googleRedirectUrl + "&response_type=code&scope=email%20profile%20openid&access_type=offline";

		return reqUrl;
	}

	// 구글 연동정보 조회
	@RequestMapping(value = "auth")
	public String oauth_google(HttpServletRequest request, @RequestParam(value = "code") String authCode,
			HttpServletResponse response) throws Exception {

		String googleAuthUrl = "https://oauth2.googleapis.com";
		String googleLoginUrl = "https://accounts.google.com";
		String googleRedirectUrl = "http://localhost:8080/zfinalz/index.jsp";
		String googleClientId = "417930366748-7e04n3abfq5g559gdmrbhtp5ofo6j0f6.apps.googleusercontent.com";
		String googleClientSecret = "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";
		
		// restTemplate 호출
		RestTemplate restTemplate = new RestTemplate();

		GoogleOAuthRequest googleOAuthRequestParam = GoogleOAuthRequest.builder().clientId(googleClientId)
				.clientSecret(googleClientSecret).code(authCode).redirectUri(googleRedirectUrl + "/login/oauth_google")
				.grantType("authorization_code").build();

		ResponseEntity<JSONObject> apiResponse = restTemplate.postForEntity(googleAuthUrl + "/token",
				googleOAuthRequestParam, JSONObject.class);
		JSONObject responseBody = apiResponse.getBody();

		// id_token은 jwt 형식
		String jwtToken = responseBody.getString("id_token");
		String requestUrl = UriComponentsBuilder.fromHttpUrl(googleAuthUrl + "/tokeninfo")
				.queryParam("id_token", jwtToken).toUriString();

		JSONObject resultJson = restTemplate.getForObject(requestUrl, JSONObject.class);

		// 구글 정보조회 성공
		if (resultJson != null) {

			// 회원 고유 식별자
			String googleUniqueNo = resultJson.getString("sub");
			System.out.println(googleUniqueNo);

			/**
			 * 
			 * TO DO : 리턴받은 googleUniqueNo 해당하는 회원정보 조회 후 로그인 처리 후 메인으로 이동
			 * 
			 */

			// 구글 정보조회 실패
			return null;
		} else {
			//throw new ErrorMessage("구글 정보조회에 실패했습니다.");
			return null;
		}

	}

//	@PostMapping(value="loginCheck")
//	public String loginCheck(@RequestParam("mem_id") String mem_id, @RequestParam("mem_pwd") String mem_pwd, HttpSession session) {
//		System.out.println("======이건 입력한 id=====" + mem_id);
//		System.out.println("======이건 입력한 pwd=====" + mem_pwd);
//		/*
//		 * MemberVO mvo = null; mvo.setMem_id(mem_id); mvo.setMem_pwd(mem_pwd);
//		 */
//		MemberVO result = loginService.loginCheck(mem_id, mem_pwd);
//		System.out.println(result.getMem_id());
//		System.out.println(result.getMem_pwd());
//		if(mem_id.equals(result.getMem_id())) {
//		session.setAttribute("mem_id", mem_id);
//		return mem_id;
//		} else
//			return "fail";
//	}
}
