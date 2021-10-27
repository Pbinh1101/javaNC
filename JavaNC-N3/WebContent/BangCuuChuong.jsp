<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<div class ="container">
		<form action="" method = "get">
		
			<label for = "input">Nhập Số: </label>
			<input type ="number" id = "input" name= "ip" value = "<%%>">
			<button>Xác Nhận</button>
			
		</form>
		<table align="center" border="1" cellspaccing="0">
		<div style= "margin : 10px 0 10px 60px">
			<%
				String inp = request.getParameter("ip");
				if(inp !=null && inp !=""){    //check 
					int num = Integer.parseInt(inp);
					for (int i =1 ; i <= 10 ; i++){	
						out.print(num +"x" + i + "=" + (num*i));
						out.print("\n");
					}
				}
			
			%>
		
		</div>
	</table>
	</div>

</body>
</html>