<%@page import="bo.GioHangbo"%>
<%@page import="bean.GioHangbean"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Menu</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li class="active"><a href="menu.jsp">Trang chủ</a></li>
				<li><a href="htgio.jsp">Giỏ hàng</a></li>
				<li><a href="#">Thanh toán</a></li>
				<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Đăng ký</a></li>
				<%
				khachhangbean kh = (khachhangbean) session.getAttribute("kh");
				if (kh != null) {
				%>
				<li><a href="#">Chào <%=kh.getHoten()%></a></li>
				<%
				} else {
				%>
				<li><a class="btn-link" data-toggle="modal"
					data-target="#myModal" href="#"> <span
						class="glyphicon glyphicon-log-in"></span> Đăng nhập
				</a></li>
				<%
				if (session.getAttribute("tb") != null) {
					out.print("<script>alert('" + session.getAttribute("tb") + "');</script>");
				}

				}
				%>
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
						<form action="KTDN.jsp" method="post">

							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Đăng nhập</h4>
								</div>
								<div class="form-group">
									<label for="user">Tài khoản</label> <input type="text"
										class="form-control" id="usr" name="txtun">
								</div>
								<div class="form-group">
									<label for="pwd">Mật khẩu</label> <input type="password"
										class="form-control" id="pwd" name="txtpass">
								</div>
								<div class="checkbox">
									<label><input type="checkbox" name="remember">Ghi
										nhớ đăng nhập</label>
								</div>
								<button type="submit" class="btn btn-default">Đăng nhập</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Huỷ bỏ</button>

								<div class="modal-footer"></div>
							</div>
						</form>
					</div>

				</div>
			</ul>
		</div>
	</nav>
	<%
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	loaibo lbo = new loaibo();
	sachbo sbo = new sachbo();
	String ms = request.getParameter("ms");
	String key = request.getParameter("txttk");
	ArrayList<sachbean> ds = sbo.getsach();
	ArrayList<sachbean> kq = null ;
	String tukhoa = request.getParameter("tukhoa");
	if(tukhoa != null){
		kq = sbo.Tim(tukhoa);
	}else{
		kq = ds;
	}
	%>
	<table width="1000" align="center">

		<tr>
			<td valign="top" width="200">
			<%-- 	<%
				/* GioHangbo gh1;
				if (session.getAttribute("gh") != null) {
					gh1 = (GioHangbo) session.getAttribute("gh");
					for (GioHangbean g1 : gh1.ds)
					/* 	/* out.print(g1.getMasach() + ":" + g1.getTensach() + ":" + g1.getSlmua()() + "<hr>"); */ */
				} */
				%> --%>
			</td>
		</tr>
	</table>
</body>
</html>