package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter{

	PrintWriter writer;
//	private FilterConfig filterConfig = null;
	


	@Override
//	init() 메서드 실행 매개변수로 filterConfig 타입의  filterConfig 변수 / 예외 발생시 ServletException으로 전송
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		Filter.super.init(filterConfig);
//		filterConfig안의 getparameter() 메서드를 통해 "filename"을 가져와 문자열타입의 변수에 할당
		String filename = filterConfig.getInitParameter("filename");
		//filename 값이 null일 경우 실행
		if(filename==null)
		{
			//객체 생성후 던지기(일회용) 
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		}
		
//		예외 발생할 구문에 try문 작성
		try
		{
//			jsp에서 출력을 시켜줄 메서드 PrintWriter 객체 생성.
//			PrintWriter를 해야하는데 파일이 없을 수가 있으니 파일 또한 생성( new FileWriter)
//			FileWriter의 매개변수 첫번째는 로그 파일의 이름을 설정하는 것이고, true값을 두번째로 전달
//			함으로써 내용을 이어서 추가할 수 있도록 합니다.
//			PrintWriter의 매개변수의 두번째 값으로 true를 적어주는 이유는 객체 생성 시에
//			true를 매개변수로 전달해 자동으로 flush() 메서드를 호출해서 버퍼를 비워주도록 해줍니다.
			writer =new PrintWriter(new FileWriter(filename,true),true );
		}
//		발생할 예외를 처리할 객체 생성
		catch(IOException e)
		{
//			ServletException 예외를 발생새켜서 로그 파일을 열 수 없다는 메세지를 출력해줍니다.
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
	}
	
	
//	doFIlter() 메서드 생성, 매개변수로 request,response,filterChain 을 받습니다.
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
//		printf -  %s는 문자열, %n는 줄바꿈 , getCurrentTime()메서드를 통해 현재 시간을 알려줍니다.
		writer.printf("현재 일시 : %s %n " , getCurrentTime());
//		request의 내장객체인 getRemoteAddr()메서드를 통해 IP주소값을해당 변수에 할당합니다.
		String clientAddr = request.getRemoteAddr();
//		IP주소가 저장된 문자열 변수 출력메서드를 통해 출력합니다.
		writer.printf("클라이언트 주소 : %s %n", clientAddr);
		
//	 	필터가 이어질 수 있게 FilterChain을 통한 doFilter에 사용되는 필터를 이어줍니다.
		filterChain.doFilter(request, response);
//		response의 내장객체인 getContentType()메서드를 통해 요청한 문서의 콘텐츠 유형을 가져와
//		문자열 변수에 할당합니다.
		String contentType =response.getContentType();
//		문서 콘텐츠 유형이 저장된 변수를 출력합니다.
		writer.printf("문서의 콘텐츠 유형 : %s %n " , contentType);
//		구분선을 출력합니다.
		writer.println("-----------------------------------");
		
	}

// 소멸을 하기전에 실행하는 메서드
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		Filter.super.destroy();
//		writer의 메서드를 종료시켜줍니다.
		writer.close();
	}
	
	private String getCurrentTime() {
		// TODO Auto-generated method stub
//		DateFormat타입으로 SimpleDateFormat메서드에 패턴을 담아 변수에 저장합니다.
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//		Calendar객체 안의 getInstance()메서드를 통해 현재시간을 변수에 저장합니다.
		Calendar calendar = Calendar.getInstance();
//		현재 시간을 설정하기 위해서 아래 구문을 호출합니다.
		calendar.setTimeInMillis(System.currentTimeMillis());
//		calendar 객체의 시간을 formatter의 형식에 맞게 문자열로 변환되어 반환합니다.
//		따라서 getCurrentTime()메서드를 호출한다면 formatter에 저장된
//		패턴의 형식에 따라 현재 시간을 문자열로 얻을 수가 있습니다.
		return formatter.format(calendar.getTime());
	}
	
}
