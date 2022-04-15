<%-- 
    Document   : alist
    Created on : Jan 24, 2022, 9:53:13 PM
    Author     : AATHI
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
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
                text-align:center;
            }
        </style>
    </head>
    <body>

        <%

            String driver = "com.mysql.jdbc.Driver";
            String dbName = "jsp_projec";
            String url = "jdbc:mysql://localhost/" + dbName + "?";
            String userName = "root";
            String dbpassword = "";
            String query = "SELECT * FROM req where status='Approve'";
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, dbpassword);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JdbcServlet</title>");
            out.println(" <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n"
                    + "        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n"
                    + "        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n"
                    + "       \n"
                    + "        <link href=\"../css/style_1.css\" rel=\"stylesheet\" type=\"text/css\"/>");

            out.println("<style>table, th, td {\n"
                    + "  border: 1px solid black;\n"
                    + "  text-align:center;\n"
                      + " background-color:lightblue;\n"
                + " padding:10px;\n"
                    + "}"
                    + ".img {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover</style>");
            out.println("</head>");
          
            out.println("<body class=\"img1\">");
            out.println("<h1 style=\"text-align:center;\">Approved Requirement List</h1><br>");

        %>

        
        <%                
            out.println("<br><hr><table border:black 1pt; align='center'>");
            out.println("<tr>");
            out.println("<th>" + "Name" + "</th>");
            out.println("<th>" + "Email" + "</th>");
            out.println("<th>" + "Requirment" + "</th>");
            out.println("<th>" + "clothsize" + "</th>");
            out.println("<th>" + "Other" + "</th>");
            out.println("<th>" + "Current Status" + "</th>");
           
     
            out.println("</tr>");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("<td>" + rs.getString(4) + "</td>");
                out.println("<td>" + rs.getString(5) + "</td>");
                out.println("<td>" + rs.getString(6) + "</td>");
                out.println("<td>Approved</td>");

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
