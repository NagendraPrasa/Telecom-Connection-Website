<%-- 
    Document   : CancelConnection
    Created on : Jul 30, 2012, 6:20:59 PM
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
               <form action="cancelconnvalidate.jsp" name="form3"> 
           <h1>  cancel Connection</h1><table>
            <tr>
                <td>Customer Id</td>
                <td><input type="text" name="cancelcustomerid" value=" "/></td>
            </tr>
            <tr>
                <td>telecomm number</td>
                <td><input type="text"  name="cancelphonenumber" value=" "/></td>
         </tr>
         <tr>
             <td>Reason</td>
             <td><input type="text" name="reason"  value="">Enter reason</textarea></td>
         </tr>
          <tr>
             <td><input type="submit" name="" value="submit"/></td>
         </tr>
        </table>
        </form>
    </body>
</html>
