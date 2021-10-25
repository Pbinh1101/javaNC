<%@page import="java.util.ArrayList"%>
<%@page import="bean.Khoabean"%>
<%@page import="bo.Khoabo"%>
<%@page import="bean.SinhVienbean"%>
<%@page import="bo.SinhVienbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" style="margin: 50px 0;">
  <form class="form-inline" action="">
    <div class="form-group">
      <label class="sr-only" for="txttk"></label>
      <input type="text" class="form-control" id="txttk" placeholder="Tìm sinh viên" name="timsv">
    </div>
    <button type="submit" class="btn btn-primary">Tìm kiếm</button>
  </form>

</div>

<%
      request.setCharacterEncoding("utf-8") ;
      response.setCharacterEncoding("utf-8");
      SinhVienbo svbo= new SinhVienbo();
      Khoabo kbo = new Khoabo();
      String mk =request.getParameter("mk");
      String timsv =request.getParameter("timsv");
 	  ArrayList<SinhVienbean> ds = new ArrayList<SinhVienbean>();
      if(mk!=null){
   			ds = svbo.htKhoa(mk);	
      }else if(timsv!=null){
    	     ds=svbo.timKiem(timsv);
      }else{
    	    ds = svbo.getsv();   
      }%>
  <table class="table">      
      <%  for(Khoabean k: kbo.getkhoa()){ %>
      <tr>
         <td>  
              <a href="htSinhVien.jsp?mk=<%=k.getMakhoa()%>"> 
              <%=k.getTenkhoa() %> </a>
         </td>
       </tr>
        <%} %>
  </table>
  
  
  
    <table class="table table-dark">
       <tr>
             <td>Mã sinh viên</td>
             <td>Họ tên</td>
             <td>Địa chỉ</td>
             <td>Điểm trung bình</td>
             <td>Mã lớp</td>
          </tr>     
      <%for(SinhVienbean sv: ds){ %>
         <tr>
             <td><%=sv.getMasv()%></td>
             <td><%=sv.getHoten()%></td>
             <td><%=sv.getDiachi()%></td>
             <td><%=sv.getDtb()%></td>
             <td><%=sv.getMalop()%></td>
          </tr> 
          <%} %>
     </table>
  
</body>
</html>