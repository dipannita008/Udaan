<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="connect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String name = request.getParameter("n1");
String email = request.getParameter("n2");
String password = request.getParameter("n3");


try{
	PreparedStatement pst=conn.prepareStatement("insert into customer_details values(?,?,?)");
	
	pst.setString(1,name);
	pst.setString(2,email); 
	pst.setString(3,password);
	int t=pst.executeUpdate();
	if(t>0)
		out.println("<h1>Registered successfully");%>
		<a href=Login.html>
	 <br><br>Click here to login</a>
	 <%	
	}catch(Exception e){out.println("<h1>Registration unsuccessfull :(");}
%>

</body>
</html>