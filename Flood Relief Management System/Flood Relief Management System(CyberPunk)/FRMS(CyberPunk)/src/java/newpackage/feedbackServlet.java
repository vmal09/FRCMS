/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author v_mal
 */
public class feedbackServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(feedbackServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(feedbackServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(feedbackServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(feedbackServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void PrintParams(HttpServletRequest request,
            HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String feedback = request.getParameter("Feedback");
        String rating = request.getParameter("Rating");

        String driver = "com.mysql.jdbc.Driver";
        String dbName = "jsp_projec";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String dbpassword = "";
        String query = "Insert into feedback(feedback,rating) values(?,?)";
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, userName, dbpassword);

        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, feedback);
        st.setString(2, rating);
        st.executeUpdate();

        String htmlHeader = "<HTML><HEAD><TITLE> Printed Form Parameters </TITLE><style>.img1 {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover}</style></HEAD><BODY class=\"img1\">";
        String htmlFooter = "</BODY></HTML>";

        out.println(htmlHeader);
        out.println("<TABLE ALIGN=CENTER BORDER=1>");
        out.println("<tr><th> User </th><th> Details </th>");

        Enumeration enums = request.getParameterNames();

        while (enums.hasMoreElements()) {
            String inputName = (String) enums.nextElement();
            String value = request.getParameter(inputName);

            if (value.length() != 0) {
                out.println("<tr><td align=center>" + inputName + "</td>");
                out.println("<td align=center>" + value + "</td></tr>");
            } else {
                out.println("<tr><td align=center>" + inputName + "</td>");
                out.println("<td align=center><i>Null</i></td></tr>");
            }

        }
        out.println("</TABLE><BR>");
        out.println(htmlFooter);

    }
}
