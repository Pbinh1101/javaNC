<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
	table,td,th,tr{
		border: 1px solid black;
		width:60%;
		font-size:20px;
		font-weight: bold;
		text-align: center;
		line-height: 2;
		word-spacing: 10px;
	 	font-family: "Arial";}
	 .center{
	   margin-left: auto;
  margin-right: auto;}
</style>
<body>
<%Random r = new Random();
String d = request.getParameter("sngay");
String m = request.getParameter("sthang");
String y = request.getParameter("snam");
%>
      <table class = "center">
    	<tr>
    	<th>Đặc biệt</th>
    	<td style ="color:red"><%=r.nextInt(99999-10000+1)+10000%></td>
    	</tr>
    	<tr>
    		<td>Giải nhất</td>
    	<td><%=r.nextInt(99999-10000+1)+10000%></td>
    	<tr>
    		<td>Giải nhì</td> 
    	<td><%=r.nextInt(99999-10000+1)+10000%> <%=r.nextInt(99999-10000+1)+10000%></td>   		   	
    	</tr>
    	<tr>
    		<td>Giải ba</td>  
    		<td>
    		<p>
    		<%=r.nextInt(99999-10000+1)+10000%> <%=r.nextInt(99999-10000+1)+10000%> <%=r.nextInt(99999-10000+1)+10000%> <br>
    		<%=r.nextInt(99999-10000+1)+10000%> <%=r.nextInt(99999-10000+1)+10000%> <%=r.nextInt(99999-10000+1)+10000%>
    		</p>  		  	
    		</td>
    	</tr>
    	<tr>
    		<td>Giải tư</td>
    		<td><%=r.nextInt(9999-1000+1)+1000%> <%=r.nextInt(9999-1000+1)+1000%>  <%=r.nextInt(9999-1000+1)+1000%>  <%=r.nextInt(9999-1000+1)+1000%>  </td>   	
    	</tr>
    	<tr>
    		<td>Giải năm</td>    
    		<td>
    		<p>
    		<%=r.nextInt(9999-1000+1)+1000%> <%=r.nextInt(9999-1000+1)+1000%> <%=r.nextInt(9999-1000+1)+1000%> <br>
    		<%=r.nextInt(9999-1000+1)+1000%> <%=r.nextInt(9999-1000+1)+1000%> <%=r.nextInt(9999-1000+1)+1000%>
    		</p>  		  	
    		</td>    			
    	</tr>
    	<tr>
    		<td>Giải sáu</td>   
    		<td><%=r.nextInt(999-100+1)+100%> <%=r.nextInt(999-100+1)+100%> <%=r.nextInt(999-100+1)+100%></td> <br>
    	</tr>    
    	<tr>
    		<td>Giải bảy</td> 
    		<td><%=r.nextInt(99)%> <%=r.nextInt(99)%> <%=r.nextInt(99)%> <%=r.nextInt(99)%></td> <br>   		   	
    	</tr>
  <%
  response.sendRedirect("XoSo.jsp?d="+d+"&m="+m+"&y="+y);
  %> 		   
</table>
</body>
</html>