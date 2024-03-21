package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParameterFilter implements Filter{

//	해당 클래스에서만 사용할 수 있도록 접근제어자 private 작성 및 변수 설정.
	private FilterConfig filterConfig = null;

//	init() 메서드를 통해 로드및초기화를 시켜준다. 예외를 ServletException으로 처리하게끔 던져준다.
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter02 초기화..");
		this.filterConfig  = filterConfig;
	}


	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		// TODO Auto-generated method stub
//		doFilter() 메서드가 작동하는지 가이드 작성
		System.out.println("Filter02 수행중...");
		
//		변수 설정
		
//		id,passwd 값을 request의 내장객체 메서드인 getParameter()를 통해 key입력을 통해
//		관련한 값을 id,passwd에 할당
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
//		filterConfig는 web.xml 의 <init-param> name,value값을 가져온다.
//		filterConfig안의 메서드인 getInitParameter()메서드를 통해 해당 입력 key의 값을 변수에 할당.
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
//		문자열 선언 / 제어문을 통한 실행부분을 통해 작성하기 위함
		String message;
//		response 안에 setCharacterEncoding, setContentType을 통해 UTF-8 지정
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter 타입으로 response의 getWriter메서드를 참조변수에 저장.
//		출력을 해주는 메서드 out.println과 동일.
		PrintWriter writer = response.getWriter();
//		입력 값과 web.xml 지정값이 일치할 경우와 일치하지 않을 경우 해당 문구 초기화
		if(id.equals(param1) && passwd.equals(param2))
		{
			message = "로그인 성공했습니다.";
		}
		else
		{
			message = "로그인 실패했습니다.";
		}
//		출력문구
		writer.println(message);
//		필터가 연속적으로 일어날 경우 다음 필터로 넘어가지도록(체이닝) FilterChain
//		객체 타입의 doFilter() 메서드 작성.
		filterChain.doFilter(request, response);
	}

	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
		System.out.println("Filter02 해제...");
	}

}
