<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- HTML document start -->
    <head>
        <title>HONK Admin Update Staff Info</title>	

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
        </style>	

    </head>
    <body background="images/background.jpg">
        <header>		
            <div class="row">
                <div class="two-column" style="text-align:left;">
                    <ul>				
                        <li><b>Welcome, [admin_id]!</b></li>					
                    </ul>				
                </div>			
                <div class="two-column" style="text-align:right;">
                    <ul>	
                        <li><a href="admin_index.jsp">Dashboard</a></li>
                        <li><a href="index.html">Logout</a></li>					
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> UPDATE STAFF INFO </h1>
            <form action = "#" method = "POST">			
                <fieldset>
                    <table>
                        <tr>							
                            <td>Name</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>																																	
                        <tr>							
                            <td>IC</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Staff ID</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Position</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Address</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>	
                        <tr>							
                            <td>Phone No</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Email</td>
                            <td>: <input type="text" size="54">				
                            </td>			
                        </tr>																																																										
                    </table><br>							
                    <div align="center">	
                        <input type="reset" value="Reset" name="reset" style="border-radius: 5px; padding: 10px 20px; font-family: Poppins;font-weight: bold; cursor:  pointer;">
                        <input type="submit" value="Delete" name="delete" formaction="admin_index.html" style=" border-radius: 5px; padding: 10px 20px; font-family: Poppins;font-weight: bold; cursor:  pointer;">
                        <input type="submit" value="Update" name="update" formaction="admin_index.html" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px; font-family: Poppins;font-weight: bold; cursor:  pointer;"><br><br>
                    </div>					
                </fieldset>	
            </form>	
        </section>	



        <footer>
            &copy; HONK Customer Feedback Management System
        </footer>	
    </body>
    <!-- HTML document end -->
</html>
