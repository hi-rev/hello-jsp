<%@page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
 <!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="EUC-KR">
 		<title>Insert title</title>
 	</head>
 	<body>
 		<%!
 			String name;
 			String password;
 			String[] hobby;
 		%>
 		
 		<% 
 			name = request.getParameter("n_name");
 			password = request.getParameter("n_password");
 			hobby = request.getParameterValues("n_hobby");
 		%>
 		
 		�̸� : <%= name %><br>
 		��й�ȣ : <%= password %><br>
 		��� : <%
 		for (int i=0; i<hobby.length; i++) {
 		%>
 		<%= hobby[i] %>
 		<%	
 		}
 		%>
 	</body>
 </html>
 