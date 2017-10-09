<%-- 
    Document   : Applications
    Created on : Jul 18, 2012, 6:16:29 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Applications</title>
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
 <%
    String customerid=(String)session.getAttribute("customerid");
     
   out.println("Welcome " +customerid+ " <a href=\"index.jsp\">Back to main</a>");
   
                
            %>
    <body>
    <form name="form4" action="phoneselectvalid.jsp" method="post">
<table border="0" aling="left"><tr>
        <td>
        <ol align="centre">       
          <b>pls select model</b></a></td><td>
<img src="images/mode1.jpg" width="70" height="70"><input type="radio" name="phone"  value="rs.1299"><br/><br/>        
 <img src="images/model3.jpg"width="70" height="70"><input type="radio" name="phone"  value="rs.1499"> 
 <img src="images/model5.jpg"width="70" height="70" ><input type="radio" name="phone" width="20" height="rs.30"  value="1999"><br/><br/> 
<img src="images/model6.jpg"width="70" height="70"><input type="radio" name="phone" width="20" height="30" value="rs.1000">  
<img src="images/model7.jpg"width="70" height="70"><input type="radio" name="phone" width="20" height="30" value="rs.4500"> <br/><br/>  
<img src="images/model8.jpg"width="70" height="70"><input type="radio" name="phone" width="20" height="30" value="rs.3500"> 
<img src="images/model9.jpg"width="70" height="70"><input type="radio" name="phone" width="20" height="30" value="rs.2500"><br/><br/> 
 customerid<input type="text" name="customerid" value=""><br/>
<br/>  <input type="submit" name="submit" value="submit">
                </td></tr> <hr>       
        <tr> <td> <li> <a href="TransferConnection.jsp"><b>Transfer Connection</b></a></li></td></tr>
            <tr>  <td><li><a href="CancelConnection.jsp"><b>Cancel Connection</b></a></li></td></tr>
     <tr> <td> <li> <a href="InformationAboutChangedNumbers.jsp"><b>To change Telecomm number</b></a></li></td>
 </ol></tr></form>
    </body>
</html>
