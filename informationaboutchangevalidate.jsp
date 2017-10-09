<%-- 
    Document   : informationaboutchangevalidate
    Created on : Aug 30, 2012, 3:26:07 AM
    Author     : Roja Pothina
--%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>adminlogin</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/mainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">

        <a name="fluidity"></a>
       <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <%
  String customerid,complaints,oldnumber;
   int i=0;
 customerid=request.getParameter("customerid");
complaints=request.getParameter("changenumber"); 
oldnumber=request.getParameter("phonenumber"); 
 Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();
   String sql="insert into COMPLAINTS_DATABASE(customer_id,cur_date,complaints,oldnumber) values('"+customerid+"',SYSDATE,'"+complaints+"','"+oldnumber+"')";
  // System.out.println(sql);
   i= stmt.executeUpdate(sql);
     if(i==1)
    {
       %>
       <p>your number is succesfully changed..</p>
           <%
     }
                %>

      </body>
      </html>