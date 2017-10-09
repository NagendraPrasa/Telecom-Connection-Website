<%-- 
    Document   : transferconnaddressvalidate
    Created on : Aug 26, 2012, 6:49:54 AM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>

<% String transfercustomerid,connectiontransfer;
    int i = 0;
    transfercustomerid = request.getParameter("transfercustomerid");
    connectiontransfer = request.getParameter("connectiontransfer");
        {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tele", "tele");
        stmt = con.createStatement();
        String sql="update customer_registration set transfer_address= '"+connectiontransfer.trim()+"' where customerid="+transfercustomerid.trim()+"";
System.out.println(sql); 
          i= stmt.executeUpdate(sql);
    
                   {
    response.sendRedirect("index.jsp");
                                    }
                   }
%>