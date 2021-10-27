<%@page import="bo.GioHangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String mas = request.getParameter("ma");
	GioHangbo ghb = new GioHangbo();
	ghb.Xoa(mas);
	
	response.sendRedirect("giohang1.jsp");
	
	%>
</body>
</html>