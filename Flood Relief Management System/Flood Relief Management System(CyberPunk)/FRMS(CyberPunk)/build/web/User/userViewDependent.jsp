<%-- 
    Document   : userViewDependent
    Created on : Jan 18, 2022, 1:45:38 AM
    Author     : AATHI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="newpackage.User"%>
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

        </style>
    </head>
    <%
        User user = (User) session.getAttribute("logUser");
        String a = user.getName();
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
        String query = "select * from dependent where username='" + a + "'";
        rs = st.executeQuery(query);

        out.println("<style>table, th, td {\n"
                + "  border: 1px solid black;\n"
                + " text-align: center;\n"
                + " background-color:lightblue;\n"
                + " padding:20px;\n"
                + " width:50%;\n"
                + "}"
                + "</style>");
        out.println("</head>");
        out.println("<body class='img1'>");
        out.println("<h1 style='text-align:center;'>Current Dependent List</h1><br>");
        out.println("<div><form action=''>");
        out.println("<table BGCOLOR=\"lightblue\"  border:black 1pt ; align='center';>");

        out.println("<tr>");
        out.println("<th>" + "Dependent Name" + "</th>");
        out.println("<th>" + "Relation" + "</th>");
        out.println("<th>" + "Age" + "</th>");
        out.println("<th>" + "Gender" + "</th>");
        out.println("<th>" + "Address" + "</th>");
        out.println("<th>" + "PostCode" + "</th>");
        out.println("<th>" + "State" + "</th>");
        out.println("<th></th>");
        out.println("<th></th>");
        out.println("</tr>");

        while (rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString(3) + "</td>");
            out.println("<td>" + rs.getString(4) + "</td>");
            out.println("<td>" + rs.getString(5) + "</td>");
            out.println("<td>" + rs.getString(6) + "</td>");
            out.println("<td>" + rs.getString(7) + "</td>");
            out.println("<td>" + rs.getString(8) + "</td>");
            out.println("<td>" + rs.getString(9) + "</td>");

    %>

    <td><a style=" width: 30%;
           background-color: blue;
           color: white;
           padding: 14px 20px;
           width:100%;
           border: none;
           border-radius: 4px;
           cursor: pointer;
           text-align: center;" href='deletedependent.jsp?id=<%=rs.getString(1)%>' >Edit</a></td>
    <td><a style=" width: 30%;
           background-color: red;
           color: white;
           padding: 14px 20px;
           width:100%;
           border: none;
           border-radius: 4px;
           cursor: pointer;
           text-align: center;" href='deletedependent.jsp?id=<%=rs.getString(1)%>' >Delete</a></td>

</tr>                            
<%        }

    out.println("</table>");
    out.println("</form></div>");
    out.println("</body>");
    out.println("</html>");

    st.close();

    con.close();
%>
<body>

</body>
</html>
