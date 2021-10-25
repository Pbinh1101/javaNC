<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>

<table align="center" border="1" cellspaceing="0">
 
   <%for(int i=1; i<=10; i++){%>
   <tr><%
	   for(int j=1; j<10; j++){ %>
	     <td><%out.print(j+" x "+i+ "= "+ i*j);%></td>
	   <%}%>
	</tr><%
   }
   %>
</table>

<div class="container">
 <form action="" method="get">
   
    <label for="input">Nhập số:</label>
    <input type="number" id="input" name="ip" value="<%%>">
    <button >Xác nhận</button>
 
 </form>
	<div style="margin: 10px 0 10px 60px">
	<table  border="1" cellspacing="0" >
	  <tr>
	  <%
		String input = request.getParameter("ip");
	    if(input !=null && input !=""){   //check neu k nhap input thi k hiển thị ra 		
		    int so = Integer.parseInt(input);
		    for(int i=1;i<=10;i++){%>
			  <td> <%out.print(so+"x"+i+" = "+ (so*i));%></td>
		  <%  }
	    }
	  %>
	  </tr>
	</table>
	</div>
</div>
</html>