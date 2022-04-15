<%-- 
    Document   : registration
    Created on : Jan 10, 2020, 2:43:53 PM
    Author     : almam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="container">

            <div class="box">
                <h1>Register</h1>
                <form action="../RegisterServlet" method="post">
                    <p>Username</p>
                    <input type="text" placeholder="Username" name="name" required>
                    <p>Email</p>
                    <input type="text" placeholder="Email" name="email" required>
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Register">
                    <p><a href="../index.jsp">Already have Account?</p></a>

                </form>
            </div>

        </div>

    </body>
</html>
