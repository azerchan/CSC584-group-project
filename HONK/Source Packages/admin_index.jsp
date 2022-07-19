<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- HTML document start -->
	<head>
		<title>HONK Admin Homepage</title>	

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
				  padding: 5px;
				  font-family: Poppins;
				}			

			textarea {
				  resize: none;
				}

			input {
				font-family: Poppins;
				font-weight:  bold;
				cursor:  pointer;
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
						<li><a href="admin_index.html">Dashboard</a></li>
						<li><a href="index.html">Log Out</a></li>						
					</ul>				
				</div>
			</div>				
		</header>	
			<section>
				<h1> ADMIN HOMEPAGE </h1>
				<form action = "#" method = "POST">			
				<fieldset>
					<table>
						<tr>
							<td align="center"> <input type="submit" value="ADD NEW STAFF" name="addNewStaff" formaction="admin_addstaff.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 30px 40px;">
							</td>
							<td align="center"> <input type="submit" value="UPDATE STAFF INFO" name="updateStaffInfo" formaction="admin_updatestaffinfo.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 30px 40px;">
							</td>
						</tr>

						<tr>
							<td align="center"> <input type="submit" value="VIEW STAFF LIST" name="viewStaffList" formaction="admin_viewstafflist.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 30px 40px;">
							</td>
							<td align="center"> <input type="submit" value="UPDATE CUSTOMER INFO" name="updateCustInfo" formaction="admin_updatecustinfo.jsp" style="background-color: #f4c077; border-radius: 5px; padding: 30px 23px;">
							</td>
						</tr>

					</table><br>							
				</fieldset>	
				</form>	
			</section>	



		<footer>
			&copy; HONK Customer Feedback Management System
		</footer>	
	</body>
<!-- HTML document end -->
</html>
