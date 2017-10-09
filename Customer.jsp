<%-- 
    Document   : Customer
    Created on : Jul 18, 2012, 5:53:11 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Telecom Connection System</title>
    </head>
    <body>
      <%@include file="header.jsp"%>
      <ol>       
          <li>  <a href="Applications.jsp"><b>Applications</b></a><br><i>(New connection,transfer connection,cancel connection)</i></li>
          <li>          <a href="Entries.jsp"><b>Entries</b></a><br><i>(change number)</i></li>
          <li>            <a href="Enquiries.jsp"><b>Enquiries</b></a><br><i>(status,information about changed number)</i></li>
          <li>              <a href="Complaints.jsp"><b>Complaints</b></a><br><i>(complaints)</i></li>
                            </ol>
    </body>
</html>
