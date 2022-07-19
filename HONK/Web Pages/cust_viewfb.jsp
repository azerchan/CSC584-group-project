<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDataSource" 
                   url="jdbc:derby://localhost:1527/StudentDB" user="app" 
                   password="app"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <!-- HTML document start -->
    <head>
        <title>HONK Customer Edit Feedback(s)</title>	

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
            table, th, td {
                align: center;
                border: 1px solid black;
                border-collapse: collapse;
                padding: 10px;
            }

            input {
                font-family: Poppins;
                cursor:  pointer;
            }

        </style>	

    </head>
    <body background="background.jpg">
        <header>		
            <div class="row">
                <div class="two-column" style="text-align:left;">
                    <ul>				
                        <li><b>Welcome, [cust_id]!</b></li>					
                    </ul>				
                </div>			
                <div class="two-column" style="text-align:right;">
                    <ul>
                        <li><a href="index.html">Homepage</a></li>
                        <li><a href="cust_index.html">Dashboard</a></li>
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <c:set var="feedbackid" value="${param.feedbackid}"/> 
        <c:if test="${(id != null) && (id != 'select') }"> 
            <sql:update var="res" dataSource="${myDatasource}"> 
                DELETE FROM FEEDBACK WHERE FEEDBACKID = ? 
                <sql:param value="${feedbackid}"/> 
            </sql:update> 
        </c:if>
        <section>
            <h1> EDIT FEEDBACK(S) </h1>

            <c:set var="timeHonk" value="$(param.timeHonk)"/>
            <c:set var="feedback" value="$(param.feedback)"/>
            <form action = "#" method = "POST">			
                <table align="center">
                    <tr>							
                        <th>No</th>
                        <th> Date Issued </th>
                        <th> Feedback </th>
                        <th> Actions </th>
                    </tr>																		
                    <tr>							

                        <td><sql:param value="${feedbackID}"></td>
                        <td> <sql:param value="${timeHonk}"></td>
                            <td> <sql:param value="${feedback}"></td>
                                <td>

                                    <input type="submit" value="EDIT" name="submit" formaction="cust_editfb.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 5px 10px;">
                                    <input type="submit" value="DELETE" style="background-color: #f4c077; border-radius: 5px; padding: 5px 10px;">

                                </td>
                            </tr>																													
                        </table><br>										
                    </form>	
                </section>	



                <footer>
                    &copy; HONK Customer Feedback Management System
                </footer>	
            </body>
            <!-- HTML document end -->
        </html>
