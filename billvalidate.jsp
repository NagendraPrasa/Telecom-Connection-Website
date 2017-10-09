<%-- 
    Document   : billvalidate
    Created on : Sep 4, 2012, 5:57:04 AM
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
 String  phonenumber;
   phonenumber = request.getParameter("phonenumber");
           Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();

   String sql="select customername,address,emailid,telebill from customer_registration where telecommnumber = "+phonenumber;
   System.out.println(sql);
   rs= stmt.executeQuery(sql);
   %>
<html>
 <head>
  <title>bill request</title>
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

        
    <body>
        <h1>bills</h1>
        <form action="index.jsp" name="bill" >
        <input type="text" name="phonenumber" value="">
        <input type ="submit" value="submit" name="submit">
       <table border="1" aling="center">
           <% while(rs.next())
                             {%>
             <tr><th>customername</th><th>address</th><th>emailid</th><th>telebill</th></tr>
             <tr><td><%=rs.getString("customername")%></td><td><%=rs.getString("address")%></td><td><%=rs.getString("emailid")%></td><td><%=rs.getInt("telebill")%></td></tr>
             <%}
   %>
</table> 
    </body>
</html>
