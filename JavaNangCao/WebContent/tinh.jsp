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
String tempa = request.getParameter("txta");
String tempb = request.getParameter("txtb");

Double kq =(double)0;
if(tempa!= null && tempb != null){
	Double a = Double.parseDouble(tempa);	
	Double b = Double.parseDouble(tempb);
	
	 if( request.getParameter("butcong")!=null)
		  kq=a+b;
		  
	 if( request.getParameter("buttru")!=null)
		  kq=a-b;
		  
	 if( request.getParameter("butnhan")!=null)
		  kq=a*b;
		  
	     
	 if( request.getParameter("butchia")!=null){
		 if(b>0){
			 kq=a/b;
		 }		 
		}

     response.sendRedirect("Maytinh.jsp?kq="+kq.toString()+"&a="+tempa+"&b="+tempb);		
}
%>

</body>
</html>