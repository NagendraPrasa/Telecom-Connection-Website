<%-- 
    Document   : requestforbilladmin
    Created on : Sep 4, 2012, 7:56:24 AM
    Author     : Roja Pothina
--%>
<html>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
 <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <% String  customerid,billgen;
   customerid = request.getParameter("customerid");
   billgen=request.getParameter("billgen");
               Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();
 String sql="update customer_registration set telebill="+billgen+" where customerid="+customerid+"";
  int i= stmt.executeUpdate(sql);
     if(i==1)
    {
         response.sendRedirect("common.jsp");
  // System.out.println(sql);
 
       }
   %>
</html>
