<%-- 
    Document   : Complaints
    Created on : Aug 6, 2012, 5:49:20 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
  <title>complaints</title>
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
       
        <form action="complaintvalidate.jsp" name="form5" >
       
        <table>
            <tr><td>Customer ID </td><td><input type="text" name="customer" value="" id="customer"/></td></tr>
           <tr><td>Complaint</td>
               <td   colspan="2" ><textarea rows="10" coloumns="50"   name="complaint" value="please write ur phonenumber,customerid,address must..."/>
        </textarea><tr><br/><br/>
             <td   colspan="2" ><input type="submit" name="submit" value="submit" /></td>
         </tr>
        </table>
        </form>
    </body>
</html>



