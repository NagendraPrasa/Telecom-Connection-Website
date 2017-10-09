<%-- 
    Document   : complaintvalidate
    Created on : Aug 28, 2012, 5:30:02 AM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <%
  String complaint,customer_id;
   int i=0;
 complaint=request.getParameter("complaint"); 
 customer_id=request.getParameter("customer");
         Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();
   String sql="insert into complaints_database(complaints,customer_id,cur_date) values('"+complaint+"','"+customer_id+"',SYSDATE)";
  // System.out.println(sql);
   i= stmt.executeUpdate(sql);
     if(i==1)
    {
         %>
         
         <p> your complaint is submitted....</p>
         <%   }
                %>