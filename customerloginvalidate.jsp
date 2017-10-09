<%-- 
    Document   : customerloginvalidate
    Created on : Aug 24, 2012, 12:57:25 AM
    Author     : Roja Pothina
--%>
<html>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"  import="java.util.*" %>
<%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>

<% String customerid, customerpassword;
    int i = 0;
    customerid = request.getParameter("customerid");
    customerpassword = request.getParameter("customerpassword");
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tele", "tele");
        stmt = con.createStatement();
        String sql = "Select customerid,password from customer_registration where customerid ="+customerid+"";
         System.out.println(sql);
        rs = stmt.executeQuery(sql);       
        while (rs.next()) {
            String dcustomerid = rs.getString("customerid");
             String dcustomerpassword = rs.getString("password");
             if(customerid.trim().equals(dcustomerid.trim())&& customerpassword.trim().equals(dcustomerpassword.trim()))
                                 {
                 out.println("Welcome " +customerid+ " <a href=\"index.jsp\">Back to main</a>");
                session.setAttribute("customerid",dcustomerid);
                
    response.sendRedirect("telecommmodels.jsp");
                    }
        }
    } catch (Exception e) {
        out.println("Exception : " + e.getMessage() + "");
    } 
    finally {
         if (con != null) {
            try {
                con.close();
            } catch (Exception ignored) { // ignore }
            }
        }
               }
%>
</html>