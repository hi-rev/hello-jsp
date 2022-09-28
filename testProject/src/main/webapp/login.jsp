<%@page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
 <!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="EUC-KR">
 		<title>Insert title</title>
 	</head>
 	<body>
 		<!-- cookie가 있을 경우에는 로그인 창 X -->
 		<%
 			Cookie[] cookies = request.getCookies();
 			System.out.println("cookies : " + cookies);
 			
 			if (cookies != null) {
 				for (Cookie c : cookies) {
 					if (c.getName().equals("memberId")) {
 						response.sendRedirect("loginOk.jsp");
 					}
 				}
 			}
 		%>
 	
 		<form action="LoginCon" method="post">
 			ID : <input type="text" name="mID"><br>
 			PW : <input type=text name="mPW"><br>
 			<input type="submit" value="login"><br>
 		</form>
 	</body>
 </html>
 