package com.cyb.spring.ex01;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;


public class PersonTest {

	public static void main(String[] args) {
		// 1. xml 문서 로딩
		// new XmlBeanFactory() => new FileSystemResource() =>"person.xml"
		BeanFactory factory = new XmlBeanFactory(new FileSystemResource("person.xml"));
		
		// factory로 부터 우리가 생성한 객체 가져와야함
		
		// 2. 스프링 컨테이너가 생성한 빈 객체 요청
		// factory.getBean("id명"); getBean은 object형태임-형변환 필요
		//PersonService person = (PersonService)factory.getBean("personService");
		
		// 생성자를 통한 DI
		//PersonService person = (PersonService)factory.getBean("personService2");
		
		// 생성자를 통한 DI
		PersonService person = (PersonService)factory.getBean("personService3");
		// 3. sayHello()를 통해 확인.
		person.sayHello();
	

	}

}
