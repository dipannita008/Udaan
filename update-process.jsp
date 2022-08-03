<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
 <%@ include file = "connect.jsp" %>

<%
String name=request.getParameter("name");
String number=request.getParameter("number");
String source=request.getParameter("source");
String dest=request.getParameter("dest");
String dept=request.getParameter("dept");
String arri=request.getParameter("arri");
String fare=request.getParameter("fare");

int personID = Integer.parseInt(name);
if(name != null)
{
try
{
PreparedStatement ps=conn.prepareStatement("update FLIGHT_DETAILS set FLIGHT_ID= ? , FLIGHT_NAME=?, SOURCE=? , DESTINATION=? , DEPARTURE_TIME=? , ARRIVAL_TIME=? , FARE=?  where FLIGHT_ID="+name);
ps.setString(1,name);
ps.setString(2, number);
ps.setString(3, source);
ps.setString(4, dest);
ps.setString(5, dept);
ps.setString(6, arri);
ps.setString(7, fare);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(Exception e){
    out.print(e);
}
}
%>