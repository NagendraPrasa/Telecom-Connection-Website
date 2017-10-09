<%-- 
    Document   : billrequest
    Created on : Sep 4, 2012, 4:57:47 AM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <form action="billvalidate.jsp" name="bill" >
        TelecomNumber<input type="text" name="phonenumber" value="">
        <input type ="submit" value="submit" name="submit">
           </body>
</html>
