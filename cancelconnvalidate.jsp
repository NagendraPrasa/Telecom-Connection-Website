<%-- 
    Document   : cancelconnvalidate
    Created on : Aug 26, 2012, 5:08:47 AM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>

<% String canclecustomerid,cancelphonenumber,reason;
    int i = 0;
    canclecustomerid = request.getParameter("cancelcustomerid");
    cancelphonenumber = request.getParameter("cancelphonenumber");
    reason=request.getParameter("reason");
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tele", "tele");
        stmt = con.createStatement();
        String sql="update customer_registration set telecommnumber= "+cancelphonenumber.trim()+",reason='"+reason.trim()+"' where customerid="+canclecustomerid.trim()+"";
System.out.println(sql); 
          i= stmt.executeUpdate(sql);
    
                   {
    response.sendRedirect("index.jsp");
                                    }
                   }
%>