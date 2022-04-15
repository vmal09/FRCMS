<%-- 
    Document   : notification
    Created on : Jan 26, 2022, 1:02:32 PM
    Author     : AATHI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <%
            User user = (User) session.getAttribute("logUser");
            if (user == null) {
                response.sendRedirect("index.jsp");
            }
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "jsp_projec";
            String url = "jdbc:mysql://localhost/" + dbName + "?";
            String userName = "root";
            String dbpassword = "";

            String query = "SELECT * FROM req where name='" + user.getName() + "'";
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, dbpassword);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
        %>
        <h1 style="text-align: center; font-size: 50px">Notification</h1>
        <hr>


        <div style="  position: absolute; top: 150px;left: 23%;width: 50%;height: 25%;text-align: center;background: lightblue; padding:50px; border-radius: 20px;">

            <div>
                <h1>Your Assigned Compartment Number :</h1> 
                <h1><b style="color: green"><%=user.getCompartment()%></b></h1>

            </div>
            <div>

                <%
                    if (rs.getString("status").equals("Approve")) {
                %>
                <h1>Your Request Requirement status :</h1>  
                <h1><b style="color: green"><%=rs.getString("status")%></b></h1>
                    <%
                    } else {
                    %> <h1>Your Requirement Request status : </h1> 
                <h1><b style="color: red"><%=rs.getString("status")%></b></h1>
                    <% }
                    %>
            </div>


            <%}
            %>


        </div>


    </body>
</html>
