<%-- 
    Document   : changenumbervalidate
    Created on : Aug 28, 2012, 7:01:20 AM
    Author     : Roja Pothina
--%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>
<% String sno,sname,oldnumber,newnumber ;
int i=0;
sno=request.getParameter("sno");
sname=request.getParameter("sname");
oldnumber=request.getParameter("oldnumber");
newnumber=request.getParameter("newnumber");
Class.forName("oracle.jdbc.driver.OracleDriver");
 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ram","ram");
  stmt=con.createStatement();
String sql="insert into customer_database(sno,sname,oldnumber,newnumber) values('"+sno+"','"+sname+"','"+oldnumber+"','"+newnumber+"')";
   i= stmt.executeUpdate(sql);
  %>