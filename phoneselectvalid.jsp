<%-- 
    Document   : selectphonevalidate
    Created on : Aug 26, 2012, 11:41:17 PM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
       <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <%
  String phone ,customerid;
   int i=0;
phone=request.getParameter("phone");
  customerid=request.getParameter("customerid");
              Class.forName("oracle.jdbc.driver.OracleDriver");
                
              con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();
 String sql="update customer_registration set phonecost='"+phone.trim()+"' where customerid="+customerid+"";
System.out.println(sql); 
          i= stmt.executeUpdate(sql);
    
                   {
    response.sendRedirect("index.jsp");
                                    }
                     %>