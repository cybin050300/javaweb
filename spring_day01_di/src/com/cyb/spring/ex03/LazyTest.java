package com.cyb.spring.ex03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class LazyTest {

	public LazyTest() {
		System.out.println("LazyTest() 호출");
	}

	public static void main(String[] args) {
		// xml 문서 로딩 두 번째 방법
		// ApplicationContext
		// 1. new FileSystemXmlApplicationContext("~~.xml")
		ApplicationContext context = new FileSystemXmlApplicationContext("lazy.xml");
		
		// 2. ApplicationContext.getBean("객체명");
		System.out.println("Third 객체 요청");
		context.getBean("thirdBean");

	}

}
