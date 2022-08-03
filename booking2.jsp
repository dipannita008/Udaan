<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@include file="connect.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE = edge">
  <meta name=viewport content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <title>Welcome Page</title>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="fonts/google-fonts.css">
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300&family=Quicksand&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="booking1.css">
</head>
<body>
<body background="Images/SITE_BG.png">
  <header class="header">
    <a class="logo"><img src="Images/Travel_Logo_1.png" width="150" height="80" class="d-inline-block align-top"
        alt=""></a>
    <div class="icons">
      <div class="fas fa-moon" id="theme-btn"></div>
    </div>
  </header>

  <section class="home" id="home">
    <h1> <font color="#fff">Hi,
    <% 
    
   String user = (String)session.getAttribute("name"); 
    out.println(user);
    
    %>
    <b>
        <font color="#ed7ea0"> where</font>
      </b> would you like to go?</font></h1>
    <form action="continue_booking.jsp" method="post" class="book-form">
      <div class="booking-form-box">
        <a class="btn"><font color="#fff">One-Way</font></a>

        <div class="booking-from">
          <label>Flying from  <i class="fa-solid fa-plane"></i></label>
          <select name="source">
            <option>Netaji Subhash Chandra Bose International Airport,Kolkata(CCU)</option>
            <option>Indira Gandhi International Airport,Delhi(DEL)</option>
            <option>Chhatrapati Shivaji International Airport,Mumbai(BOM)</option>
            <option>Kempegowda International Airport,Bangalore(BLR)</option>
            <option>Meenambakkam International Airport,Chennai(MAA)</option>
          </select>
        
          <label>Flying to     <i class="fa-solid fa-location-dot"></i></label>
          <select name="dest">
            <option>Indira Gandhi International Airport,Delhi(DEL)</option>
            <option>Netaji Subhash Chandra Bose International Airport,Kolkata(CCU)</option>
            <option>Chhatrapati Shivaji International Airport,Mumbai(BOM)</option>
            <option>Kempegowda International Airport,Bangalore(BLR)</option>
            <option>Meenambakkam International Airport,Chennai(MAA)</option>
          </select>
        </div>

        <div class="input-grp">
          <label>Departure  </label>
          <input type="date" name= "day" class="form-control select-date">
        </div>

        <div class="input-grp">
          <label>Adults </label>
          <input type="number" class="form-control" value="1">
        </div>

        <div class="input-grp">
          <label>Children</label>
          <input type="number" class="form-control" value="0">
        </div>

      </div>

      <input type="submit" value="Search Flights" class="search-btn" name="send">
    </form>
  </section>

  <script src="myscript.js"></script>
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
    integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
    crossorigin="anonymous"></script>

</body>
</html>