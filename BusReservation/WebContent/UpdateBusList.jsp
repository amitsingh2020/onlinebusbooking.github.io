<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header2.jsp" %>
<!DOCTYPE html>
<html>
<head><style>


#abc{
  border-radius: 45px;
  padding: 15px; 
  width: 250px;
  height: 10px;
    background-color: #C1D1D1;  
}
input[type=submit]:hover {
  background-color: #45a049;
}
input[type=submit] {
  width: 50%;
  background-color: #4CAF50;
  color: white;
  padding: 8px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 45px;
  cursor: pointer;}

.bg-img {
width: 100%;
  height: 50px;
  background-repeat: no-repeat;
  background-size: contain;
  border: 1px solid black;


  /* The image used */
  background-image: url("image/busbg63.jpg");

  min-height: 730px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100%;

}

/* Add styles to the form container */
.container {

color:white;
  position: relative;
  right: 0;
  left: 200px;
  margin: 15px;
  max-width: 330px;
  padding: 20px;
  background: rgba(0, 0, 0, 0.7);}


</Style>
</head>
<body>
<div class="bg-img">
 <form action="UpdateBusList" method="post" class="container">
 <h2>  <label>Update BusLists:</label><br></h2><br>
  <label>Bus Number:</label><br>
 <input type="text" id="abc" name="busNo" placeholder="Enter Bus Number" required="required"><br>
 <label>Bus Name:</label><br>
<input type="text" id="abc" name="busName" placeholder="Enter Bus Name" required="required"></br>
 <label>Source City:</label><br>
<input type="text" id="abc" name="cityFrom" placeholder="Enter source city" required="required"></br>
 <label>Destination City:</label><br>
<input type="text" id="abc" name="cityTo" placeholder="Enter destination city" required="required"></br>
 <label>Reporting Time:</label><br>
<input type="text" id="abc" name="timeFrom" placeholder="Enter departure time" required="required"></br>
 <label>Departure Time:</label><br>
<input type="text" id="abc" name="timeTo" placeholder="Enter arrival time" required="required"></br>
 <label>Fare:</label><br>
<input type="text" id="abc" name="fare" placeholder="Enter fare" required="required"></br>
 <label>Type of Bus:</label><br>
<input type="text" id="abc" name="type" placeholder="Enter Bus Type" required="required"></br>
<input type="submit" id="abc1" value="Update">
<a href="Login.jsp">go to user login</a>
</form></div>

</body>
</html>
<%@ include file="footer.jsp" %>