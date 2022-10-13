<% request.setCharacterEncoding("utf-8"); %>
<%@page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
 <!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="utf-8">
 		<title>Insert title</title>
 	</head>
 	<body>
 		<%!
 			String mName;
 			String mNickname;
 		%>
 		
 		<%
 			mName = request.getParameter("m_name");
 			mNickname = request.getParameter("m_nickname");
 		%>
 		
 		이름 : <%=mName %><br>
 		별명 : <%=mNickname %>
 	</body>
 </html>
 