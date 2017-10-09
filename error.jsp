<%-- 
    Document   : error
    Created on : Sep 28, 2012, 5:52:27 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String msg=request.getParameter("msg");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <link href="store.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="color" id="color">
        <form  name="error" action="">
           <center>
            <table border=1  style="width: 90%;">
           <tr>
               <td style="width: 100%;"><%@include  file="header.jsp" %><td></tr>
           </table >
           <table border=1  style="width:90%;">
           <tr style="height: 400px">
               <td style="width:10%;text-align: left;vertical-align: text-top" >
                   <table border="1" width="40%">
                   <tr >
                       <th class="menu" style="vertical-align: top;width: 20%;color:#ffffff;font-size:large">Menu</th>
                       </tr>
                       <tr>
                       <td>
                           <div id="menuContainer">
                           <ul>
                               <li><a class="changeBlue" href="index.jsp" onmouseover="">Home</a> </li>
                               <li><a  class="changeBlue"   href="admin_login.jsp">Stockist</a> </li>
                                <li><a class="changeBlue" href="dealer_login.jsp">Dealer</a></li>
                           </ul>
                               </div>
                         </td>
                   </tr>
                   <tr>
                       <td><img src="images/jhonson-logo.jpg" alt="jhonson image" width="300" height="300"/> </td>
                       </tr>
                     </table>
                    </td>
               <td style="width:60%;text-align: left;vertical-align: text-top" >
                   <pre style="color: red;font-size:large">Error:<%=msg%></pre>
               
               </td>
           </tr>
           <tr>
               <td colspan="2"><%@include  file="footer.jsp" %></td>
               </tr>
    </table>
           </center>
        </form>>
           </body>
</html>
