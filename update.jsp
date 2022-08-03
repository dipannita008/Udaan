<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file = "connect.jsp" %>
<%
try{
	 
	 Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from FLIGHT_DETAILS");
while(rs.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport"
	content="width=device-width, initial-scale=1.0">
<title>Login as</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="fonts/google-fonts.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&family=Quicksand&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>


<script type="text/javascript"
	src="https://me.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=5wFSwtem3j_wPWbNfpuSmWPYy286q3kz7AUnln70i9vM-_5afYXPPqtY6ZT7o1EJJ15-24CI_wzeA54PF-Lus1q2wlPP4eIYrPnSP6G70kje9shmdPpW2YdIgxGv_nMQHaME5lceAJrgzHdAznC-0g"
	charset="UTF-8"></script>
</head>

<body background="Images/SITE_BG.png">


<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">

name:<br>
<input type="text" name="name" value="<%=rs.getString("FLIGHT_ID") %>">
<br>
number:<br>
<input type="text" name="number" value="<%=rs.getString("FLIGHT_NAME") %>">
<br>
source:<br>
<input type="text" name="source" value="<%=rs.getString("SOURCE") %>">
<br>
dest:<br>
<input type="text" name="dest" value="<%=rs.getString("DESTINATION") %>">
<br>
dept:<br>
<input type="text" name="dept" value="<%=rs.getString("DEPARTURE_TIME") %>">
<br>
arri:<br>
<input type="text" name="arri" value="<%=rs.getString("ARRIVAL_TIME") %>">
<br>
fare:<br>
<input type="text" name="fare" value="<%=rs.getString("FARE") %>">
<br>
<br><br>
<input type="submit" value="submit">
</form>

<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>