<%-- 
    Document   : staff_reg
    Created on : Jul 17, 2022, 1:22:40 AM
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
<html>
    <!-- HTML document start -->
    <head>
        <title>HONK Staff Register</title>	

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
                color: black;
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
                        <li><a href="index.html">Home</a></li>	
                        <li><a href="login.jsp">Log In</a></li>					
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> REGISTER FOR NEW STAFF </h1>
            
            <c:set var="staffName" value="${param.staffName}"/> 
            <c:set var="staffIc" value="${param.staffIc}"/> 
            <c:set var="staffPassword" value="${param.staffPassword}"/> 
            <c:set var="staffId" value="${param.staffId}"/> 
            <c:set var="staffAddress" value="${param.staffAddress}"/>
            <c:set var="staffPhone" value="${param.staffPhone}"/>
            <c:set var="staffEmail" value="${param.staffEmail}"/>
            <c:set var="staffPosition" value="${param.staffPosition}"/>
            

            <c:if test="${(staffName!=null)&&(staffIc!=null)&&(staffPassword!=null)&&(staffId!=null)&&(staffAddress!=null)&&(staffPhone!=null)&&(staffEmail!=null)&&(staffPosition!=null)}" var="result">
                <sql:update var="result" dataSource="myDatasource">
                    INSERT INTO STAFF
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)

                    <sql:param value="${custName}"/> 
                    <sql:param value="${custIc}"/> 
                    <sql:param value="${custPassword}"/> 
                    <sql:param value="${custId}"/>
                    <sql:param value="${custAddress}"/>
                    <sql:param value="${custPhone}"/>
                    <sql:param value="${custEmail}"/>
                    <sql:param value="${staffPosition}"/>
                </sql:update>
            </c:if>
          
            <form action = "/cust_viewfb.jsp" method = "POST">			
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
                        <tr> <!-- refer to the video to understand request.getAttribute() -->
                                    <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
                 : request.getAttribute("errMessage")%></span></td>
                        </tr>
                    </table><br>							
                    <div align="center">	
                        <input type="submit" value="Cancel" name="cancel" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px;;">
                        <input type="submit" value="Register" name="submit" formaction="staff_login.jsp" style=" border-radius: 5px; padding: 10px 20px;"><br><br>
                    </div>					
                </fieldset>	
            </form>	
        </section>	

        <sql:query var="result" dataSource="myDatasource">
                    SELECT * FROM HONK.STAFF
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

        <footer>
            &copy; HONK Customer Feedback Management System
            <ul>
                <li><a href="cust_reg.jsp">REGISTER NEW CUSTOMER</a></li>
            </ul>
        </footer>	
    </body>
    <!-- HTML document end -->
</html>
