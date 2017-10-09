<%-- 
    Document   : customerregistervalid
    Created on : Aug 24, 2012, 5:10:34 AM
    Author     : Roja Pothina
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
       <%!
 private Connection con;
 private Statement stmt;
 private ResultSet rs;
 %>
  <%
  String customername,fathername,gender,address,email,customerid,customerpassword,occupation;
   int i=0;
 customername=request.getParameter("customername"); 
 fathername=request.getParameter("fathername");
  address=request.getParameter("address");
  email=request.getParameter("email");
  gender=request.getParameter("gender");
  occupation=request.getParameter("occupation");
  customerid=request.getParameter("customerid");
  customerpassword=request.getParameter("customerpassword");
        Class.forName("oracle.jdbc.driver.OracleDriver");
   con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","tele","tele");
   stmt=con.createStatement();

   String sql="insert into customer_registration(customername,fathersname,gender,address,emailid,occupation,customerid,password)values('"+customername+"','"+fathername+"','"+gender+"','"+address+"','"+email+"','"+occupation+"','"+customerid+"','"+customerpassword+"')";
  System.out.println(sql);
   i= stmt.executeUpdate(sql);
        if(i==1)
    { response.sendRedirect("CustomerLogin.jsp");
                           %>
          
          <%--     <p>Registered successfully</p>
                <a href="CustomerLogin.jsp">Go to customer login page</a>
             --%>                         
        <%
        
       }
   else
             {%>
       <p>Registration UnSuccessful</p>
                <a href="CustomerLogin.jsp">Go to customer login page</a>
   
        <% 
   }
       
    %>
     