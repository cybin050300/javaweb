package com.cyb.spring.ex02;

public class MemberServiceImpl implements MemberService {
	private MemberDAO memberDAO; // 1
	
	public MemberServiceImpl() {
		// TODO Auto-generated constructor stub
	}


	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	public void listMembers() {
		System.out.println("Service의 listMembers() 메서드 호출");
		memberDAO.listMembers(); //3
	}

}
