<%-- 
    Document   : cust_addfb
    Created on : Jul 5, 2022, 4:08:27 PM
    Author     : User
--%>
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
        <title>HONK Customer Add Feedback</title>	

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
                        <li><a href="cust_index.jsp">Dashboard</a></li>
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> UPDATE FEEDBACK </h1>

            <c:set var="subject" value="${param.subject}"/>
            <c:set var="feedType" value="${param.feedType}"/>
            <c:set var="dateVisit" value="${param.dateVisit}"/>
            <c:set var="timeHonk" value="${param.timeHonk}"/>
            <c:set var="feedback" value="${param.feedback}"/>

            <sql:query var="result" dataSource="${myDatasource}">
                SELECT * FROM FEEDBACK WHERE ID = ?
                <sql:param value="${id}"/>
            </sql:query>

            <c:forEach var="table" items="${result.rows}">
                <c:set var="subject_query" value="${table.subject}"/>
                <c:set var="feedType_query" value="${table.feedType}"/>
                <c:set var="dateVisit_query" value="${table.dateVisit}"/>
                <c:set var="timeHonk_query" value="${table.timeHonk}"/>
                <c:set var="feedback_query" value="${table.feedback}"/>
            </c:forEach>		
            <form>
            <fieldset>
                
                <table>
                    <tr>							
                        <td>Subject</td>
                        <td>: <input type="text" id="subject" name="subject" size="54">				
                        </td>			
                    </tr>																		
                    <tr>							
                        <td>Feedback Type</td>
                        <td>:								
                            <select id="feedType" name="feedType" style="padding: 10px; width: 55%;" required>
                                <option value="">Select feedback type..</option>
                                <option name="complaint" value="1">Complaint</option>
                                <option name="CustService" value="2">Customer Service</option>
                                <option name="WebsiteBug" value="3">Website Bug Reports</option>
                                <option name="Suggestion" value="4">Suggestion</option>	

                            </select>							
                        </td>			
                    </tr>
                    <tr>							
                        <td>Date of HONK Branch Visit </td>
                        <td>:								
                            <input type="date" id="dateVisit" name="datevisit">										
                        </td>			
                    </tr>						
                    <tr>
                        <td>Approx. Time of HONK <br> Branch Visit</td>
                        <td>:	<select id="timeHonk" name="timeHonk" style="padding: 5px; width: 20%;" required>
                                <option value="">Hour</option>
                                <option value="12">12</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="1">11</option>														
                            </select>

                            <select id="timeHonk" name="visitMinute" style="padding: 5px; width: 20%;" required>
                                <option value="">Minute</option>
                                <option value="00">00</option>
                                <option value="15">15</option>
                                <option value="30">30</option>
                                <option value="45">45</option>	
                            </select>	

                            <input type="radio" id="am" name="ampm" value="am">
                            <label for="am">A.M.</label>
                            <input type="radio" id="pm" name="ampm" value="pm">
                            <label for="pm">P.M.</label><br>
                    </tr>																			
                    <tr>							
                        <td>Your Feedback</td>
                        <td>:
                            <textarea id="feedback" name="custfb" rows="10" cols="50"></textarea>						
                        </td>			
                    </tr>																																																										
                </table><br>							
                <div align="center">	
                    <input type="reset" value="Reset" name="reset"  style=" border-radius: 5px; padding: 10px 20px; font-family: Poppins; font-weight: bold; cursor:  pointer;">
                    <input type="submit" value="Submit" name="submit" formaction="cust_index.html" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px; font-family: Poppins; font-weight: bold; cursor:  pointer;"><br>
                </div>					
            </fieldset>	
        </form>
        <sql:query var="result" dataSource="myDatasource">
            SELECT * FROM APP.FEEDBACK

        </sql:query>

        <table border="1">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${result.columnNames}">
                    <th><c:out value="${columnName}"/></th>
                    </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>	
    </section>	



    <footer>
        &copy; HONK Customer Feedback Management System
    </footer>	
</body>
<!-- HTML document end -->
</html>
