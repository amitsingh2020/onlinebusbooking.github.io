<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.btn {
  background-color: hsl(190,80%,30%);
  border: none;
  color: white;
  padding: 12px 7px;
  font-size: 23px;
  cursor: pointer;
}

/* Darker background on mouse-over */
.btn:hover {
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
 .dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 25px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
   color: black;
  background-color: #f9f9f9;
  min-width: 190px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
<%
response.setHeader("Cache-Control","no-store,no-cache,must-revalidate");
if(session.getAttribute("uemail")==null)
	response.sendRedirect("Welcome.jsp");
%>
<%HttpSession session2=request.getSession();
 String uemail=(String)session2.getAttribute("uemail");
%>
  <%
 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
	 PreparedStatement ps=con.prepareStatement("select * from adminlogin where email=?");
	 ps.setString(1,uemail);
	 ResultSet res=ps.executeQuery();
	 while(res.next()){
		 
	 
 %>
<header>
<span><img src="image/BusLogo.png";

height="100"width="100"alt="logo"style="float:left;">

</span>
<ul>
<li><a title="Home Page" href="UpdateBusList.jsp"><button class="btn"><i class="fa fa-home"></i> Home</button></a></li>
<li><a title="contact us" href="help/mainhelp.jsp" target="ifr"><button class="btn">Help</button></a></li>
<li><a title="about our team" href="AboutUs.jsp" target="ifr"><button class="btn">About_us</button></a></li>
<li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li><li></li>
<li>  <div class="dropdown">
    <button class="dropbtn"><i class="fa fa-user icon"></i> <%=res.getString("name")%>
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="AdminProfile.jsp"><i class="fa fa-user icon"></i> Profile</a>
     <a href="Logout.jsp">Logout</a>
    </div>
  </div> </li>
</ul>
</header>

<%
    }}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>