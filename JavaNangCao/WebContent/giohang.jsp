<%@page import="bo.GioHangbo"%>
<%@page import="bean.KhachHangbean"%>
<%@page import="bo.KhachHangbo"%>
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
<title>xử lý mua hàng</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8") ;
    response.setCharacterEncoding("utf-8");
    //lấy về mã sách, tên sách, tác giả, giá.
	String ms = request.getParameter("ms");
	String ts = request.getParameter("ts");
	String tg = request.getParameter("tg");
	String dongia = request.getParameter("gia");
	
	String msxoa = request.getParameter("msxoa");
	String mscn = request.getParameter("mscn");
	String slmoi = request.getParameter("slmoi");
	String xoaall = request.getParameter("xoaall");
	// tạo ra giỏ hàng.
	GioHangbo gh=null;
	if(session.getAttribute("gh")==null){
		gh=new GioHangbo();
	    session.setAttribute("gh", gh);
	}
	
	if(ms!=null && ts!=null && tg!=null && dongia!=null){	
       gh=(GioHangbo)session.getAttribute("gh");///gián sesion  ra biến
       gh.Them(ms, ts, tg, Long.parseLong(dongia), (long)1);// thao tác trên biến: hàm thêm
       session.setAttribute("gh", gh);
       response.sendRedirect("htgiohang.jsp");
	}
    if(msxoa!=null){
    	gh = (GioHangbo)session.getAttribute("gh");
    	gh.Xoa(msxoa);
    	session.setAttribute("gh", gh);
        response.sendRedirect("htgiohang.jsp");
    }
    
    //cap nhat
     if(mscn!=null && slmoi!=null){
    	gh = (GioHangbo)session.getAttribute("gh");
    	gh.Capnhat(mscn,Long.parseLong(slmoi));
    	session.setAttribute("gh", gh);
        response.sendRedirect("htgiohang.jsp");
    }
    if(xoaall != null){
    	gh = (GioHangbo)session.getAttribute("gh");
    	gh.XoaAll();
    	session.setAttribute("gh", gh);
        response.sendRedirect("htgiohang.jsp");
    }
    
      %>


</body>
</html>