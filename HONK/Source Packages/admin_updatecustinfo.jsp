<%@page import = "java.io.*,java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<sql:setDataSource var="myDatasource"
                   driver="org.apache.derby.jdbc.ClientDriver"
                   url="jdbc:derby://localhost:1527/HONK" user="honk"
                   password="honk"/>
<html>
    <!-- HTML document start -->
    <head>
        <title>HONK Admin Update Customer Info</title>	

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

            textarea {
                resize: none;
            }

        </style>	

    </head>
    <body background="images/background.jpg">
        
        <c:set var="CustID" value="${param.CustID}"/> <!-- primary key, cannot change. -->
        <c:set var="CustPassword" value="${param.CustPassword}"/>
        <c:set var="CustIC" value="${param.CustIC}"/>
        <c:set var="CustName" value="${param.CustName}"/>
        <c:set var="Address" value="${param.Address}"/>
        <c:set var="PhoneNo" value="${param.PhoneNo}"/>
        <c:set var="Email" value="${param.Email}"/>
        
        <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM CUSTOMER WHERE CUSTID = ?
            <sql:param value="${custid}"/>
        </sql:query>
            
        <c:forEach var="table" items="${result.rows}">
            <c:set var="CustIC_query" value="${table.CustIC}"/>
            <c:set var="CustName_query" value="${table.CustName}"/>
            <c:set var="Address_query" value="${table.Address}"/>
            <c:set var="PhoneNo_query" value="${table.PhoneNo}"/>
            <c:set var="Email_query" value="${table.Email}"/>
        </c:forEach>    


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
                        <li><a href="index.html">Log Out</a></li>						
                    </ul>				
                </div>
            </div>				
        </header>	
        <section>
            <h1> UPDATE CUSTOMER INFORMATION </h1>
            <form action = "#" method = "POST">	
               
                <fieldset>
                    <table>	
                        <tr>							
                            <td>IC</td>
                            <td>: <input type="text" size="54" value="${CustIC_query}">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Name</td>
                            <td>: <input type="text" size="54" value="${CustName_query}">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Address</td>
                            <td>: <input type="text" size="54" value="${Address_query}">				
                            </td>			
                        </tr>	
                        <tr>							
                            <td>Phone No</td>
                            <td>: <input type="text" size="54" value="${PhoneNo_query}">				
                            </td>			
                        </tr>
                        <tr>							
                            <td>Email</td>
                            <td>: <input type="text" size="54" value="${Email_query}">				
                            </td>			
                        </tr>		
                    </table><br>							
                    <div align="center">	
                        <td><input type="hidden" name="CustID" value="${CustID}"/></td>
                        <td><input type="hidden" name="CustPassword" value="${CustPassword}"/></td>
                        <input type="reset" value="Reset" name="reset" style="border-radius: 5px; padding: 10px 20px; font-family: Poppins;font-weight: bold; cursor:  pointer;">
                        <input type="submit" value="Delete" name="Delete" formaction="adminUpdateCustInfo.controller" style=" border-radius: 5px; padding: 10px 20px; font-family: Poppins;font-weight: bold; cursor:  pointer;">
                        <input type="submit" value="Update" name="update" formaction="adminUpdateCustInfo.controller" style="background-color: #f4c077; border-radius: 5px; padding: 10px 20px; font-family: Poppins;font-weight: bold; cursor:  pointer;"><br><br>
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
