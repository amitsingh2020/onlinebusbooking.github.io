<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head><style>
body, html {
  height: 80%;
  margin: 0;
}


#abc{

     border-radius: 10px;
  width: 250px;
  height: 40px;  
}
input[type=submit]:hover {
  background-color: #094A04;
}
input[type=submit] {
  width: 50%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;}


 
.bg-img {
width: 100%;
  height: 200px;
  border: 1px solid black;
  /* The image used */
  background-image: url("image/BUSIMAGE5.jpg");

  min-height:630px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100%;

}

/* Add styles to the form container */
.container {
  position: relative;
  right: 0;
  margin: 40px;
  left: 100px;
  max-width: 350px;
  padding: 16px;
  background: #0873AF ;
}
[type="date"] {
  background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}

}

</Style>
</head>
<body>
<div class="bg-img">
 <form action="BusList.jsp" class="container">


<h2>From<br><select id="abc" name=cityFrom required="required">

<option>Select city</option>
<option>Delhi</option>
<option>Meerut</option>
<option>Noida</option>
<option>Gurugram</option>
<option>Varanasi</option>
<option>Patna</option>
<option>Lucknow</option>

</select><br>
To<br>
<select id="abc" name=cityTo required="required">

<option>Select city</option>
<option>Delhi</option>
<option>Meerut</option>
<option>Noida</option>
<option>Gurugram</option>
<option>Varanasi</option>
<option>Patna</option>
<option>Lucknow</option>

</select><br>
<label for="dateofjourney">Date   of Journey</label><br>
<input type="date" id="abc" name=dateofjourney id="dateofjourney" required="required"><br>
  Bus Type<br>
  <input class="w3-radio" type="radio" name="type" value="AC" checked>AC
  <input class="w3-radio" type="radio" name="type" value="Luxury">Luxury
  <input class="w3-radio" type="radio" name="type" value="Non AC">Non AC
<br></br>
<input type="submit"value="search bus"></h2></form></div>

</body>
</html>
 <%@ include file="footer.jsp" %>