<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
      <form action="test.jsp" method="POST">
       n: <input type="text" placeholder="Nhập n" name="txtn" class="form-control"><br>     
           
        <input type="submit" name="btn" value="Tổng" class="btn btn-primary">
    </form>
    <%
      if(session.getAttribute("ss")== null)
    	  session.setAttribute("ss",(long)0);
      String n = request.getParameter("txtn");
      if(n!= null){
    	  long s = (long)session.getAttribute("ss");
    	  s=s+Long.parseLong(n);
    	  session.setAttribute("ss", s);
      }
    %>
    Tổng:<%=session.getAttribute("ss") %>
</body>
</html>