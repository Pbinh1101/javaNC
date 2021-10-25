<%@page import="bean.KhachHangbean"%>
<%@page import="bo.KhachHangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Trang chủ nhà sách Minh khai</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <%
    request.setCharacterEncoding("utf-8") ;
    response.setCharacterEncoding("utf-8");
    
    String tk = request.getParameter("txtuser");
    String pass = request.getParameter("txtpass");
    loaibo lbo= new loaibo();
    sachbo sbo= new sachbo();
    KhachHangbo khbo = new KhachHangbo();
    ArrayList<sachbean> ds= sbo.getsach();
    String ml=request.getParameter("ml");
    String key=request.getParameter("timkiem");
    if(ml!=null) ds=sbo.TimLoai(ml);
    else
  	  if(key!=null) ds= sbo.Tim(key);
      %>
     
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="menu.jsp">Trang chủ</a></li>
  
      <li><a href="htgiohang.jsp">Giỏ hàng</a></li>
      <li><a href="thanhtoan.jsp">Thanh toán</a></li>
      <li><a href="lichsu.jsp">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li>
        <%
           if(tk != null && pass != null) {
        	   KhachHangbean kh = khbo.Kiemtrakh(tk, pass);
        	   if(kh != null){
        		   session.setAttribute("ktkh", kh);        		   
        	   }
        	   else {
        		   session.setAttribute("tb", "Thông tin đăng nhập sai");
        	   }
           } 
           KhachHangbean ktkh = (KhachHangbean)session.getAttribute("ktkh");
           if(ktkh != null) {
        	   out.print("<a>Xin Chào " +ktkh.getHoten()+ "</a>");
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
             if(ktkh != null) {
          	   out.print("<a href='#'style = 'display: none;' data-toggle='modal' data-target='#myModaldangnhap'><span class='glyphicon glyphicon-log-in'></span> Đăng ký</a>");
             }else {
          	   out.print("<a href='#' data-toggle='modal' data-target='#myModaldangnhap'><span class='glyphicon glyphicon-log-in'></span>Đăng ký</a>");
          	   
             }
          	 %>
      </li>
      
    </ul>
  </div>
</nav>


   
    
    <table class = "table">
    <tr>
       <td valign="top" width="200">
            <table class= "table table-hover">
                    <%
               for(loaibean loai: lbo.getloai()){
           %>
               <tr>
                  <td>
                      <a  href="menu.jsp?ml=<%=loai.getMaloai()%>">
                         <%=loai.getTenloai()%>
                      </a> 
                  </td>
               </tr>
               <%} %>
            </table>
       </td>
       <td valign="top" width="600">
			  <table class = "table table-hover">
			     	<%
			      int n=ds.size();
			     for(int i=0;i<n;i++){
			      sachbean s= ds.get(i);
			     %>
			       <tr>
			          <td>
			             <img src="image_sach/<%=s.getAnh() %>"><br>
			              <a href="giohang.jsp?ms=<%=s.getMasach()%>&tg=<%=s.getTacgia()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">  <img style = "padding-top:8px" src="image_sach/datmua.jpg"></a> <br>
			             Tên sách: <%=s.getTensach() %> <br>
			              Tác giả: <%=s.getTacgia()%> <br>
			               Giá sách: <%=s.getGia()%> <br>
			          </td>
                        <%i++;
			            if(i<n){
			            	s= ds.get(i);
			           	          %>
			          <td>
			             <img src="image_sach/<%=s.getAnh() %>"><br>
			              <a href="giohang.jsp?ms=<%=s.getMasach()%>&tg=<%=s.getTacgia()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">  <img style = "padding-top:8px" src="image_sach/datmua.jpg"></a> <br>
			             Tên sách: <%=s.getTensach() %> <br>
			               Tác giả: <%=s.getTacgia()%> <br>
			               Giá sách: <%=s.getGia()%> <br>
			          </td>
			          <%} %>
			          <%i++;
			            if(i<n){
			            	s= ds.get(i);
			           	         %>
			          <td>
			             <img src="image_sach/<%=s.getAnh() %>"><br>
			              <a href="giohang.jsp?ms=<%=s.getMasach()%>&tg=<%=s.getTacgia()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">  <img style = "padding-top:8px" src="image_sach/datmua.jpg"></a> <br>
			              Tên sách: <%=s.getTensach() %> <br>
			               Tác giả: <%=s.getTacgia()%> <br>
			               Giá sách: <%=s.getGia()%> <br>
			          </td>
                       <%} %>
			          
			       </tr>
			   <%} %>
			  </table>
 </td>
	   <td valign="top" width="200">
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
        <form action="menu.jsp" method="POST">
        Tên đăng nhập: <input type="email" placeholder="Nhập địa chỉ email" name="txtuser" class="form-control"><br>     
        Mật khẩu: <input type="password"  placeholder="Nhập mật khẩu" name="txtpass" class="form-control"><br>      
        <input class="form-check-input" type="checkbox" name="remember"> Remember me <br>    
        <input type="submit" name="btn" value="Đăng nhập" class="btn btn-primary">
    </form>
        </div>
                
      </div>
    </div>
 </div>
 <div class="modal fade" id="myModaldangky">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thông tin đăng kí</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
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
 </div>
</body>
</html>