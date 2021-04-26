<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
     
     String email= request.getParameter("email");
     String username=request.getParameter("uname");
     String password=request.getParameter("psw");
     String confirmpassword= request.getParameter("pswrepeat");

try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/user","root2","1234");
    PreparedStatement ps= conn.prepareStatement("insert into details(email,username,password,confirmpassword)values(?,?,?,?)");
    ps.setString(1,email);
    ps.setString(2,username);
    ps.setString(3,password);
    ps.setString(4,confirmpassword);
    int x=ps.executeUpdate();
      if(x > 0){
          out.println("Registration done successfully...");
       
      }else{
          out.println("Registration failed...");
      }
    
 }catch(Exception e){
      out.print(e);
 
 }
%>
