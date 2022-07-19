<%-- 
    Document   : staff_viewreport
    Created on : Jul 17, 2022, 1:35:25 AM
    Author     : Hp User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDataSource" 
                   url="jdbc:derby://localhost:1527/HONK" user="honk" 
                   password="honk"/>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <!-- HTML document start -->
    <head>
        <title>HONK Customer Feedback Management System</title>	

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

            textarea {
                resize: none;
            }

            hr {
                border-top: dashed 1px;
            }

        </style>	

    </head>
    <body background="background.jpg">
        <header>		
            <div class="row">
                <div class="two-column" style="text-align:left;">
                    <ul>				
                        <li><b>Welcome, [staff_name]!</b></li>					
                    </ul>				
                </div>			
                <div class="two-column" style="text-align:right;">
                    <ul>
                        <li><a href="staff_viewcustfb.jsp">View Customers' Feedback</a></li>
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> VIEW REPORT </h1>
            
            <form action = "#" method = "POST">			
                <fieldset>
                    <table>
                        <tr>
                            <th> Filter by... </th>	
                        </tr>
                        <tr>
                            <td></td>							
                            <td>Date</td>
                            <td>:	<select name="filterByDay" style="padding: 5px; width: 20%;" required>
                                    <option value="">Select day...</option>														
                                </select>

                                <select name="filterByMonth" style="padding: 5px; width: 20%;" required>
                                    <option value="">Select month...</option>														
                                </select>

                                <select name="filterByYear" style="padding: 5px; width: 20%;" required>
                                    <option value="">Select year...</option>														
                                </select>
                            </td>
                        <tr>
                            <td></td>							
                            <td>Feedback Type</td>
                            <td>:	<select name="feedbackType" style="padding: 10px; width: 55%;" required>
                                    <option value="">Select feedback type..</option>
                                    <option value="1">Complaint</option>
                                    <option value="2">Customer Service</option>
                                    <option value="3">Website Bug Reports</option>
                                    <option value="4">Suggestion</option>															
                                </select>
                            </td>		
                        </tr>

                        <tr>
                        <tr><td colspan="4"><hr></td></tr>
                        <th> Search by... </th>	
                        </tr>																
                        <tr>
                            <td></td>							
                            <td>Feedback ID</td>
                            <td><input type="text" size="54"></td>			
                        </tr>																		
                        <tr>
                            <td></td>							
                            <td>Customer ID</td>
                            <td> <input type="text" size="54"></td>							

                        </tr>																																																										
                    </table><br>							
                    <div align="center">	
                        <input type="submit" value="SEARCH" name="submit" onclick="#" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px;">
                        <input type="reset" value="Reset" name="reset" style=" border-radius: 5px; padding: 10px 20px;"><br><br>
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
