<%-- 
    Document   : adminstatus
    Created on : Aug 31, 2012, 4:23:28 AM
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

   String sql="select customername,fathersname,telecommnumber,address,emailid,reason,customerid from customer_registration";
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

        <a name="fluidity"></a>   <h1>connection status</h1>
   <table>
       <%
 while(rs.next())
  {
                  %>
     <form action="adminstatusvalidate.jsp" name="statusfrm" method="get">
       <table border="1" aling="center">
             <tr><th>customername</th><th>fathersname</th><th>phonenumber</th><th>currentaddress</th><th>emailid</th><th>purpose</th><th>customerid</th></tr>
             <tr><td><%=rs.getString("customername")%></td><td><%=rs.getString("fathersname")%></td><td><%=rs.getInt("telecommnumber")%></td><td><%=rs.getString("address")%></td><td><%=rs.getString("emailid")%></td><td><%=rs.getString("reason")%></td><td><%=rs.getString("customerid")%></td></tr>
             <tr><td>customerid<input type="text" name="customerid" value=""></td>
              <td>status</td><td colspan="3">
           pending  <input type="radio" name="status" value="pending"/>
             process<input type="radio" name="status" value="process" />
             finish<input type="radio" name="status" value="finish"/>
             </td>
             </tr>
 </select></td></tr>
<tr><td><input type="submit" value="submit"></td></tr>
     </table>
             </form>
           
             <%
}    
  %>  
       </body>
    
</html>
