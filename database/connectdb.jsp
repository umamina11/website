<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
 <%
     Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn= DriverManager.getConnection("jdbc:derby://localhost:1527/user","root2","1234");
    Statement st=conn.createStatement();
    ResultSet rs = st.executeQuery("Select * from details");
    
   try{
         while(rs.next())
         {
              out.print(rs.getString("email"));
         }
   }
   catch(Exception e){
       
   } 
%>