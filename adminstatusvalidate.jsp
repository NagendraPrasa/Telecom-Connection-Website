<%-- 
    Document   : adminstatusvalidate
    Created on : Sep 6, 2012, 10:43:15 PM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
       <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <%
  String customerid,status;
   int i=0;
 customerid=request.getParameter("customerid"); 
 status=request.getParameter("status");
   
          Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();

   String sql="update customer_registration set status='"+status+"'where customerid="+customerid+"";
   System.out.println(sql);
   i= stmt.executeUpdate(sql);
    response.sendRedirect("adminstatus.jsp");
                %>
           
