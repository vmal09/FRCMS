<%-- 
    Document   : adminprofile
    Created on : Jan 5, 2022, 9:15:48 PM
    Author     : AATHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.Admin"%>

<% Admin admin = (Admin) session.getAttribute("logAdmin");
    if (admin == null) {
        response.sendRedirect("index.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h3>Your Account ID: <%= admin.getId()%> </h3>
        <h3>Your Email: <%= admin.getEmail()%> </h3>
        
    </body>
</html>
