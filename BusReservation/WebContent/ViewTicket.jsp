<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.bg-img {
  /* The image used */
  background-image: url("image/BUSIMAGE5.jpg");

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100%;
}
table{

border-style: dashed dotted;
border-width:10px;
}
td{

border-style: dashed none;
border-width:10px;
}
.b1 {
  width:100px;
}
.b2 {
 width:300px;
}
.b3 {
 width:350px;
}
.b4 {
 width:150px;
}
.b5 {
 width:150px;
}
#cancel{
 width: 100%;
  background-color: #C80B20;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 45px;
  cursor: pointer;
}
#view {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 45px;
  cursor: pointer;}
  #cancel:hover {
  background-color: #6A0B15;
}
 #view:hover {
  background-color: #094A04;
}
input[type=text] {
  width: 50%;
  padding: 14px 20px;
  margin: 8px 0;
  border-radius: 45px;
}
</style>
</head>
<body><div class="bg-img">
</br></br>
<%
HttpSession session3=request.getSession();

String uemail1=(String)session3.getAttribute("uemail");
%>
 <%
 try{
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
	 PreparedStatement ps=con.prepareStatement("select * from ticket where uemail=?");
	 ps.setString(1,uemail1);
	 ResultSet res=ps.executeQuery();
	 while(res.next()){
 %>
  
<table bgcolor="lightgray">
<tr>
<th class="b1"></th>
<th class="b2"></th>
<th class="b3"></th>
<th class="b4"></th>
<th class="b5"></th>
</tr>
<tr>
<td ><img src="image/ok.png" alt="Booked" width="80" height="80"></td>

<td ><b><%=res.getString("busNo")%>.<%=res.getString("busName")%></b></br><%=res.getString("dateofjourney")%>
</td>
<td><%=res.getString("cityFrom")%>==><%=res.getString("cityTo")%></td>
<td><form action="Ticket.jsp" method="GET">   
 <input type="hidden" name="id" value=<%=res.getString("id")%>>
 <input id="view" type="submit" value ="View Ticket"></form></td>

<td><form action="cancel" method="POST">   
 <input type="hidden" name="id" value=<%=res.getString("id")%>>
<input id="cancel" type="Submit" value ="Cancel Ticket"></form></td>

</tr>
</table>

 
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