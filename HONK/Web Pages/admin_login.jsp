<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <!-- HTML document start -->
    <head>
        <title>HONK Admin Login</title>	

        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Playfair+Display&family=Poppins&display=swap" rel="stylesheet">


        <style>		
            body {
                font-family: Poppins;
            }		
            header {
                height: auto;
                padding: 10px;
                background-color: #9a6b63;
                color: white;
            }		
            a {
                color: white;
            }		
            section {
                background-color: white;
                width: 80%;
                margin: auto;
                padding: 20px 30px;
            }		
            footer {
                background-color: #fcd4c8;
                color: black;
                text-align: center;
                height: auto;
                clear: both;	
                padding: 20px;
            }		
            ul li {
                display:inline;
                padding: 10px;			
            }
            * {
                box-sizing: border-box;
            }				
            .two-column {
                float: left;
                width: 50%;
            }		
            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }		
            #add_form {
                width:50%; 
                margin:auto;
            }				

            fieldset {
                border-radius: 10px;			
                padding: 20px;
                align: center;				
            }			
            table {
                width: 100%;
            }

            th, td {
                padding: 10px;
            }

            footer {
                position: fixed;
                background-color: #fcd4c8;
                color: black;
                text-align: center;
                height: auto;
                clear: both;	
                padding: 10px 10px 0px 10px;
                bottom: 0;
                width: 100%;
                padding: 20px;
            }


        </style>	

    </head>
    <body background="background.jpg">
        <header>		
            <div class="row">
                <div class="two-column" style="text-align:left;">
                    <ul>				
                        <li><b>Welcome to HONK Customer Feedback Management System</b></li>					
                    </ul>				
                </div>			
                <div class="two-column" style="text-align:right;">
                    <ul>
                        <li><a href="index.jsp">Homepage</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> LOGIN FOR ADMIN </h1>
            <form action = "LoginServletA" method = "POST">			
                <fieldset>
                    <table>
                        <tr>							
                            <td>Admin ID</td>
                            <td>: <input type="text" size="54" value="${param.adminID}">				
                            </td>			
                        </tr>																																	
                        <tr>							
                            <td>Password</td>
                            <td>: <input type="password" size="54" value="${param.adminPassword}">				
                            </td>			
                        </tr>																																																											
                    </table><br>							
                    <div align="center">	
                        <input type="submit" value="Cancel" name="cancel"  formaction="admin_login.jsp" style=" border-radius: 5px; padding: 10px 20px; font-family: Poppins; font-weight: bold; cursor: pointer;">
                        <input type="submit" value="Login" name="custlogin" formaction="cust_index.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px; font-family: Poppins; font-weight: bold; cursor:  pointer;">					</div>					
                </fieldset>	
            </form>	
        </section>	



        <footer>
            &copy; HONK Customer Feedback Management System
            <ul>
                <li><a href="cust_login.jsp" style="color: black">CUSTOMER LOGIN</a></li>
                <li>|</li>
                <li><a href="staff_login.jsp" style="color: black">STAFF LOGIN</a></li>
            </ul>
        </footer>	
    </body>
    <!-- HTML document end -->
</html>
