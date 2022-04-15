/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package newpackage;

/**
 *
 * @author v_mal
 */
import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class requirementsServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(requirementsServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(requirementsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(requirementsServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(requirementsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void PrintParams(HttpServletRequest request,
            HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String Person = request.getParameter("Person");
        String email = request.getParameter("Email");
        String req1 = request.getParameter("req1");
        String req2 = request.getParameter("req2");
        String req3 = request.getParameter("req3");
        String Size1 = request.getParameter("Size1");
        String Size2 = request.getParameter("Size2");
        String Size3 = request.getParameter("Size3");
        String Size4 = request.getParameter("Size4");
        String Size5 = request.getParameter("Size5");
        String qty1 = request.getParameter("qty1");
        String qty2 = request.getParameter("qty2");
        String qty3 = request.getParameter("qty3");
        String qty4 = request.getParameter("qty4");
        String qty5 = request.getParameter("qty5");
        String others = request.getParameter("Special Requirements");

        String driver = "com.mysql.jdbc.Driver";
        String dbName = "jsp_projec";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String dbpassword = "";
        String query = "Insert into req(name,email,req1,clothsize,others,status) values(?,?,?,?,?,?)";
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, userName, dbpassword);

        PreparedStatement st = con.prepareStatement(query);

        st.setString(1, Person);
        st.setString(2, email);

        if (req1 == null && req2 == null) {
            st.setString(3, req3);
        } else if (req3 == null && req2 == null) {
            st.setString(3, req1);
        } else if (req1 == null && req3 == null) {
            st.setString(3, req2);
        } else if (req1 == null) {
            st.setString(3, req2 + "/" + req3);
        } else if (req2 == null) {
            st.setString(3, req1 + "/" + req3);
        } else if (req3 == null) {
            st.setString(3, req1 + "/" + req2);
        } else if (req1 == null && req2 == null && req3 == null) {
            st.setString(3, "No requirement");
        } else {
            st.setString(3, req1 + "/" + req2 + "/" + req3);
        }

        if (Size1 == null && Size2 == null) {
            st.setString(4, qty3 + "-" + Size3 + " / " + qty4 + "-" + Size4 + " / " + qty5 + "-" + Size5);
        } else if (Size4 == null && Size5 == null) {
            st.setString(4, qty1 + "-" + Size1 + " / " + qty2 + "-" + Size2 + " / " + qty3 + "-" + Size3);
        } else if (Size1 == null && Size2 == null && Size3 == null && Size4 == null && Size5 == null) {
            st.setString(4, "No cloth chosen");
        } else {
            st.setString(4, qty1 + "-" + Size1 + " / " + qty2 + "-" + Size2 + " / " + qty3 + "-" + Size3 + " / " + qty4 + "-" + Size4 + " / " + qty5 + "-" + Size5);
        }

        st.setString(5, others);
        st.setString(6, "Pending");

        st.executeUpdate();

        st.close();

        con.close();
        //response.sendRedirect("index.jsp");

        String htmlHeader = "<HTML><HEAD>" + "<link href=\"../css/style.css1\" rel=\"stylesheet\" type=\"text/css\"/>"
                + "<TITLE> Printed Form Parameters </TITLE>"
                + "<style>th, td {padding: 10px;}.img1 {background - image: url(../img / abc.jpeg);height:100 %;width:100 %;background - repeat: no - repeat;background - size: cover}</style></HEAD><BODY class=\"img1\">";
        String htmlFooter = "</BODY></HTML>";

        out.println(htmlHeader);
        out.println("<h1 style='text-align:center;'>Requirement Sent Successfully!!</h1>");
        out.println("<h2 style='text-align:center;'>Click <a href='User/requirements.jsp'> here</a>  to go back</h2>");
        out.println(
                "<TABLE BGCOLOR=\"lightblue\" ALIGN=CENTER BORDER=1 style=\"width:30%\">");
        out.println(
                "<tr><th> User </th><th> Details </th>");

        /*Enumeration enums = request.getParameterNames();

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

    }*/
        out.println(
                "<tr>");
        out.println(
                "<td>Person</td>");
        out.println(
                "<td>" + Person + "</td>");
        out.println(
                "</tr>");

        out.println(
                "<tr>");
        out.println(
                "<td>Email</td>");
        out.println(
                "<td>" + email + "</td>");
        out.println(
                "</tr>");

        out.println(
                "<tr>");
        out.println(
                "<td>Requirements</td>");
        out.println(
                "<td>");

        if (req1 == null && req2 == null && req3 == null) {
            out.println("No requirements chosen!!");

        } else {

            out.println("<ul><li>" + req1 + "</li></ul>");
            out.println("<ul><li>" + req2 + "</li></ul>");
            out.println("<ul><li>" + req3 + "</li></ul>");
        }

        out.println(
                "</td>");
        out.println(
                "</tr>");

        out.println(
                "<tr>");
        out.println(
                "<td>Requested Cloth</td>");
        out.println(
                "<td>");
        if (Size1
                != null) {
            out.println("<ul><li>" + Size1 + "  " + " Qty: " + qty1 + "</li></ul>");
        }
        if (Size2
                != null) {
            out.println("<ul><li>" + Size2 + "  " + " Qty: " + qty2 + "</li></ul>");
        }
        if (Size3
                != null) {
            out.println("<ul><li>" + Size3 + "  " + " Qty: " + qty3 + "</li></ul>");
        }
        if (Size4
                != null) {
            out.println("<ul><li>" + Size4 + "  " + " Qty: " + qty4 + "</li></ul>");
        }
        if (Size5
                != null) {
            out.println("<ul><li>" + Size5 + "  " + " Qty: " + qty5 + "</li></ul>");
        }
        if (Size1 == null && Size2 == null && Size3 == null && Size4 == null && Size5
                == null) {
            out.println("Clothing not required!!");
        }

        out.println(
                "</td>");
        out.println(
                "</tr>");

        out.println(
                "<tr>");
        out.println(
                "<td>Other Requirments</td>");
        out.println(
                "<td>" + others + "</td>");
        out.println(
                "</tr>");

        out.println(
                "</TABLE><BR>");
        out.println(htmlFooter);

    }
}
