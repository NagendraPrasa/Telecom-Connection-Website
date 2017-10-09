<%-- 
    Document   : NewConnection
    Created on : Jul 18, 2012, 6:25:03 PM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <%--
  String customername,fathername,phonenumber,address,email,customerid,customerpassword,conformpassword;
 int i=0;
 customername=request.getParameter("customername"); 
 fathername=request.getParameter("fathername");
  phonenumber=request.getParameter("phonenumber");
  address=request.getParameter("address");
  email=request.getParameter("email");
  customerid=request.getParameter("customerid");
  customerpassword=request.getParameter("customerpassword");
  conformpassword=request.getParameter("conformpassword");
       Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","store","store");
   stmt=con.createStatement();

   String sql="insert into customerform (customername,fathername,phonenumber,address,email,customerid,customerpassword,conformpassword) values('"+customername+"','"+fathername+"','"+phonenumber+"','"+address+"','"+email+"','"+customerid+"',"+customerpassword+","+conformpassword+")";
   //System.out.println(sql);
   i= stmt.executeUpdate(sql);
if (i==1)
           {
      %>
      <p>Successfully Inserted</p>
      <%
           }
      else
                   {
      %>
            
<p>Not Inserted</p>      
<%
      }
  --%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Details</title>
    </head><html>

    <body>
         <%@include file="header.jsp"%>
         <form action="index.jsp" method="get">
             <%-- <h1 align="centre" style="">Customer Connection Form</h1> --%>
        new connetion
        <center>
        <table >
            <tr><td>Customer ID</td>
                 <td>
                     <input type="text" name="customerid" value=" "/>
                 </td></tr>
             <tr><td>Customer Name</td>
                <td><input type="text" name="customername" value=""/></td></tr>
              <tr><td>Fathers Name</td>
                <td><input type="text" name="fathername" value=""/></td></tr>
          <tr><td>Phone Number</td>
                <td><input type="text" name="phonenumber" value=""/></td></tr>
            <tr><td>Address</td>
             <td><input type="text" name="address" value=""/></td></tr>
            <tr><td>Email Id</td>
             <td><input type="text" name="email" value=""/></td></tr> 
             <tr><td>Purpose</td>
             <td><input type="radio" name="purpose"  value="residence" />Residence
             <input type="radio" name="purpose" value="business"/>Business
             <input type="radio" name="purpose" value="government"/>Government
             <input type="radio" name="purpose" value="psu"/>PSU</td>
             </tr>
             <tr>
                 <td>Date</td><td><input type="text" name="date">ex:26-AUG-12
                       </td><tr>
                    <tr align="center"><td ><input type="submit" name="submit" value="Submit"/></td></tr>
      </table>
        </form>
   </center> </body>
</html>
