package com.hst.pofoland.biz.user.domain;

import java.util.List;

import lombok.Data;

@Data
public class User {
	
	// 생성자
	public User() {
	}

	// 사용자 번호
	private Integer userNo;
	
	// 사용자 아아디
	private String userEmail;
	
	// 사용자 패스워드
	private String userPwd;
	
	// 사용자 상태 코드
	private String userSttCd;
	
	// 사용자 생성 날짜
	private String regDtm;
	
	// 사용자 수정 날짜
	private String updDtm;
	
	// 사용자 닉네임
	private String userNickNm;
	
	// 사용자 가입 경로
	private String userJoinSeCd;
	
	private List<String> roles;

	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", userEmail=" + userEmail + ", userPwd=" + userPwd + ", userSttCd="
				+ userSttCd + ", regDtm=" + regDtm + ", updDtm=" + updDtm + ", userNickNm=" + userNickNm
				+ ", userJoinSeCd=" + userJoinSeCd + ", roles=" + roles + "]";
	}
}
