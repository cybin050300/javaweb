package com.cyb.listen;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;


/** HttpSession에 어떤 데이터가 binding 되면 이벤트가 발생.=> 이벤트 처리 **/
public class LoginImpl implements HttpSessionBindingListener {
	public String user_id, user_pw;
	// 전체 접속자 수 저장
	public static int total_user=0;
	
	public LoginImpl() { //기본
	}
	public LoginImpl(String user_id, String user_pw) { //Overloding
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	// 접속
	public void valueBound(HttpSessionBindingEvent e) {
		
		System.out.println("사용자 접속");
		++total_user; //total_user++; 결과는 같으나 앞에는 선순위 뒤에는 후순위
	}
	// 접속 해제
	public void valueUnBound() {
		System.out.println("사용자 접속 해제");
		total_user--;
	}
}
