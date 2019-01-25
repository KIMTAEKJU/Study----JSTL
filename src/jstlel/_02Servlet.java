package jstlel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/02")
public class _02Servlet extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserVo vo2 = new UserVo();
		vo2.setNo(2);
		
		UserVo vo3 = new UserVo();
		vo3.setNo(3);
		
		UserVo vo4 = new UserVo();
		vo4.setNo(4);
		
		//request scope
		request.setAttribute("vo2", vo2);
		
		//session scope
		request.getSession(true).setAttribute("vo3", vo3);
		
		//application scope 서버가 내려가기전까지 계속존재  서블릿 이닛같은데서 전역객체를 만들어서 어디에서나 공유해서 사용
		// 세션 : 리퀘스트를 모아놨는데 제이세션아이디가 같은 리퀘스트
		request.getServletContext().setAttribute("vo4", vo4);
		
		request.getRequestDispatcher("/WEB-INF/views/02.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}
