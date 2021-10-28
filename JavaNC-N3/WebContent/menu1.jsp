<%@page import="bo.khachhangbo"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@page import="bo.khachhangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Quản Lí nhà sách </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
	.noidung{
		margin-top:50px;
	    display: grid;
	}
	.bang{
		position: relative;
	    margin-top: 24px;
	}
	.sinhvien{
		position: absolute;
	    left: 169px;
	    top: 0px;
	    width: 500px;
	}
</style>
<body>

	<%   
		request.setCharacterEncoding("utf-8") ;
    	response.setCharacterEncoding("utf-8");
    	String tk = request.getParameter("txttk");
    	String mk = request.getParameter("txtmk");
		loaibo lbo = new loaibo();
		sachbo sbo = new sachbo();
		khachhangbo khbo = new khachhangbo();
		khachhangbean dsDn = null;
		ArrayList<sachbean> ds = sbo.getsach();
		ArrayList<sachbean> kq = null ;
		String tukhoa = request.getParameter("tukhoa");
		if(tukhoa != null){
			kq = sbo.Tim(tukhoa);
		}else{
			kq = ds;
		}
		if(tk != null && mk != null){
	      	dsDn = khbo.ktdn(tk, mk);
	      	if(dsDn!=null)
	      		session.setAttribute("kh", dsDn);
	      	else
	      		session.setAttribute("tb", "Dang nhap sai");
	      }
	%>
	
	
	<nav class="navbar navbar-inverse">
       <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="menu1.jsp">Trang chủ</a></li>
      
      <li><a href="giohang1.jsp">Giỏ hàng</a></li>
      <li><a href="#">Thanh toán</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li>
      
        <a href='#'><span class='glyphicon glyphicon-user'></span> Sign Up</a>
     
      </li>
      <li>
      	<%
	    	khachhangbean kh=(khachhangbean)session.getAttribute("kh");
	    	if( kh!= null) {%>
	    		<a>Xin chao: <%=kh.getHoten()%></a>
	    		<%} else { %> 
	    		<a href="#" data-toggle="modal" data-target="#login"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a>
	    		<%if(session.getAttribute("tb") != null) {
	    			out.print("<script>alert('"+session.getAttribute("tb")+"');</script>" );
	    			}
	    		} %>
      </li>
     <%--  <li>
          <%
          if(tk !=null && mk != null ){
            		khachhangbean kh=khbo.ktdn(tk, mk);
            		if(kh!=null){
            			out.print("<a href='#'>Xin chào "+kh.getHoten()+"</a>");
            			
            		}else{
            			out.print("<a href='#' data-toggle='modal' data-target='#login'><span class='glyphicon glyphicon-log-in'></span>Login</a> <script> alert('Đăng nhập sai')</script>");
            		}
            	}else{
            		
            		out.print("<a href='#' data-toggle='modal' data-target='#login'><span class='glyphicon glyphicon-log-in'></span>Login</a>");
            	 		
            	}%>
             
      </li> --%>
    </ul>
  </div>
	</nav>
	<%
 
    
     String ml= request.getParameter("ml");
     String key= request.getParameter("key");
 
 
     if(ml!=null) ds= sbo.TimLoai(ml);
     else
    	 if(key!=null) ds=sbo.Tim(key);
  %>
<table width="1000" align="center">
 
    <tr> 
       <td valign="top" width="200"> 
              <table class="table table-hover">
                 <%for(loaibean loai: lbo.getloai()) {%>
                    <tr>
                      <td>
                        <a href="menu1.jsp?ml=<%=loai.getMaloai() %>">
                           <%=loai.getTenloai() %>
                        </a>
                      </td>
                    </tr>
                    <%} %>
             </table>
        </td>
         <td valign="top" width="600"> 
              <table class="table table-hover">
                  <%
                  int n=ds.size();
                  for(int i=0;i<n;i++) {
                    sachbean s=ds.get(i);
                  %>
<tr>
                       <td>
                            <img src=image_sach/<%=s.getAnh() %>><br>
                             <a href="giohang1.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
             				<button style="border:none; background-color:white;"><img src="image_sach/muasach.jpg"></button>
                             </a> 
                             <br>
                             <%=s.getMasach() %> <br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
 
						<%i++;
                         if(i<n){
                        	 s=ds.get(i);
 
                       %><td>
                            <img src=image_sach/<%=s.getAnh() %>><br>
	                         <a href="giohang1.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
	            			 <button style="border:none; background-color:white;"><img src="image_sach/muasach.jpg"></button>
                             </a> 
<br>
                             <%=s.getMasach() %> <br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
                       </td>
                       <%} %>
                       <%i++;
                         if(i<n){
                        	 s=ds.get(i);
 
                       %><td>
                            <img src=image_sach/<%=s.getAnh() %>><br>
                             <a href="giohang1.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTacgia()%>&gia=<%=s.getGia()%>">
             				<button style="border:none; background-color:white;"><img src="image_sach/muasach.jpg"></button>
                             </a> 
<br>
                             <%=s.getMasach() %> <br>
                             <%=s.getTensach() %> <br>
                             <%=s.getTacgia()%> <br>
                             <%=s.getGia()%> <br>
                       </td>
                       <%} %>
                    </tr>
                  <%} %>
              </table>
 
 
     <td valign="top" width="300"> 
        <form method="post" action="menu1.jsp">
 
        <label> Tìm kiếm: </label><br>
 <input name="key" type="text" class="form-control">
 <input name="but1" type="submit" value="Tìm kiếm" class="btn-primary">
 </form>                   
</table>     
         </td>
	
<div class="modal fade" id="login">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thông tin đăng nhập</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <form action="menu1.jsp" method="POST">
        Tên đăng nhập: <input type="text" name="txttk" class="form-control"><br>     
        Mật khẩu: <input type="password"   name="txtmk" class="form-control"><br>      
         
        <input type="submit"  name="but1" value="Đăng nhập" class="btn btn-primary">
    </form>
        </div>
                
      </div>
    </div>
 </div>
</body>
</html>