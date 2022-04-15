<%-- 
    Document   : addDependent
    Created on : Dec 26, 2021, 7:13:44 PM
    Author     : v_mal
--%>

<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Dependents</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <style>
            .img1 {
                background-image: url(../img/abc.jpeg);
                height: 100%;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            input[type=text], select {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                background: lightcyan;

            }
            input[type=number], select {
                width: 70%;
                padding: 10px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                background: lightcyan;

            }

            input[type=submit] {
                width: 40%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;

                border: none;
                border-radius: 4px;
                cursor: pointer;
                text-align: center;
            }
            input[type=reset] {
                width: 40%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;

                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            div {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }




        </style>
    </head>

    <BODY class="img1">

        <H1 style="text-align: center; color:black">Enter Dependents Details here</H1><br><INPUT  style="    width:10%; margin-left: 850px" TYPE="SUBMIT" VALUE="View Dependent List" onclick="location.href = 'userViewDependent.jsp'">
        <HR>
        <%

            User user = (User) session.getAttribute("logUser");


        %>

        <FORM NAME="addDependent" ACTION="../addDependentServlet?User=<%=user.getName()%>" METHOD="POST" class="form-holder">
            <TABLE BGCOLOR="lightblue" BORDER="1" align="center" style="padding:10px;">

                <TR>
                    <TD><B>Name:</B></TD> 
                    <TD> <INPUT TYPE="TEXT" SIZE="50" NAME="Person" required></TD>
                </TR>

                <TR>
                    <TD><B>Relation</B></TD> 
                    <TD> 
                        <SELECT NAME="Relation" SIZE="1" required>
                            <OPTION VALUE = "Child">Child</OPTION>
                            <OPTION VALUE = "Spouse">Spouse</OPTION>
                            <OPTION VALUE = "Siblings">Siblings</OPTION>
                            <OPTION VALUE = "Parents">Parents</OPTION>
                            <OPTION VALUE = "Grandparents">Grandparents</OPTION>
                            <OPTION VALUE = "Guardian">Guardian</OPTION>
                        </SELECT>
                    </TD>    
                </TR>

                <TR>
                    <TD><B>Age:</B></TD> 
                    <TD> <INPUT TYPE="number" NAME="Age" min="1" required></TD><br><br>
                </TR>



                <TR>
                    <TD><B>Gender</B></TD> 
                    <TD> 
                        <SELECT NAME="Gender" SIZE="1" required>
                            <OPTION VALUE = "Male" selected="">Male</OPTION>
                            <OPTION VALUE = "Female">Female</OPTION>
                        </SELECT>
                    </TD>    
                </TR>

                <TR>
                    <TD><B>Current Address:</B></TD> 
                    <TD> <INPUT TYPE="TEXT" SIZE="50" NAME="Address"  required></TD>
                </TR>

                <TR>
                    <TD><B>Postcode:</B></TD> 
                    <TD> <INPUT TYPE="TEXT" SIZE="50" NAME="Postcode" required></TD>
                </TR>

                <TR>
                    <TD><B>State:</B></TD> 
                    <TD> 
                        <SELECT NAME="State" SIZE="1" required>
                            <OPTION VALUE = "Johor">Johor</OPTION>
                            <OPTION VALUE = "Kedah">Kedah</OPTION>
                            <OPTION VALUE = "Kelantan">Kelantan</OPTION>
                            <OPTION VALUE = "Melaka">Melaka</OPTION>
                            <OPTION VALUE = "Negeri Sembilan">Negeri Sembilan</OPTION>
                            <OPTION VALUE = "Pahang">Pahang</OPTION>
                            <OPTION VALUE = "Perak">Perak</OPTION><!-- comment -->
                            <OPTION VALUE = "Perlis">Perlis</OPTION><!-- comment -->
                            <OPTION VALUE = "Pulau Pinang">Pulau Pinang</OPTION><!-- comment -->
                            <OPTION VALUE = "Sabah">Sabah</OPTION><!-- comment -->
                            <OPTION VALUE = "Sarawak">Sarawak</OPTION><!-- comment -->
                            <OPTION VALUE = "Selangor">Selangor</OPTION>
                            <OPTION VALUE = "Terengganu">Terengganu</OPTION>
                            <OPTION VALUE = "WP KualaLumpur">WP Kuala Lumpur</OPTION>
                            <OPTION VALUE = "WP Labuan">WP Labuan</OPTION>
                            <OPTION VALUE = "WP Putrajaya">WP Putrajaya</OPTION>

                        </SELECT>
                    </TD>    
                </TR>


            </table>
            <INPUT style="width:10%;margin-left: 845px; margin-top: 15px" TYPE="RESET" VALUE="Clear">
            <INPUT style="width:10%;margin-left: 10px; " TYPE="SUBMIT" VALUE="Add"><br>

        </form>



    </BODY>