<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>

<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<body>
<% 
String a=new String();
String b=new String();
Statement pst1=null;
ResultSet rs1=null;

String uid=request.getParameter("username");
String pass=request.getParameter("pass");
try{
 PreparedStatement pst=conn.prepareStatement("select * from customer_details where name=? ");
 
 pst.setString(1,uid);
 ResultSet rs=pst.executeQuery();
if(rs.next()){
out.println("Hii "+rs.getString(1)+ "!");
	a=rs.getString(1);
	b=rs.getString(3);
	rs.close();

	if(b.equals(pass))      
		{	
			session.setAttribute("name",a);
			response.sendRedirect("booking2.jsp");
		}
		
	else
		 out.println("Wrong credentials entered.");
			 
	
}
}
catch(Exception e){
	out.print(e);
}
%>

</body>

</html>
