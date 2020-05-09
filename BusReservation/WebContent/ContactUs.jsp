<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
body, html {
  height: 100%;
}

.bg{
background-image:url("image/contactus.jpg");
height:100%;
 background-position:top;
  background-repeat: no-repeat;
  background-size: cover;

}

.fa {
  padding:5px;
  font-size: 20px;
  height:30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
}
.icon-bar {
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-40%);
  transform: translateY(-35%);
}

/* Style the icon bar links */
.icon-bar a {
  display: block;
  text-align: center;
  padding: 10px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}
.facebook {
  background: #3B5998;
  color: white;
}
.icon-bar a:hover {
  background-color: black;
}
.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.youtube {
  background:#bb0000;
  color: black;
}


.vl {
  border-left: 2px solid  black;
  height: 700px;
}

</style>
</head>
<body>
<div class="bg" align="right"><center><i><h1>SOUL BUS SERVICE</h1></i></center><font size="6"><b ><i >CONTACT US</i>
</b>


</font></div>
<!-- Load font awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The social media icon bar -->
<div class="icon-bar">
<table>
<th>
  <tr>
   <td><ul type=""><li><a href="https://www.facebook.com/" class="facebook"><i class="fa fa-facebook"></i></a>
       <a href="https://www.facebook.com/">Facebook</a></li><br>
   <li> <rowspan="2"><a href="https://www.twitter.com/" class="twitter"><i class="fa fa-twitter"></i></a>
       <a href="https://www.twitter.com/">Twitter</a></li><br>
   <li><a href="https://www.google.com/" class="google"><i class="fa fa-google"></i></a>
       <a href="https://www.google.com">Google</a></li><br>
  <li><a href="https://www.youtube.com" class="youtube"><i class="fa fa-youtube"></i></a>
    <a href="https://www.youtube.com">You tube</a></li></td>


</td>
<td><img src="image/contactus2.jpg"  width="40%" height="30%"><br>
<br><br><br><b><i class="material-icons" style="font-size:56px;color:red">&#xe55f;</i><sub>Delhi,Uttar Pradesh,Bihar;</sub></b>

</td>
<td align="right"><b>*Email:soulgrp@gmail.com.<br>
       *Phone No:<br>Uttar Pradesh:1800-1800-4468;<br>
         Delhi:1800-1800-4469;<br>
         Bihar:1800-1800-1179;<br>
   *Headquarters:<br>
   Delhi:123/6,Gandhi Nagar,Delhi;<br>
    Uttar Pradesh:45/2,Alambagh,Lucknow;<br>
Bihar:129/95,Kankerbagh,Bihar;<br></b>
        </td>
        </tr>
</th>
</table>

</div>
</body>
</html>
<%@ include file="footer.jsp" %>