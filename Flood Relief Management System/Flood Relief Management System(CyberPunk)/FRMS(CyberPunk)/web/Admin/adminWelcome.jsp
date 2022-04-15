<%-- 
    Document   : adminWelcome
    Created on : Dec 8, 2021, 11:21:25 PM
    Author     : v_mal
--%>

<%@page import="newpackage.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Admin admin = (Admin) session.getAttribute("logAdmin");
    if (admin == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
        <style>
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
            }

            .active1 {
                background-color: #04AA6D;
            }
            .active2 {
                color: white;
                background-color: maroon;
            }
            
            div.relative {
                position: relative;
                width: 100%;


            } 

            div.absolute {
                position: absolute;
                top: 300px;
                left: 40%;
                width: 20%;
                height: 10%;
                background: green;

            }
            .center {
                display: flex;
                justify-content: center;
                align-items: center;


            }


        </style>
    </head>
    <body style="background:lightgray">
        <h1> Welcome <%= admin.getName()%></h1>
        
        <ul>
             <li ><a class="active1" href="adminprofile.jsp">Profile</a></li>
            <li><a href="adminreq.jsp">Victim Requirements</a></li>
            <li><a href="hdperday.jsp">Victim Health Status</a></li>
             <li><a href="addration.jsp">Ration Distribution</a></li>
             <li><a href="compartment.jsp">Assign Compartment</a></li>
            <li><a href="adminfeedback.jsp">View Feedback</a></li>
            
            <li style="float:right"><a class="active2" href="../LogoutServlet">Log Out</a></li>
           
        </ul>
       <div class="relative">
            <img src="https://www.bernama.com/storage/photos/c9a2a99eab7cde527a4eadee09c14efe5fc1f9ebc15a1" width="100%">
           
        </div>



       
    </body>
</html>