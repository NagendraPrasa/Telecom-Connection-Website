<%-- 
    Document   : Success
    Created on : Oct 4, 2012, 4:17:43 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String msg=request.getParameter("msg");
%>

<head>
 <title>Success Page</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/mainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/isidemenu.jsp" %>
 
    <div class="width75 floatRight">
      <div class="gradient">
      
                   <pre style="color: green;font-size:large">Success:<%=msg%></pre>
               
             
      </div>
    </div>
  </div>
</div>
<%@ include file="menu/footer.jsp" %>
</body>
 </html>
