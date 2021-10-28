<%@page import="bo.khachhangbo"%>
<%@page import="bean.khachhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8"); %>
<form method="post" action="kiemtradangnhap.jsp">
             <label> Tên đăng nhập: </label>
             <input name="txtun" type="text" class="form-control">
             <label> Mật khẩu: </label>
             <input name="txtpass" type="password" class="form-control">
             <input name="but1" type="submit" value="Đăng nhập" class="btn-primary">
         </form>
 
<%
khachhangbo khbo= new khachhangbo();
ArrayList<khachhangbean> ds= khbo.getkh();
   String un=request.getParameter("txtun");
   String pass=request.getParameter("txtpass");
   khachhangbean a= khbo.ktdn(un,pass);
   if(a!= null)
{		
	   session.setAttribute("dn", a);
	   session.setAttribute("kt", (long)1);
	   response.sendRedirect("menu.jsp?kt=0");
 
 
   }else
	   response.sendRedirect("menu.jsp?kt=1");
   	   session.setAttribute("kt", (long)0);
%>
</body>
</html>