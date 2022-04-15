<%-- 
    Document   : compartment
    Created on : Jan 14, 2022, 4:48:29 PM
    Author     : AATHI
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.User"%>
<!DOCTYPE html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link href="../css/style_1.css" rel="stylesheet" type="text/css"/>
</head>
<br>
<h1 style="text-align:center; margin-top: 10px">Assign Compartment</h1><br><hr>

<%

    String driver = "com.mysql.jdbc.Driver";
    String dbName = "jsp_projec";
    String url = "jdbc:mysql://localhost/" + dbName + "?";
    String userName = "root";
    String dbpassword = "";
    String email = request.getParameter("name");

    String query = "SELECT id,name,email,Compartment FROM user";
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
            + " padding:10px;\n"
            + "}"
            + ".img1 {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover}</style>");
    out.println("</head>");
    out.println("<body class=\"img1\">");
    out.println("<h1 style='text-align:center; margin-top: 30px;'>Victim List</h1>");

    out.println("<table border:black 1pt ; align='center'; width=\"50%\">");
    out.println("<tr>");
    out.println("<th>" + "UserID" + "</th>");
    out.println("<th>" + "UserName" + "</th>");
    out.println("<th>" + "Email" + "</th>");
    out.println("<th>" + "Current Compartment No" + "</th>");
    out.println("<th>Action</th>");

    out.println("</tr>");

    while (rs.next()) {
        out.println("<tr>");
        out.println("<td>" + rs.getString(1) + "</td>");
        out.println("<td>" + rs.getString(2) + "</td>");
        out.println("<td>" + rs.getString(3) + "</td>");
        out.println("<td>" + rs.getString(4) + "</td>");
%>
<td><a style=" width: 30%;
       background-color: blue;
       color: white;
       padding: 10px;
      
       border: none;
       border-radius: 4px;
       cursor: pointer;
       text-align: center;" href='assignC.jsp?u=<%=rs.getString("id")%>&&user=<%=rs.getString("name")%>' >Assign</a></td>

       <%

           }

           out.println("</table>");
           out.println("");
           out.println("</html>");

           st.close();
           con.close();


       %>

       </body>

