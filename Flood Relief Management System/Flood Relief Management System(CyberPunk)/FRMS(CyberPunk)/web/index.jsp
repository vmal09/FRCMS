<%-- 
    Document   : index
    Created on : Jan 10, 2020, 2:43:01 PM
    Author     : almam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Join Us</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container">
            <div class="box">

                <h1>User Login</h1>
                <form action="LoginServlet" method="post">
                    <p>Email</p>
                    <input type="text" placeholder="Email" name="email" required>
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <p><a href="User/registration.jsp">Create New Account</a></p>

                    <br>Are you an<a href="Admin/adminlogin.jsp"> <p>Admin?</p></a><br>


                </form>
            </div>


        </div>
    </body>
</html>
