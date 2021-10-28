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

import bean.khachhangbean;
import bean.loaibean;
import bean.sachbean;
import bo.khachhangbo;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class HtSachController
 */
@WebServlet("/HtSachController")
public class HtSachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HtSachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
	      response.setCharacterEncoding("utf-8");
		  loaibo lbo= new loaibo();
	      sachbo sbo= new sachbo();
	      //sai sachbo lay sach va tim kiem
	      ArrayList<sachbean> dssach= sbo.getsach();
	      String ml=request.getParameter("ml");
	      String key=request.getParameter("timkiem");
	      if(ml!=null) dssach=sbo.TimLoai(ml);
	      else
	    	  if(key!=null) dssach= sbo.Tim(key);
          //sai loaibo lay loai ve
	      ArrayList<loaibean> dsloai=lbo.getloai();
	      
	     
	      	  
          request.setAttribute("dsloai", dsloai);
	      request.setAttribute("dssach", dssach);
	      
	      
	      RequestDispatcher rd= request.getRequestDispatcher("menu.jsp");
			rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
