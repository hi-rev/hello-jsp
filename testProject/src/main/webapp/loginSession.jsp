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
 			if (session.getAttribute("memberId") != null) {
 				response.sendRedirect("loginOkSession.jsp");
 			}
 		%>
 	
 		<form action="LoginConSession" method="post">
 			ID : <input type="text" name="mID"><br>
 			PW : <input type="text" name="mPW"><br>
 			<input type="submit" value="login">
 		</form>
 	</body>
 </html>
 