<%@page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
 <%@ page errorPage = "errorPage.jsp" %>
 <!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="EUC-KR">
 		<title>Insert title</title>
 	</head>
 	<body>
 		<%!
 			String adminId;
 			String adminPw;
 			
 			String imgDir;
 			String testServerIP;
 			
 			String str;
 		%>
 		
 		<%
 			// config ��ü
 			adminId = config.getInitParameter("adminId");
 			adminPw = config.getInitParameter("adminPw");
 		%>
 		
 		<p>adminId : <%= adminId %></p>
 		<p>adminPw : <%= adminPw %></p>
 		
 		<%
 			// application ��ü
 			imgDir = application.getInitParameter("imgDir");
 			testServerIP = application.getInitParameter("testServerIP");
 		%>
 		
 		<p>adminId : <%= imgDir %></p>
 		<p>adminPw : <%= testServerIP %></p>
 		
 		<%
 			// application ��ü - get set
 			application.setAttribute("connectedIP", "127.0.0.1");
 			application.setAttribute("connectedUser", "rev");
 		%>
 		
 		<%
 			// out ��ü
 			out.print("<h1>Hello Java World!</h1>");
 			out.print("<h2>Hello JSP World!</h2>");
 			out.print("<h3>Hello Sevlet World!<h3>");
 		%>
 		
 		<%
 			// exception ��ü
			// out.print(str.toString());
 		%>
 	</body>
 </html>
 