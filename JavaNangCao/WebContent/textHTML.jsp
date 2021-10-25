<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center" width="1000px" cellspacing="0">
   <tr>
      <td colspan="3" bgcolor="blue"> menu </td>
    </tr>
    <tr>
      <td valign="top" width="200px" bgcolor="gray"> menu trai 1 <hr>menu trai 2 </td>
      <td width="600px"> Noi dung <hr>Noi dung <hr>Noi dung <hr>Noi dung <hr>Noi dung <hr>Noi dung <hr> </td>
      <td valign="top" width="200px"> Tim kiem
      <img src = "img07.jpg" alt = "ảnh người đẹp:))"  >
      <a href="http://docbao.vn">Đọc báo</a><br> 
       <a href="tc.jsp?ts=tt">ád</a> <br>
      <a href="tc.jsp?ts=thethao">gvd</a><br>
      <a href="jsp.ppt">sàd</a>  
       </td>
       
    </tr>
   <tr>
      <td colspan="3"> Ban quyen: ..... </td>
      <form action="tc.jsp" method="post">
             User name: <input type="text" name="txtun" value="" placeholder="Enter a un"><hr>
             Pasword    <input type="password" name="txtpass" value="login"> <br>
             Giới tính    <input type="radio" name="txtpass" value="login"> <br>
             Sở thích   <input type="checkbox" name="txtpass" value="login"><br>
             Gửi kèm file   <input type="file" name="txtpass" value="login"><br>
              

               <input type="submit" name="btlogin" value="login">
              html5
              Email   <input type="email" name="txtpass" value=""><br>
              Ngay sinh   <input type="date" name="txtpass" value="login"><br>
              Tuoi <input type="number" name="txtpass" value="login"><br>
              
              Chọn quyền:
               <select name="s1">
                  <option value="1"> Admin</option>
                  <option selected value="2"> User </option>
                  <option> Khách</option>
               </select>
               <br>
               <textarea rows="10" cols="30"> gõ nội dung</textarea> <br>
               <input type="submit" name="btlogin" value="login">
         </form>
    </tr>  
</table>
</body>
</html>