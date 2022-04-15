<%-- 
    Document   : editprofileuser
    Created on : Jan 19, 2022, 5:33:28 PM
    Author     : AATHI
--%>

<%@page import="newpackage.User"%>
<%@page import="java.sql.Connection"%>
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
            input[type=email], select {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                background: lightcyan;

            }

        </style>
    </head>
    <body class="img1">
        <%
            User user = (User) session.getAttribute("logUser");
            if (user == null) {
                response.sendRedirect("index.jsp");
            }

            String id = request.getParameter("id");


        %>
         <h1 style="text-align: center; color:black">Edit Profile</h1>
        <HR>
        <div style="width:15%; margin-left: 795px; margin-top: 100px">
            <form action="../editprofileuser?v=<%=id%>" method="post">
                <label>New Username </label><br>
                <input name="u1" type="text" value="<%=user.getName()%>"><br>
                <label>New Email</label><br>
                <input type="email" name="e1" value="<%=user.getEmail()%>"><br>
                <br>
                <INPUT  style="    width:40%;" TYPE="SUBMIT" VALUE="Update"> 
                <INPUT  style=" width:40%; margin-left: 40px" type="submit" VALUE="Cancel" onclick="href.document = 'userprofile.jsp'"> 

            </form>
        </div>


    </body>
</html>
