<%-- 
    Document   : requestbilladminvalidate
    Created on : Sep 5, 2012, 12:59:05 AM
    Author     : Roja Pothina
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
 <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <% String  customerid;
   customerid = request.getParameter("customerid");
               Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();
  String sql="select customername,fathersname,TELECOMMNUMBER,address,emailid from customer_registration where customerid="+customerid+"";
   // System.out.println(sql);
   rs= stmt.executeQuery(sql);
   %>
<html>
    <head>
  <title>generate bills</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet"><div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/mainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">

        <a name="fluidity"></a>
    
</head><body>
<form action="requestforbilladmin.jsp" name="billgenerate" method="post">    <table>
       <%
 while(rs.next())
  {
                  %>
     
       
             <tr><th>customername</th><th>fathersname</th><th>phonenumber</th><th>currentaddress</th><th>emailid</th><th>purpose</th><th>customerid</th></tr>
             <tr><td><%=rs.getString("customer_name")%></td><td><%=rs.getString("fathers_name")%></td><td><%=rs.getInt("phonenumber")%></td><td><%=rs.getString("current_address")%></td><td><%=rs.getString("emailid")%></td><td><%=rs.getString("purpose")%></td><td><%=rs.getString("customerid")%></td></tr>
<%
}    
  %>       
   </table>

              
       
             <br/>
             <br/>
             <br/>
        customerid<input type="text" name="customerid" value="">
        billamount<input type="text" name="billgen" value="">
               <input type ="submit" value="submit" name="submit"> 
              
      
        
        
         </form>
            </body>
        </html>
 
