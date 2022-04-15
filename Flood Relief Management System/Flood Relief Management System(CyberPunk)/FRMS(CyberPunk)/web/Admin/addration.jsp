<%-- 
    Document   : addration
    Created on : Jan 18, 2022, 2:18:15 AM
    Author     : AATHI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
    </head>
    <body>
        <%

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

            String query = "select * from user";

            rs = st.executeQuery(query);

            out.println("<style>table, th, td {\n"
                    + "  border: 1px solid black;\n"
                    + " background-color:lightblue;\n"
                    + " padding:10px;\n"
                    
                    + "}"
                    + ".img1 {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover}</style>");
            out.println("</head>");
            out.println("<body class=\"img1\">");
            out.println("<h1 style=\"text-align:center\">Ration Distribution</h1><br><hr>");

            out.println("<table border:black 1pt ; align=\"center\" width=\"60%\" >");
            out.println("<tr>");
            out.println("<th>" + "User" + "</th>");
            out.println("<th>" + "CompartmentNo" + "</th>");

            out.println("<th>Action</th>");
            out.println("</tr>");

            while (rs.next()) {

                out.println("<tr>");
                out.println("<td>" + rs.getString(2) + "</td>");

                out.println("<td style=\"text-align:center\">" + rs.getString(5) + "</td>");


        %>
    <td style="width: 10%"><a style=" width: 30%;
           background-color: blue;
           color: white;
           padding: 10px;
           width:100%;
           border: none;
           border-radius: 4px;
           cursor: pointer;
           text-align: center;" href='AssignRation.jsp?u=<%=rs.getString(2)%>' >Add Ration</a></td>
        <%
                out.println("</tr>");

            }

            out.println("</table>");
            out.println("</body>");
            out.println("</html>");

            st.close();

            con.close();
        %>
</body>
</html>
