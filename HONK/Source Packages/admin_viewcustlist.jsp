<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page import = "java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/HONK" 
                   user="honk" password="honk"/>


<!DOCTYPE html>
<html>
    <head>

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
                font-weight:  bold;
                cursor:  pointer;
            }



        </style>	
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customers</title>
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
                        <li><a href="admin_index.html">Dashboard</a></li>
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>

            <h1>View Customers</h1>
            <sql:query var="result" dataSource="${myDatasource}">
                SELECT * FROM CUSTOMER
            </sql:query>
            <table border="0" align="center">
                <!-- column headers -->
                <tr>
                    <c:forEach var="columnName" items="${result.columnNames}">

                        <c:if test="${!columnName.equals('CustID')}">
                            <th><c:out value="${columnName}"/></th>
                            </c:if>   
                        </c:forEach>
                </tr> 
                <!-- column data -->
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <tr>
                        <c:forEach var="column" items="${row}">
                            <c:if test="${column != row[0]}">
                                <td><c:out value="${column}"/></td>
                            </c:if>
                        </c:forEach>
                        <td>
                            <form action="admin_updatecustinfo.jsp" method="POST">
                                <input type="hidden" name="id" value="${row[0]}"/>
                                <input type="submit" value="Edit"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </section>
        <hr/>    
        
        <footer>
            &copy; HONK Customer Feedback Management System
        </footer>
    </body>
</html>
