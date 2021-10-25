<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    <%
   String aa=request.getParameter("a");
  String bb=request.getParameter("b");
%>
<form action="Maytinh.jsp" method="post">
  a=   <input name="txta" value="<%=(aa==null?"0":aa) %>" type="number"> <br>
 b=   <input name="txtb" value="<%=(aa==null?"0":bb) %>" type="number"> <br> 
 Ket qua: <%=request.getParameter("kq") %><br>
    <input name="butcong" value="+" type="submit">
    <input name="buttru" value="-" type="submit">
    <input name="butnhan" value="*" type="submit">
    <input name="butchia" value="/" type="submit">
    </form>
<%
  String tama=request.getParameter("txta");//Lay ve gia tri cua txta
  String tamb=request.getParameter("txtb");//Lay ve gia tri cua txtb
  Long kq=(long)0;
  if(tama!=null && tamb!=null){
	  Long a= Long.parseLong(tama);//Doi chuoi ra so
	  Long b=Long.parseLong(tamb);
if( request.getParameter("butcong")!=null)//Neu nguoi dung kich vao nut Cong
		  kq=a+b;
	 if( request.getParameter("buttru")!=null)//Neu nguoi dung kich vao nut Tru
		  kq=a-b;
	 response.sendRedirect("Maytinh.jsp?kq="+kq.toString()+"&a="+a+"&b="+b);
  }
%>
</body>
</html>