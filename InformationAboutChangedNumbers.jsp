<%-- 
    Document   : InformationAboutChangedNumbers
    Created on : Aug 6, 2012, 5:52:07 PM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
  <title>change number</title>
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

    
        <title>Telecom connection system</title>
    </head>
    <body>
        <form name="form7" action="informationaboutchangevalidate.jsp">
        <h1>Information About Changed Number</h1>
    <table border="0" cellpadding="10" cellspacing="10">
        <tr><td>customerid<input type="text" name="customerid" value=""></td>
                <tr> <td>old number<input type="text" name="phonenumber" value=""></td>
  </tr>       <tr>    <td>reason for changenumber<textarea name="changenumber" value=""></textarea></td>
        </tr><tr><td><input type="submit" name="submit" value="submit"></td>
</tr> </table>
        </form>
    </body>
</html>
