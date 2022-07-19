<%-- 
    Document   : staff_replycustfb
    Created on : Jul 17, 2022, 1:33:21 AM
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
                        <li><a href="staff_viewreport.jsp">View Report</a></li>
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> REPLY CUSTOMERS' FEEDBACK </h1>
            
            <c:set var="feedId" value="${param.feedId}"/> 
            <c:set var="feedType" value="${param.feedType}"/> 
            <c:set var="feedDetail" value="${param.feedDetail}"/>
            <c:set var="reply" value="${param.reply}"/> 

            <c:if test="${(feedId!=null)&&(feedType!=null)&&(feedDetail!=null)&&(reply!=null)}" var="result">
            </c:if>
            <sql:update var="result" dataSource="myDatasource">
                INSERT INTO FEEDBACK
                VALUES (?,?,?,?)
            </sql:update>

            <sql:param value="${feedId}"/>
            <sql:param value="${feedType}"/>
            <sql:param value="${dateVisit}"/>
            <sql:param value="${feedDetail}"/>
            <sql:param value="${reply}"/>
            
            <form action = "#" method = "POST">			
                <fieldset>
                    <table>
                        <tr>							
                            <td>Feedback ID</td>
                            <td>:			
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
                            <td>Feedback Details</td>
                            <td><br />								
                                : 
                            </td>			
                        </tr>																		
                        <tr>							
                            <td>HONK Staff Reply</td>
                            <td>:
                                <textarea id="staffreply" name="staffreply" rows="7" cols="110">
                                </textarea>						
                            </td>			
                        </tr>																																																										
                    </table><br>							
                    <div align="center">	
                        <input type="submit" value="Submit" name="submit" formaction="staff_viewcustfb.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px;">
                        <input type="reset" value="Reset" name="reset" style=" border-radius: 5px; padding: 10px 20px;"><br><br>
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
