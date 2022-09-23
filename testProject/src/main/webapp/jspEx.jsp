<!-- 지시어 -->
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
 <!DOCTYPE html>
 <html>
 	<head>
 		<meta charset="EUC-KR">
 		<title>Insert title</title>
 	</head>
 	<body>
 		<!-- include file 설정 -->
 		
 		<!-- 선언 태그 -->
 		<%!
 			// 내가 사용하고 싶은 자바 언어를 태그 안에서 쓰면됨
 			int num = 10;
 			String str = "jsp";
 			ArrayList<String> list = new ArrayList<String>();
 			
 			public void jspMethod() {
 				
 			}
 		%>
 		
 		<!-- 스크립트릿 태그 -->
 		<%
 			if (num > 0) {
 		%>
 		<p> num > 0 </p>
 		<%
 			} else {
 		%>
 		<p> num <= 0 </p>
 		<%
 			}
 		%>
 		
 		<!-- 표현식 태그 -->
 		num is <%=num %>
 		
 		<!-- 지시어) include file 설정 -->
 		
 		
 	</body>
 </html>
 