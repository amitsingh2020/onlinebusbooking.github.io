<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.bt {
  background-color: hsl(190,80%,30%);
  border: none;
  color: white;
  padding: 8px 7px;
  font-size: 23px;
  cursor: pointer;
}

/* Darker background on mouse-over */
.bt:hover {
  background-color: #182973;
}
header{
height: 60px;
background-color:hsl(190,80%,30%);
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;

}

li{
float:left ;
border-radius:10px;
padding:9px;
font-size: 25px;
color: white;
}

li a{
text-decoration:none;
color:white;
}
 


</style>
</head>
<body>

<header>
<span><img class="aa" src="image/BusLogo.png"

height="100"width="100"alt="logo"style="float:left;">

</span>
<ul>
<li><a title="Home Page" href="Welcome.jsp"><button class="bt"><i class="fa fa-home"></i> Home</button></a></li>
<li><a title="login for Admin" href="AdminLogin.jsp" target="ifr"><button class="bt">Admin</button></a></li>
<li><a title="New User Register" href="RegForm.jsp" target="ifr"><button class="bt">Register</button></a></li>
<li><a title="contact us" href="help/mainhelp.jsp" target="ifr"><button class="bt">Help</button></a></li>
<li><a title="about our team" href="AboutUs.jsp" target="ifr"><button class="bt">About_us</button></a></li>
</ul>
</header>

</body>
</html>