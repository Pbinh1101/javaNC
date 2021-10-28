<%@ page import = "java.util.Calendar"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kết quả xổ số miền Bắc</title>
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
<%
Calendar c =Calendar.getInstance();
int day =c.get(Calendar.DAY_OF_MONTH);
int month=c.get(Calendar.MONTH)+1;
int year = c.get(Calendar.YEAR);
Random r = new Random();%>
<div align="center";>
	<h1 style="background-color:DodgerBlue;">Kết quả xổ số hôm nay</h1>
	
<form action = 'KQXS.jsp' method ="post">
	Chọn ngày: <select name="sngay">
		  <%for(int i=1;i<=31;i++) {
		 	 	if(i == day) 
		 	 	{%>		  
		      <option selected> <%=i %></option>
			  <%}
			  else{   %>
		      <option> <%=i %></option>			  
			  <%}
		  }%>
 			 </select>
   Chọn tháng:<select name="sthang">
		  <%for(int i=1;i<=12;i++) {
		 	 	if(i == month) 
		 	 	{%>		  
		      <option selected> <%=i %></option>
			  <%}
			  else{   %>
		      <option> <%=i %></option>			  
			  <%}
 		  }%>
  			</select>
		   Chọn năm: <select name="snam">
		  <%for(int i=year-10;i<=year;i++) {
		 	 	if(i == year) 
		 	 	{%>		  
		      <option selected> <%=i %></option>
			  <%}
			  else{   %>
		      <option> <%=i %></option>			  
			  <%}
		  }%>
  				</select>
  <br><br><input type = "submit" name ="skq" value = "Xem kết quả">
 </form>
 </div>
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
</table>
</body>
</html>