<%@page import="bean.khachhangbean"%>
<%@page import="bean.GioHangbean"%>
<%@page import="bo.GioHangbo"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bo.khachhangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%><%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Giỏ hàng</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8") ;
    response.setCharacterEncoding("utf-8");
    
    
      %>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li ><a href="HtSachController">Trang chủ</a></li>
  
      <li class="active"><a href="giohangController">Giỏ hàng</a></li>
      <li><a href="thanhtoan.jsp">Thanh toán</a></li>
      <li><a href="lichsu.jsp">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
          <li>
        <%          
           khachhangbean kh = (khachhangbean)session.getAttribute("kh");
           if(kh != null) {
        	   out.print("<a href = 'dangnhapController'>Xin Chào " +kh.getHoten()+ "</a>");
        	   
           }else {
        	   out.print("<a href='#' data-toggle='modal' data-target='#myModaldangnhap'><span class='glyphicon glyphicon-log-in'></span> Đăng nhập</a>");
        	   if(session.getAttribute("tb")!= null){
        		   out.print("<script>alert('"+session.getAttribute("tb")+"')</script>");
        	   }
           }
          %>         	           
      </li>
      <li >
          <% 
             if(kh != null) {
          	   out.print("<a href='#' style = 'display: none;' data-toggle='modal' data-target='#myModaldangky'><span class='glyphicon glyphicon-log-in'></span> Đăng ký</a>");
             }else {
          	   out.print("<a href='#' data-toggle='modal' data-target='#myModaldangky'><span class='glyphicon glyphicon-log-in'></span>Đăng ký</a>");
             }
          	 %>
      </li>
          
       </li>
      
    </ul>
  </div>
</nav>
    <table class = "table">
    <tr>
       
   <td valign="top" width="60%">
	<table class= "table table-dark table-striped"> 
        <tbody>
         <%
     		GioHangbo ghtam = (GioHangbo)session.getAttribute("gh");
    		if(ghtam!=null){
    			ArrayList<GioHangbean> list  = ghtam.ds;
    			for(GioHangbean g:list){
       %>
    	<tr>		
    	
		<td valign="top"><span style="color:black;"><b><%=g.getTensach() %></b></span><br>
		<span>Tác giả: <%=g.getTacgia()%></span>
		<form method="post" action="giohangController">
		<b>Giá: <span style="color:#6d2524"><%=g.getGia() %></span></b>đ x Số lượng: 
		 <input type="hidden" name="mscn" value=<%=g.getMasach()%>>
		 <input type="number" name="slmoi" style="width:90px; height: 34px" value=<%=g.getSlmua()%>>  
		 <button class="btn btn-primary" type="submit" name = "capnhat">Cập nhật</button>
		 
		  </form>
		   <a class = "btn btn-primary" href="giohangController?msxoa=<%=g.getMasach()%>">Trả lại</a></span>
		</td></tr>
    	<%		}
    			
    		}%>
   	</tbody>
   	</table>	
   	
    <%
    	if(ghtam!=null){
    		out.print("<div><b>Tổng : "+ghtam.Tongtien()+"đ<b></div>");
    	}
    
    %>
    <div >
           <%    
       if(ghtam == null) {
    	   out.print("<a class = 'btn btn-primary' style = 'margin-right: 10px' href = 'HtSachController' >Mua sách tại đây</a>");
    	   out.print("<a class = 'btn btn-primary' style = 'display:none;' margin-right: 10px;' href = 'thanhtoan.jsp' >Thanh Toán</a>");
    	   out.print("<a class = 'btn btn-primary' style = 'display:none;' href= 'giohangController?xoaall="+ghtam+"'>Trả lại toàn bộ</a>");
    	   
       }else {
    	   out.print("<a class = 'btn btn-primary'  style = 'margin-right: 10px' href = 'HtSachController' >Tiếp tục mua hàng </a>");
    	   out.print("<a class = 'btn btn-primary' style = ' margin-right: 10px;' href = 'thanhtoan.jsp' >Thanh toán</a>");
    	   out.print("<a class = 'btn btn-primary' href= 'giohangController?xoaall="+ghtam+"'	>Trả lại toàn bộ</a>");
       }      
       %>
    </div> 
 </td>
 <td valign="top" width="20%">
  <form class="form-inline" action="">
    <div class="form-group">
      <label class="sr-only" for="txttk"></label>
      <input type="text" class="form-control" id="txttk" placeholder="Tìm Kiếm" name="timkiem">
    </div>
    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
  </form>
   </td>
 </table>
   

<div class="modal fade" id="myModaldangnhap">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thông tin đăng nhập</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <form action="dangnhapController" method="POST">
        Tên đăng nhập: <input type="text" placeholder="Nhập địa chỉ email" name="user" class="form-control"><br>     
        Mật khẩu: <input type="password"  placeholder="Nhập mật khẩu" name="pass" class="form-control"><br>      
        <input class="form-check-input" type="checkbox" name="remember"> Remember me <br>    
        <input type="submit" name="btn" value="Đăng nhập" class="btn btn-primary">
          </form>
        </div>
                
      </div>
    </div>
 </div>
 <!-- <div class="modal fade" id="myModaldangky">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        Modal Header
        <div class="modal-header">
          <h4 class="modal-title">Thông tin đăng kí</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        Modal body
        <div class="modal-body">
        <form action="ktdk.jsp" method="POST">
        Tên đăng nhập: <input type="email" placeholder="Nhập địa chỉ email" name="txtuser1" class="form-control"><br>
        Mật khẩu: <input type="password"  placeholder="Nhập mật khẩu" name="txtpass1" class="form-control"><br>
        Nhập lại mật khẩu: <input type="password"  placeholder="Nhập lại mật khẩu" name="txtpassretype" class="form-control"><br>
        <input type="submit" placeholder="Nhập mật khẩu" name="but1" value="Đăng ký" class="btn btn-primary">
    </form>
        </div>
                
      </div>
    </div>
 </div> -->
</body>
</html>