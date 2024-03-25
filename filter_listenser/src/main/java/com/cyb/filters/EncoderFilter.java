package com.cyb.filters;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(description = "한글 인코딩 기능을 구현", urlPatterns = { "/*" })
public class EncoderFilter implements Filter {
    private ServletContext context;

    public EncoderFilter() {
        System.out.println("EncoderFilter() 생성자 호출됨~");
    }

    /** 필터가 수행될 때 자동 호출되는 초기 메서드 **/
    public void init(FilterConfig fConfing) throws ServletException {
        System.out.println("utf-8 인코딩 준비..");
        context = fConfing.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("필터링 하기 위해 doFilter() 가 자동 호출됨");
        request.setCharacterEncoding("UTF-8");

        // 경로 확인용 코드
        // 애플리케이션의 컨텍스트 이름
        String contextPath = ((HttpServletRequest)request).getContextPath();
        String pathInfo = ((HttpServletRequest)request).getRequestURI();

        String msg = "Context 정보 : " + contextPath + "\n URI 정보 : " + pathInfo;
        System.out.println(msg);

        // 요청에 따른 필터 시작 (처리하기 직전)
        long begin = System.currentTimeMillis();
        /*****/
        chain.doFilter(request, response);
        /*****/
        // 요청에 따른 필터 처리 (처리한 후)
        long end = System.currentTimeMillis();
        System.out.println("필터 작업 시간 : " + (end - begin));
    }

    @Override
    public void destroy() {
        // 필터가 소멸될 때 자동 호출되는 메서드
        // 필요한 경우 리소스 해제 등의 작업을 수행할 수 있음
    }
}
