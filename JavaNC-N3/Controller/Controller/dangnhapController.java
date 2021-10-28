package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bo.khachhangbo;

/**
 * Servlet implementation class dangnhapController
 */
@WebServlet("/dangnhapController")
public class dangnhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	      response.setCharacterEncoding("utf-8");
	      
	      khachhangbo khbo = new khachhangbo();
	      khachhangbean dsDn = null;
	      
	      String tk = request.getParameter("txtuser");
	      String pass = request.getParameter("txtpass");
	      HttpSession session=request.getSession();
        if(tk != null && pass != null){
	      	   dsDn = khbo.ktdn(tk, pass);
	      	if(dsDn!=null)
	      		session.setAttribute("kh", dsDn);
	      	else
	      		session.setAttribute("tb", "Dang nhap sai");
	      }
	      		
	      	RequestDispatcher rd= request.getRequestDispatcher("HtSachController");
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
