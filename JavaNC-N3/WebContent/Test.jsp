<%@page import="bo.khachhangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <form action="Test.jsp" method="POST">
        nhập n : <input type="text" name="txtn" ><br>     
        <input type="submit"  name="but1" value="Tổng" class="btn btn-primary">
    </form>
    <%
   if(session.getAttribute("ss")==null)
	  session.setAttribute("ss", (long)0);
    String tamn=request.getParameter("txtn");
    if(tamn!=null){
   	//b1 : gán session vào 1 biến nào đó 
   	long s= (long)session.getAttribute("ss");
   	//b2 thao tác trên biến 
   	s = s + Long.parseLong(tamn);
   	//b3 luu lai gia tri cua bien vao session 
   	session.setAttribute("ss", s);
    }
   %>
   Tong: <%=session.getAttribute("ss") %>

</body>
</html>