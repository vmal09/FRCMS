<%-- 
    Document   : adminreq
    Created on : Jan 8, 2022, 11:46:39 PM
    Author     : AATHI
--%>

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
      
        <%@page import="java.sql.*" %>

        <%

        String driver = "com.mysql.jdbc.Driver";
        String dbName = "jsp_projec";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String dbpassword = "";
        String email = request.getParameter("name");
        String password = request.getParameter("requirements");
        String query = "SELECT * FROM req";
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
                    + "        <link href=\"css/style_1.css\" rel=\"stylesheet\" type=\"text/css\"/>");

            out.println("<style> table, th, td {\n"
                    + "  border: 1px solid black;\n"
                     + "  text-align:center;\n"
                    + " background-color:lightblue;\n"
                + " padding:10px;\n"
                
                    + "}"
                    );
            
            out.println(".img {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover</style></head>");
            out.println("<body class=\"img1\">");
            out.println("<h1 style=\"text-align:center;\">Requirements from Victims</h1><br>");

            %>
            
            <INPUT  style="    width:10%; margin-left: 850px" TYPE="SUBMIT" VALUE="Approve List" onclick="location.href = 'alist.jsp'">
            <%
            
            
            out.println("<br><hr><table border:black 1pt; align='center'>");
            out.println("<tr>");
            out.println("<th>" + "Name" + "</th>");
            out.println("<th>" + "Email" + "</th>");
            out.println("<th>" + "Requirment" + "</th>");
            out.println("<th>" + "clothsize" + "</th>");
            out.println("<th>" + "Other" + "</th>");
            out.println("<th>" + "Current Status" + "</th>");
            out.println("<th>" + "Action" + "</th>");
             out.println("<th></th>");
            out.println("</tr>");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString(2) + "</td>");
                out.println("<td>" + rs.getString(3) + "</td>");
                out.println("<td>" + rs.getString(4) + "</td>");
                out.println("<td>" + rs.getString(5) + "</td>");
                out.println("<td>" + rs.getString(6) + "</td>");
                out.println("<td>" + rs.getString(7) + "</td>");
                
                %>
                <td>
                    <form action="../adminreq?b=<%=rs.getString("id")%>" method="post">
                    <SELECT NAME="ReqState" style="width:100%;">
                            <OPTION VALUE ="Pending">Pending</OPTION>
                            <OPTION VALUE ="Approve">Approve</OPTION>
                            <OPTION VALUE ="Disapprove">Reject</OPTION>
                           
                        </SELECT>
                </td>
                <td><input style="width:100%;" type="submit" value="Update"></td>
               </form>
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
