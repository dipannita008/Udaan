# Udaan-FlightBooking
It is Dummy flight booking system with DB connectivity.
It contain both Admin and User Profiles with certain permissions for each respectively.


*IMP Note*
This site isn't responsive so the imagaes and the allignment might look different in various systems. (Preferable to use 14inch display !)
To make this site working you need to have Oracle 10g XE with Apache Tomcat v10 and also need to make changes in connect. jsp file 
ojdbc14.jar file need to imported to WEB-INF folder

Connect.jsp change
conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","*DB username*","*DB password*");
