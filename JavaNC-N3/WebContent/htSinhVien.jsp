<%@page import="java.util.ArrayList"%>
<%@page import="bo.khoabo"%>
<%@page import="bean.khoabean"%>
<%@page import="bean.SinhVienbean"%>
<%@page import="bo.SinhVienbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

  <%
  	request.setCharacterEncoding("utf-8");
  	response.setCharacterEncoding("utf-8");	
  
    SinhVienbo svbo= new SinhVienbo();
  	khoabo kbo= new khoabo();
  	String mk = request.getParameter("mk");
  	String tsv =request.getParameter("timkiem");
  	
  %>
  
 <table class="table" align="center" cellspacing="0" width="1000">
     <tr>
     <form action="htSinhVien.jsp">
    <div class="form-group">
      
      <input type="text" class="form-control" id="email" placeholder="Tìm kiếm" name="timkiem">
    </div>

    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
  </form>
     </tr>
 
    <tr>
        <td >
            <%for(khoabean k: kbo.getkhoa()){ %>
               <a href="htSinhVien.jsp?mk=<%=k.getMakhoa()%>">  <%=k.getTenkhoa() %> </a><hr>
            <%} %>
       </td>
      </tr>
   <tr>
     <table class="table">
       <%
       ArrayList<SinhVienbean> list = new ArrayList<SinhVienbean>();
       if(mk!=null){
    	   list = svbo.htsvkhoa(mk);
       }
       else if(tsv!=null){
    	   list = svbo.tk(tsv);
       } else {
    	   list = svbo.getsv();
       }
       for(SinhVienbean sv: list){ %>
         <tr>
            <td><%=sv.getMaSV() %> </td>
             <td><%=sv.getHoten() %> </td>
 			 <td><%=sv.getDiachi()%> </td>
             <td><%=sv.getDtb() %> </td>
             <td><%=sv.getMalop() %> </td>
          </tr> 
          <%} %> 
        </table>
    </tr>
  
 
</table>
</body>
</html>