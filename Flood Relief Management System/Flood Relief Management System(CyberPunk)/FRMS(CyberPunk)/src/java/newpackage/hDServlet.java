/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package newpackage;

/**
 *
 * @author v_mal
 */
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

public class hDServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(hDServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(hDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(hDServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(hDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void PrintParams(HttpServletRequest request,
            HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("Person");
        String email = request.getParameter("Email");
        String other = request.getParameter("Others");

        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");
        String q3 = request.getParameter("q3");
        String q4 = request.getParameter("q4");
        String q5 = request.getParameter("q5");
        String q6 = request.getParameter("q6");
        String q7 = request.getParameter("q7");
        String q8 = request.getParameter("q8");
        String q9 = request.getParameter("q9");

        String driver = "com.mysql.jdbc.Driver";
        String dbName = "jsp_projec";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String dbpassword = "";
        String query = "Insert into hd(Name,Email,healthStatus,othercomment,date) values(?,?,?,?,?)";
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, userName, dbpassword);

        PreparedStatement st = con.prepareStatement(query);

        st.setString(1, name);
        st.setString(2, email);

        String htmlHeader = "<HTML><HEAD><TITLE> Printed Form Parameters </TITLE><style>th, td {padding: 10px;} "
                + ".img1 {background - image: url(img/abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover}</style></HEAD><BODY class=\"img1\">";
        String htmlFooter = "<script>\n"
                + "const d = new Date();\n"
                + "document.getElementById(\"demo\").innerHTML = d;\n"
                + "</script></BODY></HTML>";

        out.println(htmlHeader);
        out.println("<TABLE BGCOLOR=\"lightblue\" ALIGN=CENTER BORDER=1 style=\"width:30%\" >");
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
        if ("Yes".equals(q1) && "Yes".equals(q2) && "Yes".equals(q3) && "Yes".equals(q4) && "Yes".equals(q5) && "Yes".equals(q6) && "Yes".equals(q7) && "Yes".equals(q8) && "Yes".equals(q9)) {
            out.println("<tr ><td align=center >Status</td>");
            out.println("<td align=center bgcolor='red'>High Risk</td></tr>");
            st.setString(3, "High Risk");
        } else if ("No".equals(q1) && "No".equals(q2) && "No".equals(q3) && "No".equals(q4) && "No".equals(q5) && "No".equals(q6) && "No".equals(q7) && "No".equals(q8) && "No".equals(q9)) {
            out.println("<tr ><td align=center >Status</td>");
            out.println("<td align=center bgcolor='green'>Low Risk</td></tr>");
            st.setString(3, "Low Risk");
        } else {
            out.println("<tr ><td align=center >Status</td>");
            out.println("<td align=center bgcolor='orange'>Mild Risk</td></tr>");
            st.setString(3, "Mild Risk");
        }
        
        

        st.setString(4, other);
        st.setDate(5, java.sql.Date.valueOf(java.time.LocalDate.now()));
        st.executeUpdate();

        st.close();

        con.close();
        out.println("</TABLE><BR>");
        out.println(htmlFooter);
    }
}
