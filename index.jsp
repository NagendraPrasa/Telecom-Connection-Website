<%-- 
    Document   : Main
    Created on : Jul 16, 2012, 6:04:17 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
  <title>Telecom connection system</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/mainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/isidemenu.jsp" %>
         <%

     String customerid=(String)session.getAttribute("customerid");
    if(customerid!=null)
        {
           out.println(customerid+" loged out, <a href=\"index.jsp\">Back</a>");
            session.removeAttribute("customerid");
            
        }
     else 
         {
         out.println("You are not login <a href=\"index.jsp\">Back</a>");
     }



%>  ]
    <div class="width75 floatRight">
      <div class="gradient">
        <h1>Get new Registered Here ..!</h1>
        <br/>
        <center>
        sign up if not <a href="customerregistration.jsp">registered.</a>
        </center>
        <br>
        <center>
        <img src="images/tele1.jpg" width="100" height="100"/>
        </br><table border="1" aling="center" width="10"><marquee direction="up"><p>Thanks for choosing the telecomm connection system</p><p>Now telecom provides the world services to the customers</p><p>Now Telecomm releages the new models phones releated customer requirements </p></marquee></table>
        </center></div>
    </div>
  </div>
</div>
<%@ include file="menu/footer.jsp" %>
</div>
</body></html>