 <%-- <%@page import="bo.GioHangbo"%>
<%@page import="bo.GioHangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Minh Khai Book store - Cua hang Sach truc tuyen, Bang Dia, CD Nhac, Van Phong Pham</title>
</head>
<body>
<%
	
	GioHangbo gh= (GioHangbo)session.getAttribute("gh");
	if(gh!=null){
		int sl = Integer.parseInt(request.getParameter("txtsl"));
		gh.Them(request.getParameter("ms"), "", 0, sl);
		session.setAttribute("gh", gh);
		response.sendRedirect("giohang.jsp");
	} 
	%>
</body>
</html> --%> 