<%-- 
    Document   : admincomplaints
    Created on : Aug 31, 2012, 6:02:13 AM
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
   
           Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();

   String sql="select customername,fathersname,TELECOMMNUMBER,address,emailid,reason from customer_registration where customerid=1";
  // System.out.println(sql);
   rs= stmt.executeQuery(sql);
   %>
 <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head>
<body>
<div id="content">
        <%@ include file="menu/header.jsp" %>
        <%@ include file="menu/mainmenu.jsp" %>
    <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
    <div class="gradient">
    <h1>complaints</h1>
    </br>
   <%
 while(rs.next())
  {
                  %>
     
       <table border="1" style="border:#65EBFF;">
             <tr><th>Customer Name</th><th>Father's Name</th><th>Telecom Number</th><th>Address</th><th>E-Mail ID</th><th>Reason</th></tr>
             <tr><td><%=rs.getString("customername")%></td><td><%=rs.getString("fathersname")%></td><td><%=rs.getString("telecommnumber")%></td><td><%=rs.getString("address")%></td><td><%=rs.getString("emailid")%></td><td><%=rs.getString("reason")%></td></tr>
<%
}    
  %>       
   </table>
</body>
</html>
