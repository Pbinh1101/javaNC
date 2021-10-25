<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
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
 String ngay = request.getParameter("ngay");
 String thang = request.getParameter("thang");
 String nam = request.getParameter("nam");
%>
<div align="right">
<%
   if(ngay !=null && thang != null && nam != null){
	   out.print("Kết quả xổ số ngày "+ ngay + " tháng "+ thang + "năm " + nam);
   }
%>
</div>
<table align="center" border="1" cellspaceing="0" width="1000px">
<tr align="center">
<td>Giải tám</td>
<td>
<%Random r =new Random();
out.print(r.nextInt(100));%>
</td>
<td><%out.print(r.nextInt(100));%></td>
<td><%out.print(r.nextInt(100));%></td>
<td><%out.print(r.nextInt(100));%></td>
<td><%out.print(r.nextInt(100));%></td>
<td><%out.print(r.nextInt(100));%></td>
<td><%out.print(r.nextInt(100));%></td>
<td><%out.print(r.nextInt(100));%></td>
</tr>
<tr align="center">
<td>Giải Bảy</td>
<td><%out.print(r.nextInt(1000));%></td>
<td><%out.print(r.nextInt(1000));%></td>
<td><%out.print(r.nextInt(1000));%></td>
</tr>

<tr align="center">
<td>Giải Sáu</td>
<td><%out.print(r.nextInt(1000));%></td>
<td><%out.print(r.nextInt(1000));%></td>
<td><%out.print(r.nextInt(1000));%></td>
<td><%out.print(r.nextInt(1000));%></td>
</tr>

<tr align="center">
<td>Giải Năm</td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
</tr>

<tr align="center">
<td>Giải Tư</td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
<td><%out.print(r.nextInt(10000));%></td>
</tr>

<tr align="center">
<td>Giải Ba</td>
<td><%out.print(r.nextInt(100000));%></td>
<td><%out.print(r.nextInt(100000));%></td>
<td><%out.print(r.nextInt(100000));%></td>
<td><%out.print(r.nextInt(100000));%></td>
<td><%out.print(r.nextInt(100000));%></td>
<td><%out.print(r.nextInt(100000));%></td>
</tr>

<tr align="center">
<td>Giải Hai</td>
<td><%out.print(r.nextInt(100000));%></td>
<td><%out.print(r.nextInt(100000));%></td>
</tr>

<tr align="center">
<td>Giải Nhất</td>
<td><%out.print(r.nextInt(1000000));%></td>
</tr>
<tr align="center">
<td>Giải Đặc biệt</td>
<td><%out.print(r.nextInt(1000000));%></td>
</tr>
</table>
</body>
</html>