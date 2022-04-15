<%-- 
    Document   : hdperday
    Created on : Jan 24, 2022, 10:03:30 PM
    Author     : AATHI
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
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
    </head>
    <body>
        <h1 style="text-align: center">Victims Health Status</h1>
        <%
        
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "jsp_projec";
            String url = "jdbc:mysql://localhost/" + dbName + "?";
            String userName = "root";
            String dbpassword = "";
           
            String query = "SELECT * FROM hd where date='"+java.sql.Date.valueOf(java.time.LocalDate.now())+"'";
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, dbpassword);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JdbcServlet</title>");
            out.println("<style>table, th, td {\n"
                    + "  border: 1px solid black;\n"
                    + " background-color:lightblue;\n"
                + " padding:20px;\n"
                    + "}"
                    + ".img1 {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover}</style>");
            out.println("</head>");
            out.println("<body class=\"img1\">");
        %>
        <INPUT  style="width:10%; margin-top: 10px;margin-left: 850px" TYPE="SUBMIT" VALUE="Victim Status History" onclick="location.href = 'adminviewhd.jsp'"><hr>

        <%
            out.println("<table border:black 1pt ; align=\"center\">");
            out.println("<tr>");
            out.println("<th>" + "Name" + "</th>");
            out.println("<th>" + "Email" + "</th>");
            out.println("<th>" + "Health Status" + "</th>");
            out.println("<th>" + "Comment" + "</th>");
            out.println("</tr>");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString(1) + "</td>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("<td>" + rs.getString(4) + "</td>");
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

