<%-- 
    Document   : Admin
    Created on : Jul 16, 2012, 6:10:13 PM
    Author     : Roja Pothina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <%!private Connection con;
    private Statement stmt;
    private ResultSet rs;
%>
<script>
   function validate()
   {
       
      var adminid=form1.adminid.value;
      var password=form1.password.value;
      if(adminid.length==3)
          {
       alert("enter adminid");
       form1.adminid.focus();
       return false;
          }
          else if(adminid=="")
                       {
         alert("pls enter adminid");
         form1.adminid.focus();
         return false;
                                }
                                else if(password.length==4)
                                    {
                                        alert("enter password");
                                        form1.password.focus();
                                        return false;
                                    }
       else if(password=="")
           {
               alert("pls enter password");
               form1.password.focus();
               return false;
           }
           return true;
   }
</script>
<head>
  <title>adminlogin</title>
  <link media="screen, projection, tv " href="css/html.css" type="text/css" rel="stylesheet">
  <link media="screen, projection, tv" href="css/layout.css" type="text/css" rel="stylesheet">
</head><body>
<div id="content">
<%@ include file="menu/header.jsp" %>
  <%@ include file="menu/mainmenu.jsp" %>
  <div id="page">
	<%@ include file="menu/sidemenu.jsp" %>	
    <div class="width75 floatRight">
      <div class="gradient">

        <a name="fluidity"></a>

        <h1>Login only for Admin ..!</h1>
		
   
    
        <form name="form1" action="validate.jsp" method="post" id="AdminLogin.jsp"onSubmit="return validate()" >
            <div style="float: none">  <fieldset style="width:450px">
                <legend>Login</legend>
            <table align="right" width="350px" border="0">
                <tr><td>adminid</td>
                <td><input type="text" name="adminid" /></td></tr>
                <tr><td>password</td>
                <td><input type="password" name="password"/></td></tr>
                <tr><td><input type="submit"  name="submit" value="submit" /></td></tr>
                  </table></fieldset></div> 
        </form>
        
        
         <div>
                 </body>
   
</html>
