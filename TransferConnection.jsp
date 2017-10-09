<%-- 
    Document   : TransferConnection
    Created on : Jul 30, 2012, 5:56:33 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <title>customerlogin</title>
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
        <form action="transferconnaddressvalidate.jsp" name="form4"> 
        <h1>Transfer Connection</h1>
        <table>
            <tr>
                <td>Customer Id</td>
                <td><input type="text" name="transfercustomerid" value=" "/></td>
            </tr>
                    <tr>
             <td>Connection Transfer</td>
             <td><textarea name="connectiontransfer"  value="">Enter your transfer address</textarea></td>
         </tr>
         <tr>
             <td><input type="submit" name="submit" value="submit"/></td>
         </tr>
        </table>
        </form>
    </body>
</html>
