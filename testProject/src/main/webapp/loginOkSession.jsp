<%@page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
 <!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="EUC-KR">
 		<title>Insert title</title>
 	</head>
 	<body>
 		<%
 			session = request.getSession();
 			out.print("memberId : " + session.getAttribute("memberId") + "<br>");
 		%>
 		
 		<form action="LogoutConSession" method="post">
 			<input type="submit" value="logout">
 		</form>
 	</body>
 </html>
 