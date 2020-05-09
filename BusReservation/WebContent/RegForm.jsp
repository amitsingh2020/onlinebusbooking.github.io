<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ include file="header1.jsp" %>
<!DOCTYPE html>
<html>
<head><style>

#name,#email,#pass,#cpass,#phone{
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
  width: 80%;
  background-color: #4CAF50;
  color: white;
  padding: 6px 10px;
  margin: 8px 0;
  border: none;
  border-radius: 15px;
  cursor: pointer;}

.bg-img {
 width: 100%;
 border: 1px solid black;
  /* The image used */
  background-image: url("image/busbg63.jpg");

  min-height: 530px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: 100%;
 
  

}

/* Add styles to the form container */
.containe {
color:white;
  position: relative;
  right: 0;
  left: 100px;
  margin: 15px;
  max-width: 330px;
  padding: 20px;
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
<div class="containe">
 <b><form action="Register" method="post"  onsubmit="return validation()">



 <div class="form-group">
 <center><h2>Registration Form</h2></center>
 <label>Name:</label><br>
<input type="text" id="name" name="uname" placeholder="Enter Full Name"><br>
<span id="uname" class="text-danger font-weight-bold"></span>

</div>
<div class="form-group">
<label>Email:</label><br>
<input type="text" id="email" name="uemail" placeholder="Enter Your Email" ><br>
<span id="uemail" class="text-danger font-weight-bold"></span>
</div>
<div class="form-group">
<label>Password:</label><br>
<input type="password" id="pass" name="upass" placeholder="Enter New Password" ><br>
<span id="upass" class="text-danger font-weight-bold"></span>

</div>
<div class="form-group">
<label>Confirm Password:</label><br>
<input type="password" id="cpass" name="cpass" placeholder="Confirm Password" ><br>
<span id="ucpass" class="text-danger font-weight-bold"></span>

</div>
<div class="form-group">
<label>Moblie:</label><br>
<input type="text" id="phone" name="uphone" placeholder="Enter Mobile Number" ><br>
<span id="uphone" class="text-danger font-weight-bold"></span>

</div>

<input type="submit" id="submit" value="Submit"></form></b>

</div>
</div>
</div>


  <script type="text/javascript">
            function validation(){
	
	var name =document.getElementById('name').value;
	var email =document.getElementById('email').value;
	var pass=document.getElementById('pass').value;
	var cpass =document.getElementById('cpass').value;
	var phone=document.getElementById('phone').value;
	
	if(name==""){
		document.getElementById('uname').innerHTML="**Name can not be empty";
		return false;
	}
	if((name.length<=2)||(name.length>20)){
		document.getElementById('uname').innerHTML="*Name must be between 2 and 20";
		return false;
	}
	if(!isNaN(name)){
		document.getElementById('uname').innerHTML="*Only characters are allows";
		return false;
	}
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
	
	if(phone==""){
		document.getElementById('uphone').innerHTML="**Phone number can not be empty";
		return false;
	}
	if(isNaN(phone)){
		document.getElementById('uphone').innerHTML="**Phone number must be in digit";
		return false;
	}
	if(phone.length!=10){
		document.getElementById('uphone').innerHTML="**Phone number must be 10 digit";
		return false;
	}

}


</script>


</body>
</html>
<%@ include file="footer.jsp" %>