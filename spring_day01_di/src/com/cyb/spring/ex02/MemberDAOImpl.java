package com.cyb.spring.ex02;

public class MemberDAOImpl implements MemberDAO {
	public MemberDAOImpl() {
		
	}

	@Override
	public void listMembers() {
		System.out.println("listMembers 메서드 호출");
		System.out.println("회원 정보를 조회");
		
	}

}
