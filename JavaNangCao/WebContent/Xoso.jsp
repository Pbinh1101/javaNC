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
Calendar c= Calendar.getInstance();//Lay ngay gio he thong
int ngay=c.get(Calendar.DAY_OF_MONTH);//Lay ngay hien tai
int thang=c.get(Calendar.MONTH)+1;// 0..11Lay ngay hien tai
int nam=c.get(Calendar.YEAR);
%>
<div align="right">
Hôm nay, ngày <%=ngay %> tháng <%=thang %> năm <%=nam %> 
</div>
<form action="ketquaxoso.jsp" method="get">
Chọn ngày: 
		<select name="ngay">
		    <option><%=ngay %></option>
		    <%for(int i=1;i<=31;i++){ %>
		    <option <%=(i==ngay?"selected":"") %>> <%=i %> </option>
		    
		    <%} %>
		    </select>
		Tháng  
		<select name="thang">
		    <%for(int i=1;i<=12;i++){ %>
		    <option<%=(i==thang?"selected":"") %>> <%=i %> </option>
		    <%} %>
		</select>
		Năm
		<select name="nam">
		    <option><%=nam%></option>
		    <%for(int i=nam-10;i<=nam;i++){ %>
		    <option<%=(i==nam?"selected":"") %>> <%=i %> </option>
		    <%} %>
		</select>
		<button type="submit">Chọn</button>
</form>
</form>
</body>
</html>