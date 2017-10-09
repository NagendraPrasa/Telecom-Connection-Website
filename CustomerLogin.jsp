<%-- 
    Document   : Customer
    Created on : Jul 16, 2012, 6:18:39 PM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>
<script>
   function validate()
   {
       var customerid=document.forms.customerid.value;
       var password=document.forms.password.valueO;
       if(customerid=="")
           {
           alert("entr username");
       return false;
           }
           if(password=="")
               {
                   alert("enter password");
                   return false;
               }
               return true;
       
   }
</script>
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

        <h1>Login for customer ..!</h1>
         <%
        String customerid =  (String)session.getAttribute("customerid");
       
        if(customerid!=null)
            {
             out.println("Welcome  "+customerid+"  , <a href=\"telecommmodels.jsp\" >Logout</a>");
            }
        else 
            {
            %>
		
     
    <body>
      
               <center>
        <form action="customerloginvalidate.jsp" method="POST" onsubmit="javascript:return validate()">
       costomer login               
            <table>
                <tr><td>Customer ID</td>
                <td><input type="text" name="customerid" value=""/></td></tr>
                <tr><td>Password</td>
                <td><input type="password" name="customerpassword" value=""/></td></tr>
                <tr><td colspan="2"><input type="submit"  name="submit" value="submit"/></td></tr>
            </table>
        </form>
                   <% 
            }
        
            
            %>
            </center>
    </body>
</html>
