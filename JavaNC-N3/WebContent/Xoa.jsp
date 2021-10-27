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
	GioHangbo gh = (GioHangbo) session.getAttribute("gh");
	if (gh!=null)
	{
		gh.Xoa(request.getParameter("ms"));
		session.setAttribute("gh", gh);
		if (gh.ds.size()==0)
			response.sendRedirect("HienThiSach.jsp");
		else 
			response.sendRedirect("giohang.jsp");
	}
%>
</body>
</html>