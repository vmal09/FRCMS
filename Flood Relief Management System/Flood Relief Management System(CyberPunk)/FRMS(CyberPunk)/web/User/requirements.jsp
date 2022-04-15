<%-- 
    Document   : requirements
    Created on : Dec 26, 2021, 6:32:44 PM
    Author     : v_mal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requirements Form</title>

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
        <h1 style="text-align: center; color:black; font-size: 50px">Requirements Form</h1>
        <HR>
        <BR>
        <FORM NAME="requirements" ACTION="../requirementsServlet" METHOD="POST" >
            <TABLE BGCOLOR="lightblue" BORDER="1" align="center"  >
                <TR>
                    <TD><B>Name:</B></TD> 
                    <TD> <INPUT TYPE="TEXT" SIZE="50" NAME="Person" required=""></TD>
                </TR>

                <TR>
                    <TD><B>Email:</B></TD> 
                    <TD> <INPUT TYPE="email" SIZE="50" MAXLENGTH="40" NAME="Email" required=""></TD>
                </TR>


                <TR>
                    <TD><B>Select requirements:</B></TD> 
                    <TD> 
                        <INPUT TYPE="checkbox" NAME="req1" value="Ration"> Ration <br>
                        <INPUT TYPE="checkbox" NAME="req2" value= "Matress"> Matress <br>
                        <INPUT TYPE="checkbox" NAME="req3" value= "Medical Kit"> Medical Kit <br> 

                    </TD>
                </TR>

                <TR>
                    <TD><B>Clothes:</B></TD> 
                    <TD><br> 
                        <INPUT TYPE="checkbox" NAME = "Size1" VALUE = "S"> S <input type="number" min="0" max="100" placeholder="quantity" value="0" name="qty1"><br><br>
                        <INPUT TYPE="checkbox" NAME = "Size2" VALUE = "M"> M <input type="number" min="0" max="100" placeholder="quantity" value="0" name="qty2"><br><br>
                        <INPUT TYPE="checkbox" NAME = "Size3" VALUE = "L" > L <input type="number" min="0" max="100" placeholder="quantity" value="0" name="qty3"><br><br> 
                        <INPUT TYPE="checkbox" NAME = "Size4" VALUE = "XL"> XL <input type="number" min="0" max="100" placeholder="quantity" value="0" name="qty4"><br><br> 
                        <INPUT TYPE="checkbox" NAME = "Size5" VALUE = "2XL"> 2XL <input type="number" min="0" max="100" placeholder="quantity" value="0" name="qty5"><br><br>
                    </TD>
                </TR>


                <TR>
                    <TD><B>Others</B></TD> 
                    <TD> 
                        <TEXTAREA ROWS="6" COLS="40"  Name="Special Requirements" placeholder="Kindly indicate any other requirements here..."></TEXTAREA>
    </TD>
    </TR>
    
     </table>
     
    
 
<INPUT style="width:10%;margin-left: 850px; margin-top: 15px" TYPE="RESET" VALUE="Clear">
<INPUT style="width:10%;margin-left: 10px; " TYPE="SUBMIT" VALUE="Send"><br>
   
       </form>
    
    
    
</BODY>
</html>

