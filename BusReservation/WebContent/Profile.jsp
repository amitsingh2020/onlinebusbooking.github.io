<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
<style>
.img{
length:200px;
width:200px;
margin-left:-1000px;

}
.bgimg {
  /* The image used */
  background-image: url("image/profile2.jpg");

  min-height: 440px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100%;
}
</style>
</head>
<body><div class="bgimg" align="center">
<%HttpSession session3=request.getSession();

 String email=(String)session3.getAttribute("uemail");
 %>
 <%
 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
	 PreparedStatement ps=con.prepareStatement("select * from login where email=?");
	 ps.setString(1,email);
	 ResultSet res=ps.executeQuery();
	 while(res.next()){
		 
	 
 %>
<img  class="img" src="image/profile.png">
<h1><%=res.getString("name")%></h1></br>
<h3>Email: <%=uemail %></h3>
<h3>Mobile:<%=res.getString("mobile")%></h3>
<%
    }}
catch(Exception e){
	e.printStackTrace();
}

%>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>