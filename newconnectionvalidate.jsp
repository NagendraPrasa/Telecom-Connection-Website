<%-- 
    Document   : newconnectionvalidate
    Created on : Aug 26, 2012, 3:46:40 AM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>
 <%
  String customername,fathername,phonenumber,address,email,customerid,purpose,date;
 int i=0;
 customername=request.getParameter("customername"); 
 fathername=request.getParameter("fathername");
  phonenumber=request.getParameter("phonenumber");
  address=request.getParameter("address");
  email=request.getParameter("email");
  customerid=request.getParameter("customerid");
  purpose=request.getParameter("purpose");
         Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","scott","tiger");
   stmt=con.createStatement();

   String sql="select customername,fathername,phonenumber,address,email values where customerid like='"+customerid+"'";
   System.out.println(sql);
   rs = stmt.executeQuery(sql);
   response.sendRedirect("index.jsp");
if (i==1)
           {
      %>
      <p>Successfully </p>
      <%
           }
      else
                   {
      %>
            
<p>Not Inserted</p>      
<%
      }
  %>