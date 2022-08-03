<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@include file="connect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE = edge">
  <meta name=viewport content="width=device-width, initial-scale=1.0">
</head>
<%
  String fid="", fn=" ", s=" ", d=" ", de=" ", a=" ", f=" ";
  Statement pst = null;
%>
<style>
        .content-table{
            border-collapse: collapse;
            margin: 25px 0;
            background-color: #afa7e75a;
            font-size: 0.9em;
            min-width: 400px;
            height:auto;
            overflow: auto;
        }
        .content-table thead tr{
            background-color:#ed7e9f52 ;
            text-align: left;
            font-weight: bold;
        }
        .content-table th, .content-table td{
            padding: 12px 15px;
        }
</style>

    <body background="Images/SITE_BG.png">
    <center>
        <table class="content-table">
           
                <tr>
                    <th>Flight Id</th>
                    <th>Flight Name</th>
                    <th>Source </th>
                    <th>Destination</th>
                    <th>Departure Time</th>
                    <th>Arrival Time</th>
                    <th>Fare</th>
                </tr>
           
            
<%

try{
	pst = conn.createStatement();
	String src = request.getParameter("source");
	String des = request.getParameter("dest");
	ResultSet rs = pst.executeQuery("select * from flight_details where Source='"+src+"'and Destination='"+des+"' ");
	
	while(rs.next())
	{
		fid = rs.getString(1);
		fn = rs.getString(2);
		s = rs.getString(3);
		d = rs.getString(4);
		de = rs.getString(5);
		a = rs.getString(6);
		f = rs.getString(7);
%>

<tr>
   <td><%=fid%></td>
   <td><%=fn%></td>
   <td><%=s%></td>
   <td><%=d%></td>
   <td><%=de%></td>
   <td><%=a%></td>
   <td><%=f%></td>
   <td><a href="payment.html"><button style="background:#ed7ea0;color:white;">Book Now!!</button></a></td>
</tr>

<%     } %>	

</table>

<%

rs.close();
conn.close();

}
catch(Exception e){
	out.println("No flights are available :(");
}
%>
</center>
</body>
</html>