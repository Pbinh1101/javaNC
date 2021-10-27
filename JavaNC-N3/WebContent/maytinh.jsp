<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <% 
	String[] ds = (String [])request.getAttribute("dshn"); 
	for(String ht:ds){
	out.print(ht+"<hr>");
	}
%> --%>
<%-- <%
	
	String tama= request.getParameter("a");
	String tamb= request.getParameter("b");
	String kq= request.getParameter("kq");
%> --%>
<%
   long kq=0;
   if(request.getAttribute("kq")!=null)
       kq=(long)request.getAttribute("kq");
%>
<form action="maytinhController" method="post">
  a=   <input name="txta" value="0" type="number"> <br>
 b=   <input name="txtb" value="0" type="number"> <br> 
 Ket qua: <%=kq %><br>
    <input name="butcong" value="+" type="submit">
    <input name="buttru" value="-" type="submit">
    <input name="butnhan" value="*" type="submit">
    <input name="butchia" value="/" type="submit">
    </form>