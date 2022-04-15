<%-- 
    Document   : userprofile
    Created on : Jan 5, 2022, 9:17:08 PM
    Author     : AATHI
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("../index.jsp");
    }

    int a = user.getId();
    Statement st = null;
    ResultSet rs = null;

    String driver = "com.mysql.jdbc.Driver";
    Class.forName(driver);
    String dbName = "jsp_projec";
    String url = "jdbc:mysql://localhost/" + dbName + "?";
    String userName = "root";
    String dbpassword = "";
    Connection con = DriverManager.getConnection(url, userName, dbpassword);

    st = con.createStatement();
    String query = "select Compartment from user where id='" + a + "'";
    rs = st.executeQuery(query);


%>


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
            tr,table{
                border:#000;
            }

        </style>
    </head>
    <body class="img1">
        <h1 style="text-align: center; margin-top: 50px ">Profile Page</h1><hr><br><br>
        <img src="../img/user-avatar.png" style="width: 6%; margin-left: 895px; " >
        <div style="margin-left: 680px; width: 30.5%; background-color: lightblue;border-radius: 20px;padding: 20px">
            <table BORDER="1" style="width:550px; margin-top: -60px">

                <tr>
                    <td><h3 style="text-align: left;margin-left: 20px"> Account ID:</h3></td>
                    <td style="text-align: center "><h3><b><%= user.getId()%></b></h3></td>
                </tr><br>
                <tr><td><h3 style="text-align: left;margin-left: 20px "> Username:  </h3></td>
                    <td style="text-align: center"><h3><b><%= user.getName()%></b></h3></td>
                </tr><br>


                <tr>
                <td><h3 style="text-align: left;margin-left: 20px "> Email:  </h3></td>
                <td style="text-align: center"><h3><b><%= user.getEmail()%></b></h3></td>
                </tr><br>


                <tr>
                    <%            while (rs.next()) {
                            out.println("<tr><td><h3 style=\"text-align: left;margin-left: 20px\"> Compartment No:</h3></td><td style=\"text-align: center\"><h3><b>" + rs.getString(1) + "</b></h3></td>");
                        }
                    %></tr>
            </table>

        </div><br><br>
        <INPUT  style="width:10%; margin-left: 850px" TYPE="SUBMIT" VALUE="Edit Profile" onclick="location.href = 'editprofileuser.jsp?id=<%=user.getId()%>'">
    </body>
</html>
<%
    st.close();

    con.close();
%>