<%@ page import = "java.util.*" %>
<%
	session.removeAttribute("nguoidung");
	response.sendRedirect("home.jsp");
%>