<%-- 
    Document   : assignC
    Created on : Jan 14, 2022, 11:46:33 PM
    Author     : AATHI
--%>
<%
           
            String c = request.getParameter("u");
            String user=request.getParameter("user");
         
            
        %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
       
        <link href="../css/style_1.css" rel="stylesheet" type="text/css"/>
        <style>
         .img1 {
                background-image: url(../img/abc.jpeg);
                height: 100%;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            </style>
    </head>
    <body class="img1">
        <form action="../assignC?d=<%=c%>" method="post">
            <br>
            <h1 style="text-align: center">Compartment for <%=user%></h1><hr>
        <div style="width:20%;  margin-left: 770px; margin-top: 100px ; background-color: lightblue; padding: 20px; border-radius: 20px; " >
         <h3 style="text-align: center">Enter Compartment No: </h3>    
         <input type="text" name="C"><br><br>
        <input type="submit" value="Save">
        <input style="float:right" type="submit" value="Cancel" onclick="compartment.jsp">
        </div>
        </form>
       
    </body>
</html>
 



