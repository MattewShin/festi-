package com.festi.DAO;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.festi.letfeVO.KakaoVO;
import com.festi.letfeVO.MemberVO;

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	SqlSessionTemplate sst;

	// 로그인 여부를 위한 메소드
	public MemberVO loginCheck(String mem_id, String mem_pwd) {
		// TODO Auto-generated method stub
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("mem_id", mem_id);
		map.put("mem_pwd", mem_pwd);
		System.out.println(mem_id + mem_pwd);
		
		MemberVO result = sst.selectOne("LoginMapper.loginCheck", map);
		
		return result;
	}
//*************************************************
	@Override
	public void kakaoinsert(HashMap<String, Object> userInfo) {

		System.out.println("kakaoinsert 인포 : "+userInfo.get("nickname"));
		System.out.println("kakaoinsert 이메일 : "+userInfo.get("email"));
		
		sst.insert("LoginMapper.kakaoInsert",userInfo);
		
	}

	@Override
	public KakaoVO findkakao(HashMap<String, Object> userInfo) {
	
		System.out.println("RN:"+userInfo.get("nickname"));
		System.out.println("RE:"+userInfo.get("email"));
		return sst.selectOne("LoginMapper.findKakao", userInfo);
	}

	@Override
	public void insertKakaoMember(HashMap<String, Object> userInfo) {
		sst.insert("LoginMapper.insertKakaoMember",userInfo);
		
	}

}
