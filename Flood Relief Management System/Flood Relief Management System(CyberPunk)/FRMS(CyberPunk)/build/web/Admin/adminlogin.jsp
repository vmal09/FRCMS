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
        <title>Admin Login</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="box">
                <img class="avatar" src="../img/user-avatar.png">
                <h1>Admin Login</h1>
                <form action="../adminLoginServlet" method="post">
                    <p>Email</p>
                    <input type="text" placeholder="Email" name="email" required>
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                        <br>Are you an<a href="../index.jsp"> <p>User?</p></a><br>
                </form>
            </div>


        </div>
    </body>
</html>
