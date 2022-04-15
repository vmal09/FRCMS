<%-- 
    Document   : AssignRation
    Created on : Jan 26, 2022, 11:32:42 AM
    Author     : AATHI
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
            table, th, td {
                border: 1px solid black;
                text-align: center;
                background-color:lightblue;
                padding:20px;
            }
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
        <%
            String user = request.getParameter("u");
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "jsp_projec";
            String url = "jdbc:mysql://localhost/" + dbName + "?";
            String userName = "root";
            String dbpassword = "";
            String query = "SELECT * FROM ration where user='" + user + "'";
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, dbpassword);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);


        %>
        <form action="../AssignRation?g=<%=user%>" method="post">
            <table BGCOLOR="lightblue" BORDER="1" align="center" style="padding:10px;width:60%;margin-top: 100px">
                <tr>
                    <th>User</th>

                    <th>Ration Package</th>
                    <th>Assigned Ration</th>
                    <th>Action</th>

                </tr>

                <tr>
                    <td><%=user%></td>

                    <td>
                        <input type="radio" name="package" value="Breakfast">
                        <label for="1">Breakfast</label><br><br>
                        <input type="radio" name="package" value="Lunch">
                        <label for="2">Lunch</label><br><br>
                        <input type="radio" name="package" value="Tea">
                        <label for="3">TeaTime</label><br><br>
                        <input type="radio" name="package" value="Dinner">
                        <label for="4">Dinner</label><br><br>
                        <input type="radio" name="package" value="Supper">
                        <label for="5">Supper</label><br><br>




                    </td>
                    <td>
                        <%
                            while (rs.next()) {
                                if (rs.getString(2) != null) {
                                    out.println(rs.getString(2) + " / ");
                                } else {
                                    out.println("<td>Ration not Assigne Yet!!</td>");
                                }
                            }
                        %>
                    </td>
                    <td><input type="submit" value="Add" style="width: 80%"></td>
                </tr>

            </table>

        </form>
    </body>
</html>
