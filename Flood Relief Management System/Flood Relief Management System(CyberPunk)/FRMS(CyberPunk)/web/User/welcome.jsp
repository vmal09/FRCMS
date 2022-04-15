<%-- 
    Document   : welcome
    Created on : Jan 19, 2020, 10:26:06 PM
    Author     : almam
--%>

<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
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

            img:hover{
                background-color: darkgrey;
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
                top: 150px;
                left: 25%;
                width: 55%;
                height: 40%;
                background: rgba(211,211,211, 0.7);
                border-radius: 20px;
                padding: 30px;

            }
            .center {
                display: flex;
                justify-content: center;
                align-items: center;



            }
            button {
                width: 30%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin-top: 30px;
                margin-left: 750px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                text-align: center;
            }


        </style>
    </head>
    <body style="background:lightgray">
        <div>
            <h1> Welcome, <%= user.getName()%></h1>
            <a href="notification.jsp"><img  src="../img/notification-icon-3.jpg" style="width:3%;  position: absolute; top: 10px; left: 90%; " ></a>
            <a href="userprofile.jsp"><img  src="https://www.pngall.com/wp-content/uploads/5/Profile-PNG-Clipart.png" style="width:3%;  position: absolute; top: 10px; left: 95%; " ></a>
        </div>
        <hr>

        <ul>
            <li ><a class="active1" href="userprofile.jsp">Profile</a></li>
            <li><a href="requirements.jsp">Requirements</a></li>
            <li><a href="hD.jsp">Health Declaration</a></li>
            <li><a href="addDependent.jsp">Dependents</a></li>
            <li><a href="feedback.jsp">Feedback</a></li>
            <li><a href="faq.jsp">F.A.Q</a></li>
            <li><a href="aboutus.jsp">Contact Us</a></li>

            <li style="float:right"><a class="active2" href="../LogoutServlet">Log Out</a></li>

        </ul>
        <div class="relative">
            <img src="https://assets.nst.com.my/images/articles/bhlalutup1_1639849747.jpg" width="100%">
            <div class="absolute">
                <h2 style="text-align: center; color: black ;text-align: justify;
                    text-justify: inter-word;">A total of 5,731 relief centres have been identified nationwide and they are capable of accommodating up to 1.63 million flood evacuees.  
                    Relief centers had been identified in preparation for the floods during the northeast monsoon season, which started last October and is expected to end in March 2022. 
                    Several states have been bee hit by floods, namely Kelantan, Terengganu, Pahang, Melaka, Negeri Sembilan and Selangor, whereby a total of 220 relief centers have been opened to accommodate 5,076 families, involving 13,872 evacuees. 
                    To curb the spread of Covid-19, all flood victims would be screened before being allowed to enter the relief centers.
                    These relief centers acts as shelter and full-fills victims requirements by providing ration and clothings. 
                    Ministry had mobilised 1,000 officers and personnel from the Social Welfare Department (JKM) to help victims at the flood-affected locations. 
                    There are also 500 volunteers from Skuad Keluarga Malaysia who have been mobilised to assist flood evacuees at the relief centres.</h2>
                <div class="center">
                     
                    <button onclick="location.href = 'aboutus.jsp'" ">Contact US</button>
                    <br>
                </div>
            </div>
        </div>


    </body>
</html>
