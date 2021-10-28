package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.sachbean;
import bo.GioHangbo;
import bo.khachhangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class giohangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		HttpSession session = request.getSession();
		// tạo ra giỏ hàng.
		GioHangbo gh=null;
		if(session.getAttribute("gh")==null){
			gh=new GioHangbo();
		    session.setAttribute("gh", gh);
		}
		//them 1 sach
		if(ms!=null && ts!=null && tg!=null && dongia!=null){	
	       gh=(GioHangbo)session.getAttribute("gh");///gián sesion  ra biến
	       gh.Them(ms, ts, tg, Long.parseLong(dongia), (long)1);// thao tác trên biến: hàm thêm
	       session.setAttribute("gh", gh);
	       
		}
		//xoa 1 sach
	    if(msxoa!=null){
	    	gh = (GioHangbo)session.getAttribute("gh");
	    	gh.Xoa(msxoa);
	    	session.setAttribute("gh", gh);
	       
	    }
	    
	    //cap nhat
	     if(mscn!=null && slmoi!=null){
	    	gh = (GioHangbo)session.getAttribute("gh");
	    	gh.Capnhat(mscn,Long.parseLong(slmoi));
	    	session.setAttribute("gh", gh);
	        
	    }
	    //xoa all
	    if(xoaall != null){
	    	gh = (GioHangbo)session.getAttribute("gh");
	    	gh.XoaAll();
	    	session.setAttribute("gh", gh);
	        response.sendRedirect("HtSachController");
	        return;
	    }
		
	    loaibo lbo= new loaibo();
	    sachbo sbo= new sachbo();
	    khachhangbo khbo = new khachhangbo();
	   ArrayList<sachbean> ds= sbo.getsach();
	    
	    String ml=request.getParameter("ml");
	    String key=request.getParameter("timkiem");
	    if(ml!=null) ds=sbo.TimLoai(ml);
	    else
	  	  if(key!=null) ds= sbo.Tim(key); 
			/*
			 * RequestDispatcher rd= request.getRequestDispatcher("htgiohang.jsp");
			 * rd.forward(request, response);
			 */
		response.sendRedirect("HtGioHangController");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
