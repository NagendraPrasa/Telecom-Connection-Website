<%-- 
    Document   : telecommmodels
    Created on : Sep 12, 2012, 5:25:03 AM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  import="java.util.*" %>
<!DOCTYPE html>
<html><head>
  <title>Telecom connection system</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
   <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
    <%@ include file="menu/header.jsp" %>
    <%@ include file="menu/mainmenu.jsp" %>
    <%
    String customerid=(String)session.getAttribute("customerid");
     
   out.println("Welcome " +customerid+ " <a href=\"index.jsp\">Back to main</a>");
   
                
            %>
  <div id="page">
      <%--	<%@ include file="menu/isidemenu.jsp" %>	--%>
    <div class="width100 floaleft">
      <div class="gradient"><img src="images/growth.jpg" height="90" width="70"/>
          <table border="1" aling="left" height="20" width="80%"><tr><th height="50" width="50">Models</th><th>price list</th><th>connection packages</th></tr>
              <tr><td width="60" height="5"><marquee behaviour="scroll" direction="up"><img src="images/tele1.jpg" width="80" height="800"/><img src="images/tele6.jpg" width="80" height="800"/><img src="images/tele4.jpg"width="80" height="800"/></marquee></td><td>rs:1999 rs:2999 rs:4989</td><td rowspan="2"><p>For 3 Month rs:1099 incomming free...</p> <p>For 2month rs:2000 callertunes free...</p><p> For the year rs:6999...</p><p> For the 7months rs:3999</p></td><td rowspan="2" width="50%" height="10%">For  the order of the connection please click this link<a href="Applications.jsp">New connection</a></td></tr>
         <tr><td><marquee behaviour="scroll" direction="up"><img src="images/tele6.jpg" width="80" height="800"/><img src="images/tele4.jpg" width="80" height="800"/><img src="images/tele5.jpg" width="80" height="800"/></marquee></td><td>rs:2999 rs:3989 rs:4999</td></tr><tr><td colspan="3">Thank you for visiting Telecomm connection system</td></tr> 
    </table>  </div>
    </div>
  </div>
</div>
</body>
</html>