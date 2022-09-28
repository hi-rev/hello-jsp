package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String mID = request.getParameter("mID");
		String mPW = request.getParameter("mPW");
		
		out.print("mID : " + mID);
		out.print("mPW : " + mPW);
		
		// cookie ����
		// ��Ű���� �ϳ��� ������ �ִ� ���� �ƴ϶� ���� ������ ���� �� �����Ƿ� �迭�� ����
		Cookie[] cookies = request.getCookies();
		Cookie cookie = null;
		
		for (Cookie c : cookies) {
			System.out.println("c.getName() : " + c.getName() + ", c.getValue() : " + c.getValue());
			
			if (c.getName().equals("memberId")) {
				cookie = c;
			}
		}
		if (cookie == null) {
			System.out.println("cookie is null");
			cookie = new Cookie("memberId", mID);
		}
		response.addCookie(cookie);
		cookie.setMaxAge(60*60); // ��Ű�� ��ȿ�ð�(1�ð�)
		
		response.sendRedirect("loginOk.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
