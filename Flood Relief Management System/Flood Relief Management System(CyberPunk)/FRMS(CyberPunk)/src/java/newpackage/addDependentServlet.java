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
public class addDependentServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addDependentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addDependentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            PrintParams(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addDependentServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(addDependentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void PrintParams(HttpServletRequest request,
            HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String person = request.getParameter("User");
        String name = request.getParameter("Person");
        String rel = request.getParameter("Relation");
        String age = request.getParameter("Age");
        String gender = request.getParameter("Gender");
        String add = request.getParameter("Address");
        String post = request.getParameter("Postcode");
        String state = request.getParameter("State");

        String driver = "com.mysql.jdbc.Driver";
        String dbName = "jsp_projec";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String dbpassword = "";
        String query = "Insert into dependent(username,dname,relation,age,gender,address,postcode,state) values(?,?,?,?,?,?,?,?)";
        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, userName, dbpassword);

        PreparedStatement st = con.prepareStatement(query);

        st.setString(1, person);
        st.setString(2, name);
        st.setString(3, rel);
        st.setString(4, age);
        st.setString(5, gender);
        st.setString(6, add);
        st.setString(7, post);
        st.setString(8, state);

        st.executeUpdate();

        st.close();

        con.close();

        String htmlHeader = "<HTML><HEAD><TITLE> Printed Form Parameters </TITLE><style>.img1{\n"
                + "    background-image: url(../img/abc.jpeg);\n"
                + "    height: 100%;\n"
                + "    width: 100%;\n"
                + "    background-repeat: no-repeat;\n"
                + "    background-size: cover;\n"
                + "}.img1{\n"
                + "    background-image: url(../img/abc.jpeg);\n"
                + "    height: 100%;\n"
                + "    width: 100%;\n"
                + "    background-repeat: no-repeat;\n"
                + "    background-size: cover;\n"
                + "}\n"
                + "ul {\n"
                + "    list-style-type: none;\n"
                + "    margin: 0;\n"
                + "    padding: 0;\n"
                + "    overflow: hidden;\n"
                + "    background-color: #333;\n"
                + "}\n"
                + "\n"
                + "li {\n"
                + "    float: left;\n"
                + "}\n"
                + "\n"
                + "li a {\n"
                + "    display: block;\n"
                + "    color: white;\n"
                + "    text-align: center;\n"
                + "    padding: 14px 16px;\n"
                + "    text-decoration: none;\n"
                + "}\n"
                + "\n"
                + "li a:hover:not(.active) {\n"
                + "    background-color: #111;\n"
                + "}\n"
                + "\n"
                + "input[type=text], select {\n"
                + "    width: 100%;\n"
                + "    padding: 10px;\n"
                + "    margin: 8px 0;\n"
                + "    display: inline-block;\n"
                + "    border: 1px solid #ccc;\n"
                + "    border-radius: 4px;\n"
                + "    box-sizing: border-box;\n"
                + "    background: lightcyan;\n"
                + "\n"
                + "}\n"
                + "\n"
                + "input[type=email], select {\n"
                + "    width: 100%;\n"
                + "    padding: 10px;\n"
                + "    margin: 8px 0;\n"
                + "    display: inline-block;\n"
                + "    border: 1px solid #ccc;\n"
                + "    border-radius: 4px;\n"
                + "    box-sizing: border-box;\n"
                + "    background: lightcyan;\n"
                + "\n"
                + "}\n"
                + "\n"
                + "input[type=number], select {\n"
                + "    width: 70%;\n"
                + "    padding: 10px;\n"
                + "    margin: 8px 0;\n"
                + "    display: inline-block;\n"
                + "    border: 1px solid #ccc;\n"
                + "    border-radius: 4px;\n"
                + "    box-sizing: border-box;\n"
                + "    background: lightcyan;\n"
                + "\n"
                + "}\n"
                + "\n"
                + "input[type=submit] {\n"
                + "    width: 40%;\n"
                + "    background-color: #4CAF50;\n"
                + "    color: white;\n"
                + "    padding: 14px 20px;\n"
                + "\n"
                + "    border: none;\n"
                + "    border-radius: 4px;\n"
                + "    cursor: pointer;\n"
                + "    text-align: center;\n"
                + "}\n"
                + "input[type=reset] {\n"
                + "    width: 40%;\n"
                + "    background-color: #4CAF50;\n"
                + "    color: white;\n"
                + "    padding: 14px 20px;\n"
                + "\n"
                + "    border: none;\n"
                + "    border-radius: 4px;\n"
                + "    cursor: pointer;\n"
                + "}\n"
                + "\n"
                + "input[type=submit]:hover {\n"
                + "    background-color: #45a049;\n"
                + "}</style> <link href=\"../css/style_1.css\" rel=\"stylesheet\" type=\"text/css\"/></HEAD><BODY>";

        String htmlFooter = "</BODY></HTML>";

        out.println(htmlHeader);
        out.println("<h1 style='text-align:center;'>Dependent Successfully Added!!</h1>");
        out.println("<h2 style='text-align:center;'>Click <a href='User/addDependent.jsp'> here</a>  to add more Dependent</h2>");
        out.println("<TABLE BGCOLOR=\"lightblue\" ALIGN=CENTER BORDER=1>");
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
