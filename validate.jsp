<%-- 
    Document   : validate
    Created on : Aug 23, 2012, 7:07:15 AM
    Author     : Roja Pothina
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>

<% String adminid, password;
    int i = 0;
    adminid = request.getParameter("adminid");
    password = request.getParameter("password");
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tele", "tele");
        stmt = con.createStatement();
        String sql = "select * from adminreg";
        rs = stmt.executeQuery(sql);
        while (rs.next()) {
            String dadminid = rs.getString("userid");
             String dpassword = rs.getString("password");
             if(adminid.equals(dadminid)&& password.equals(dpassword))
                                 {
    response.sendRedirect("common.jsp");
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