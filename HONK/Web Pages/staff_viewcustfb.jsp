<%-- 
    Document   : staff_viewcustfb
    Created on : Jul 17, 2022, 1:34:27 AM
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
                        <li><a href="staff_replycustfb.jsp">Reply Customer Feedback</a></li>
                        <li><a href="staff_viewreport.jsp">View Report</a></li>
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> VIEW CUSTOMERS' FEEDBACK </h1>
            
            <c:set var="feedId" value="${param.feedId}"/> 
            <c:set var="dateIssued" value="${param.dateIssued}"/> 
            <c:set var="feedDetail" value="${param.feedDetail}"/>
            <c:set var="action" value="${param.action}"/> 

            <c:if test="${(feedId!=null)&&(dateIssued!=null)&&(feedDetail!=null)&&(action!=null)}" var="result">
            </c:if>
            <sql:update var="result" dataSource="myDatasource">
                INSERT INTO FEEDBACK
                VALUES (?,?,?,?)
            </sql:update>

            <sql:param value="${feedId}"/>
            <sql:param value="${dateIssued}"/>
            <sql:param value="${dateVisit}"/>
            <sql:param value="${feedDetail}"/>
            <sql:param value="${action}"/>
            
            <form action = "#" method = "POST">			
                <table align="center">
                    <tr>							
                        <th> Feedback ID </th>
                        <th> Date Issued </th>
                        <th> Feedback Details </th>
                        <th> Actions </th>
                    </tr>																		
                    <tr>							
                        <td align="center">#0331</td>
                        <td> Thu, 12/04/22, 11:47P.M. </td>
                        <td> I have a suggestion to improve your service. What if ... </td>
                        <td>
                            <select name="readStatus" style="padding: 5px; width: 55%; border-radius: 5px; background-color: #f4c077"; required>
                                <option value="">Mark as..</option>
                                <option value="readfb">Read</option>
                                <option value="unreadfb">Unread</option>														
                            </select>
                            <input type="submit" value="REPLY" onclick="/staff_replycustfb.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 5px 10px;">
                        </td>
                    </tr>		

                    <tr>							
                        <td align="center">#5563</td>
                        <td> Thu, 07/12/21, 15:47P.M. </td>
                        <td> SUCH A BAD COMPANY WITH BAD SERVICE! </td>
                        <td>
                            <select name="readStatus" style="padding: 5px; width: 55%; border-radius: 5px; background-color: #f4c077"; required>
                                <option value="">Mark as..</option>
                                <option value="readfb">Read</option>
                                <option value="unreadfb">Unread</option>														
                            </select>
                            <input type="button" value="REPLY" onclick="/#" style="background-color: #f4c077; border-radius: 5px; padding: 5px 10px;">
                        </td>
                    </tr>				

                    <tr>							
                        <td align="center">#1004</td>
                        <td> Fri, 03/09/21, 05:20A.M. </td>
                        <td> Really love dealing with HONK! They have the best ... </td>
                        <td>
                            <select name="readStatus" style="padding: 5px; width: 55%; border-radius: 5px; background-color: #f4c077"; required>
                                <option value="">Mark as..</option>
                                <option value="readfb">Read</option>
                                <option value="unreadfb">Unread</option>														
                            </select>
                            <input type="button" value="REPLY" onclick="/#" style="background-color: #f4c077; border-radius: 5px; padding: 5px 10px;">
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
