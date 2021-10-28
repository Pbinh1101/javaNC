<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@page import="dao.sachdao"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
 
    <ul class="nav navbar-nav">
      <li class="active"><a href="tc.jsp">Trang Chủ</a></li>
      <li><a href="gh.jsp">Giỏ Hàng</a></li>
      <li><a href="tt.jsp">Thanh Toán</a></li>
      <li><a href="ls.jsp">Lịch Sử Mua Hàng</a></li>
    </ul>
 

  
<ul class="nav navbar-nav navbar-right">
 	<li><a href="#"><span class="glyphicon glyphicon-user"></span>Đăng kí </a></li>
    <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
</ul>
</div>
</nav>


  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thông tin đăng nhập</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form method = "post" action ="ktdn.jsp">
          Tên đăng nhập <input type="text" name="txtun" class="form-control"> <br>
            Mậy khẩu  <input type="text" name="txtpass" class="form-control"> <br>
            <input type="submit" name="but1" value ="Đăng nhập" class="btn-primary"> <br>
          </form>
       		 </div>
  		 </div>
	 </div>
 </div>
  <%
  loaibo lbo= new loaibo();
  sachbo sbo= new sachbo();
  ArrayList<sachbean> ds= sbo.getsach();
  String ml=request.getParameter("ml");
  String key=request.getParameter("txtTim");
  if(ml!=null) ds=sbo.TimLoai(ml);
  else
	  if(key!=null) ds= sbo.Tim(key);
  	  
    %>
    
  <table align="center" cellspacing="0" width="1000">
    <tr>
       <td valign="top" width="200">
            Hien thi loai
       </td>
       <td valign="top" width="600">
			  <table align="center" cellspacing="0" width="1000" border="1">
			     
			      <table class="table table-hover">
				     <%
				      int n=ds.size();
				     for(int i=0;i<n;i++){
				      sachbean s= ds.get(i);
				     %>
				       <tr>
				          <td>
				             <img src="image_sach/<%=s.getAnh() %>"><br>
				              <a href="giohang.jsp">  <img src="mua.jpg"></a> <br>
				              <%=s.getTensach() %> <br>
				               <%=s.getTacgia()%> <br>
				                <%=s.getGia()%> <br>
				          </td>
							 <%i++;
				            if(i<n){
				            	s= ds.get(i);
				           	          %>
				          <td>
				             <img src="image_sach/<%=s.getAnh() %>"><br>
				              <a href="giohang.jsp">  <img src="mua.jpg"></a> <br>
				              <%=s.getTensach() %> <br>
				               <%=s.getTacgia()%> <br>
				                <%=s.getGia()%> <br>
				          </td>
				          <%} %>
				          <%i++;
				            if(i<n){
				            	s= ds.get(i);
				           	         

							 %>
				          <td>
				             <img src="image_sach/<%=s.getAnh() %>"><br>
				              <a href="giohang.jsp">  <img src="mua.jpg"></a> <br>
				              <%=s.getTensach() %> <br>
				               <%=s.getTacgia()%> <br>
				                <%=s.getGia()%> <br>
				          </td>
						<%} %>
				       </tr>
				   <%} %>
				  </table>
			  </table>
	  </td>
	   <td valign="top" width="200">
         <form action="NavJAVA.jsp" method="post" align="right">
			<input type="text" name="txtTim" />
			<input type="submit" value="Search" name="but1" />
          </form>
       </td>
  </table>
</body>
</html>