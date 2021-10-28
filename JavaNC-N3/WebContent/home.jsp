<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.khoabo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>Trang chủ</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
	<%	
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		khachhangbean user = (khachhangbean)session.getAttribute("nguoidung");
		loaibo lb = new loaibo();
  		sachbo sb = new sachbo();
  		ArrayList<sachbean> sach;
  		ArrayList<loaibean> loai;
  		loai = lb.getloai();
  		String src = request.getParameter("txtTim");
  		if(src == null){
  			sach = sb.getsach();
  		}
  		else{
  			sach = sb.Tim(src);
  		}
  		%>
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" >Home</a>
    </div>
    <ul class="nav navbar-nav">
		<li ><a href="giohang1.jsp">Giỏ hàng</a></li>
		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Thanh Toán  <span class="caret"></span></a>	
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <% if(user != null) {%>
	    	<li><a><span class="glyphicon glyphicon-user"></span><%= user.getHoten() %></a></li>
	    	<li><a href="KTDX.jsp">Logout</a></li>
	   <%}else{ %>
		    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		    <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  <% }%>	
    </ul>
</div>
</nav>
<div class="modal fade" id="myModal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
		
        <!-- Modal Header -->
			<div class="modal-header">
				<h4 class="modal-title">Modal Heading</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
        
        <!-- Modal body -->
		<div class="modal-body">
			<form method='post' action="KTDN.jsp">
				Username: <input type="text" name="txtnum" class="form-control">
				Password: <input type="text" name="txtps" class="form-control">
				<input type="submit" name="btn1" value="Đăng nhập" class="btn-primary">
			</form>
		</div>
        
      
		</div>
	</div>
</div>
  
    
	<table align="center" cellspacing="0" width="100%">
    <tr>
		<td valign="top" width="30%">
			<table class="table table-hover"> 
			<%
				for(loaibean x: loai){
			%>
				<tr>
					<td>
						<a href="home.jsp?ml=<%=x.getMaloai()%>">
							<%=x.getTenloai()%>
						</a>
                  </td>
				</tr>
               <%} %>
           </table>
		</td>
		<td valign="top" width="50%">
			<table class="table table-hover">
				  	 <%
				  	 	int dem = 0;
				  	 	for(sachbean s: sach) {%>
				 		<% if(dem == 0) {%>
				 			<tr>
				 			<%} %>
				  	 	<td>
				  	 		<img src="image_sach/<%= s.getAnh() %>"> <br>	
					  	 	<%= s.getTensach() %><br>
					  	 	<%= s.getTacgia() %><br>
					  	 	<%= s.getSoluong() %><br>
					  	 	<%= s.getGia() %>
					  	 	<button><a href="giohang1.jsp?ten=<%=s.getTensach() %>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>&ma=<%=s.getMasach() %>&anh=<%=s.getAnh() %>&sl=<%=1 %>">Đặt mua</a></button>
				  	 	</td>
				  	 	<% dem++;
				  	 		if(dem == 3) { 
				 			dem = 0;%>
				 			</tr>
				 			<%} %>
				  	 <% } %>
			</table>
		</td>
		<td valign="top" width="20%">
			<form action="home.jsp" method="post" align="right">
				<input type="text" name="txtTim" value="<%=src!=null?src:""%>"/>
				<input type="submit" value="Search" name="but1" />
			</form>
		</td>
       </tr>
	</table>
</body>
</html>