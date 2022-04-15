<%-- 
    Document   : deletedependent
    Created on : Jan 25, 2022, 12:04:19 AM
    Author     : AATHI
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.UserDatabase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <%

            String a = request.getParameter("id");
            out.println(a);
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "jsp_projec";
            String url = "jdbc:mysql://localhost/" + dbName + "?";
            String userName = "root";
            String dbpassword = "";
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, dbpassword);

            PreparedStatement st = con.prepareStatement("delete from dependent where id=?");
            st.setString(1, a);
            
            st.executeUpdate();
            st.close();
            con.close();
            response.sendRedirect("userViewDependent.jsp");


        %>
    </body>
</html>
