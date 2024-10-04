<%@page import="java.io.PrintWriter"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="bbs.Bbs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int 전달된값 = Integer.parseInt(request.getParameter("bbsID"));
		
		Bbs bbs = new BbsDAO().getBbs(전달된값);
	%>
	<h1>제목: <%= bbs.getBbsTitle() %></h1>
	<h2>작성자: <%= bbs.getUserID() %></h2>
	<p>내용 :<%= bbs.getBbsContent() %></p>
	
<script>
	window.print();
</script>	
</body>
</html>