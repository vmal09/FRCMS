<%-- 
    Document   : successprofile
    Created on : Jan 26, 2022, 1:11:50 AM
    Author     : AATHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>

        
        <style>
            .img1 {
                background-image: url(../img/abc.jpeg);
                height: 100%;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            tr,table{
                border:#000;
            }
          
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
                background: rgba(211,211,211, 0.5);

            }
            .center {
                display: flex;
                justify-content: center;
                align-items: center;



            }


        </style>

       
    </head>
    <body class="img1">
        <ul>
            <li ><a class="active1" href="userprofile.jsp">Profile</a></li>
            <li><a href="requirements.jsp">Requirements</a></li>
            <li><a href="hD.jsp">Health Declaration</a></li>
            <li><a href="addDependent.jsp">Dependents</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="faq.jsp">F.A.Q</a></li>
            <li><a href="aboutus.jsp">About US</a></li>

            <li style="float:right"><a class="active2" href="../LogoutServlet">Log Out</a></li>

        </ul>
        <h1 style="text-align: center; color: green">Profile Updated Successfully!!</h1>

        <jsp:include page="editprofileuser.jsp"></jsp:include>  
    </body>
</html>
