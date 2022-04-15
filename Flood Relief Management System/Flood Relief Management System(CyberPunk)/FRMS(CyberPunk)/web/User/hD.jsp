<%-- 
    Document   : hD
    Created on : Dec 27, 2021, 1:50:42 AM
    Author     : v_mal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HD Form</title>
       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

       
        <style>
      
            .img1{
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
    </head>
    <body class="img1">
        <h1 style="text-align: center; color:black">Health Declaration Form</h1>
        <HR>
        <BR>
        <FORM NAME="hd" ACTION="../hDServlet" METHOD="POST" class="form-holder">
            <TABLE BGCOLOR="lightblue" BORDER="1" align="center">
                <TR>
                    <TD><B>Name:</B></TD> 
                    <TD> <INPUT TYPE="TEXT" SIZE="50" NAME="Person"></TD>
                </TR>

                <TR>
                    <TD><B>Email:</B></TD> 
                    <TD> <INPUT TYPE="TEXT" SIZE="50" MAXLENGTH="40" NAME="Email"></TD>
                </TR>


                <TR>
                    <TD ALIGN="left"><B>Are you suffering from physical hurt due to the flood?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q1" VALUE = "No" required> No <br>
                        <INPUT TYPE="radio" NAME = "q1" VALUE = "Yes" required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Do you have chronic pain?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q2" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q2" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Do you need prescribed medicine?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q3" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q3" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Are you suffering from mental illness?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q4" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q4" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Are you having suicidal thoughts?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q5" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q5" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Do you have any food allergies?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q6" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q6" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Do you have any dietary restrictions?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q7" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q7" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Are you fatigue or feeling nausea (sensation of an urge to vomit)?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q8" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q8" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>

                <TR>
                    <TD ALIGN="left"><B>Are you showing any signs of Covid-19?</B></TD> 
                    <TD> 
                        <INPUT TYPE="radio" NAME = "q9" VALUE = "No"required> No <br>
                        <INPUT TYPE="radio" NAME = "q9" VALUE = "Yes"required> Yes <br>
                    </TD>
                </TR>





                <TR>
                    <TD><B>Others</B></TD> 
                    <TD> 
                        <TEXTAREA ROWS="6" COLS="40"  Name="Others" placeholder="Kindly indicate any other health issues here..."></TEXTAREA>
    </TD>
    </TR>
    
     
    </table>
    <INPUT style="width:10%;margin-left: 1010px; margin-top: 15px" TYPE="RESET" VALUE="Clear">
<INPUT style="width:10%;margin-left: 10px; " TYPE="SUBMIT" VALUE="Send"><br>
    
        </form>
</BODY>
</html>

