<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">

<style>
#email,#pass,#cpass{
  border-radius: 10px;
  padding: 15px; 
  width: 250px;
  height: 40px;  
      background-color: #C1D1D1;
}
input[type=submit]:hover {
  background-color: #094A04;
}
input[type=submit] {
  width: 90%;
  background-color: #4CAF50;
  color: white;
  padding: 7px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 15px;
  cursor: pointer;}

.bg-img {
 width: 100%;
 border: 1px solid black;
  /* The image used */
  background-image: url("image/busbg86.jpg");

  min-height: 530px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100%;
 
  

}

/* Add styles to the form container */
.contain {
color:white;
  position: relative;
  right: 0;
  left: 100px;
  margin: 20px;
  max-width: 310px;
  padding: 26px;
  background: rgba(0, 0, 0, 0.7);
}
</Style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>
<div class="bg-img">
<div  class="col-lg-8 m-auto d-block">

<form action="Forgot" method="post" class="contain" onsubmit="return validation()">
<h2>Change Password</h2><br>

<div class="form-group">
<label for="fname"><i class="fa fa-user"></i> Email:</label>

<input id="email" type="text" name="uemail" placeholder="Enter Your Email"><br>
<span id="uemail" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="fname"><i class="fa fa-key"></i>New Password:</label>

<input id="pass" type="password" name="upass" placeholder="New Password" ><br>
<span id="upass" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label for="fname"><i class="fa fa-key"></i>Confirm Password:</label>

<input id="cpass" type="password" name="cpass" placeholder="Confirm Password" ><br>
<span id="ucpass" class="text-danger font-weight-bold"></span>
</div>
<input type="submit"value="submit"></h2>

</form></div></div>
<script type="text/javascript">
            function validation(){
	var email =document.getElementById('email').value;
	var pass=document.getElementById('pass').value;
	var cpass=document.getElementById('cpass').value;
            
	if(email==""){
		document.getElementById('uemail').innerHTML="**Email id can not be empty";
		return false;
	}
	if(email.indexOf('@')<=0){
		document.getElementById('uemail').innerHTML="*invalid '@' position";
		return false;
	}
	if((email.charAt(email.length-4)!='.')&&(email.charAt(email.length-3)!='.')){
		document.getElementById('uemail').innerHTML="*invalid '.' position";
		return false;
	}
	if(pass==""){
		document.getElementById('upass').innerHTML="**Password can not be empty";
		return false;
	}
	if((pass.length<=4)||(pass.length>15)){
		document.getElementById('upass').innerHTML="*Password must be 5 to 15 Letter";
		return false;
	}
	if(pass!=cpass){
		document.getElementById('ucpass').innerHTML="**Confirm PassWord are not matched";
		return false;
	}
	if(cpass==""){
		document.getElementById('ucpass').innerHTML="**Confirm PassWord can not be empty";
		return false;
	}
            
           
            }
       </script>
</body>
</html>
<%@ include file="footer.jsp" %>