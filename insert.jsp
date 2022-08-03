<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@include file="connect.jsp"%>
  <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body background="Images/SITE_BG.png">


	<% String name=request.getParameter("n1");
	String number=request.getParameter("n2");
	String source=request.getParameter("n3");
	String dest=request.getParameter("n4");
	String dept=request.getParameter("n5");
	String arri=request.getParameter("n6");
	String fare=request.getParameter("n7");
	try{
	PreparedStatement pst=conn.prepareStatement("insert into FLIGHT_DETAILS values(?,?,?,?,?,?,?)");
	
	 pst.setString(1,name);
	 pst.setString(2,number); 
	pst.setString(3,source);
	pst.setString(4,dest);
	pst.setString(5,dept);
	pst.setString(6,arri);
	pst.setString(7,fare);
	int t=pst.executeUpdate();
	if(t>0)
		out.println("<center><h1>INSERTED SUCCESSFULLY</center>");
	conn.close();
	}catch(Exception e){out.println("<h1>INSERTED UNSUCCESSFULLY");}
	%>
</body>
</html>