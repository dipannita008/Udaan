
<%@ page import="java.sql.*" %>
	<%! Connection conn = null;%>
	<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Rit");
//for oracle server Techno //DriverManager.getConnection("jdbc:oracle:thin:@10.10.100.21:1521:orcl","la6”,”lab6”);
	System.out.println("driver2  found");
}
	catch(Exception e){System.out.println("driver2 not found");}
	%> 
