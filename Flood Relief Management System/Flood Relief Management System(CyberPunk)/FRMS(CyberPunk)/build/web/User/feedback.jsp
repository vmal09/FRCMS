<%-- 
    Document   : feedback
    Created on : Dec 26, 2021, 9:18:23 AM
    Author     : v_mal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
    <HEAD>
        <TITLE> feedback Form </TITLE>

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
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
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

            input[type=email], select {
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

        </style>
    </HEAD>

    <BODY class="img1">
        <H1 style="text-align: center; color:black"> Feedback Form </H1>
        <HR>
        <BR>
        <FORM NAME="feedback" ACTION="../feedbackServlet" METHOD="POST" class="form-holder">
            <TABLE BGCOLOR="lightblue" BORDER="1" align="center">

                <TR>
                    <TD><B>Feedback:</B></TD> 
                    <TD> 
                        <TEXTAREA ROWS="6" COLS="40" WRAP="PHYSICAL" Name="Feedback" placeholder="Kindly state your feedback here..."></TEXTAREA>
    </TD>
    </TR>
    
     <TR>
    <TD ALIGN="CENTER"><B>How would rate the services:</B></TD> 
    <TD> 
    <INPUT TYPE="radio" NAME = "Rating" VALUE = "Excellent"> Excellent <br>
    <INPUT TYPE="radio" NAME = "Rating" VALUE = "Good"> Good <br>
    <INPUT TYPE="radio" NAME = "Rating" VALUE = "Average" CHECKED> Average <br> 
    <INPUT TYPE="radio" NAME = "Rating" VALUE = "Poor"> Poor <br> 
    <INPUT TYPE="radio" NAME = "Rating" VALUE = "Overhaul"> Needs an Overhaul <br>
    </TD>
     </TR>
     
    
   </table>
    <INPUT style="width:10%;margin-left: 845px; margin-top: 15px" TYPE="RESET" VALUE="Clear">
<INPUT style="width:10%;margin-left: 10px; " TYPE="SUBMIT" VALUE="Send"><br>
    
        </form>
    
    
</BODY>
</html>

