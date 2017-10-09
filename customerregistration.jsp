
<%-- 
    Document   : customerregistration.jsp
    Created on : Aug 20, 2012, 5:07:40 PM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
    <head>
       <head>
  <title>customer registration</title>
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
  
    <center>
             <i>customer registration</i></p>
         <form name="form2" action="customerregistervalid.jsp" method="post" >
        <table border="0" align="center">
            <tr><td>Customer Name</td>
                <td><input type="text" name="customername" value=""/></td></tr>
              <tr><td>Fathers Name</td>
                <td><input type="text" name="fathername" value=""/></td></tr>
          <tr><td>gender</td>
            <td><input type="radio" name="gender" value="m"/>male
             <input type="radio" name="gender" value="f" />female
                </td></tr>
            <tr><td>Address</td>
             <td><input type="text" name="address" value=""/></td></tr>
            <tr><td>Email Id</td>
             <td><input type="text" name="email" value=""/></td></tr> 
             <tr><td>occupation</td>
             <td><input type="radio" name="occupation" value="employee"/>employee
             <input type="radio" name="occupation" value="business" />business
             <input type="radio" name="occupation" value="Governmentemployee"/>Government employee
                          </tr>
                 <tr><td>Customer ID</td>
                 <td>
                     <input type="text" name="customerid" value=" "/>
                 </td></tr>
              <tr><td>Customer Password</td>
                 <td>
                     <input type="password" name="customerpassword" />
                 </td></tr>      
     <tr><td colspan="2"> </td></tr>  <br/><tr align="center"><td  colspan="2" align="center"><input type="submit" name="submit" value="Submit"/></td></tr>
        </table>
        </form>
    </center>
    </body>
</html>

