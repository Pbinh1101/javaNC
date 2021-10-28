<%@page import="bean.khachhangbean"%>
<%@page import="bo.khachhangbo"%>
<%@ page import = "java.util.*" %>
<% 
String username=request.getParameter("txtnum"); 
String password=request.getParameter("txtps"); 
khachhangbo ndbo = new khachhangbo();
khachhangbean nguoidung = ndbo.ktdn(username, password);

if(nguoidung != null){
	session.setAttribute("nguoidung", nguoidung);
	out.print("<script>alert('Danh nhap thanh cong');</script>");
	}
	
else{
	session.setAttribute("nguoidung", null);
	out.print("<script>alert('Dang nhap sai');</script>");
	}

response.sendRedirect("home.jsp");
%>