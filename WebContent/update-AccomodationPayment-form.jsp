<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Accommodation Payment Records</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
function APaymentCalculations(){
	var day = document.getElementById("days").value;
	day= parseInt(day);
	var adv = document.getElementById("advance").value;
	adv= parseInt(adv);
	var room = document.getElementById("category").value;
	
	var rest = document.getElementById("restaurant").value;
	rest= parseInt(rest);
	
	
	var total = 0;
	total = parseInt("netTotal");
	 
	if(adv == 500){
		if(room=='Single'){
			total = day*3000 + rest - 500;
		}
		else if(room=='Double'){
			total = day*5000 + rest - 500;
		}
		else{
			total = day*7000 + rest - 500;
		}
	}
	else{
		if(room=='Single'){
			total = day*3000 + rest ;
		}
		else if(room=='Double'){
			total = day*5000 + rest ;
		}
		else{
			total = day*7000 + rest ;
		}
		}
	
 	document.getElementById("netTotal").value = total ;
	
}
</script>


<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("images/abstract.jpg");

    /* Full height */
   /* height: 100%; */

    /* Center and scale the image nicely */
    background-position: center; 
    background-repeat: repeat-y;
     background-size: cover; 
}
</style>

</head>
<body >
<div class="bg">


<!--  nav tag -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="adminHome.jsp">Home</a></li>
  		<li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Inventory
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">Tracking consumption</a></li>
     				 	<li><a href="#">Add order</a></li>
      					<li class="active"><a href="#">Stock Maintenance</a></li> 
    				</ul>
  		</li>
        <li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Accommodation
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">Booking handling</a></li>
     				 	<li><a href="#">check availability</a></li>
      					<li><a href="#">Offers Handling</a></li> 
    				</ul>
  		</li>
          <li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Career and Staff
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">Shifts and schedules</a></li>
     				 	<li><a href="#">Salary </a></li>
      					<li><a href="#">Basic needs</a></li> 
      					<li><a href="#">Vacancies handling</a></li> 
      					<li><a href="#">Applicant handling</a></li> 
      					<li><a href="#">Interview and training sessions</a></li> 
    				</ul>
  		</li>
        <li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Event Planning
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">Wedding packages booking</a></li>
     				 	<li><a href="#">Other events planning</a></li>
      					<li><a href="#">Entertainment</a></li> 
      					
    				</ul>
  		</li>
<li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Restaurant
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">Catering Handling</a></li>
     				 	<li><a href="#">Table reservations </a></li>
      					<li><a href="#">Take away</a></li> 
      					<li><a href="#">Menu handling</a></li> 
      					
    				</ul>
  		</li>
       <li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Client Finance
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">Accommodation Payments</a></li>
     				 	<li><a href="#">Restaurant Payments </a></li>
      					<li><a href="#">Events booking Payments</a></li> 
      					
    				</ul>
  		</li>
  		<li class="dropdown">
    			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Staff and Inventory Finance
    			<span class="caret"></span></a>
    				<ul class="dropdown-menu">
      					<li><a href="#">salary payments</a></li>
     				 	<li><a href="#">Inventory payments</a></li>
      					
      					
    				</ul>
  		</li>
  		
      </ul>
      
    </div>
  </div>
</nav>



<div class="container">
 	 <div style="background-color:white; width:600px ; margin:0 auto ;height: 900% ; align:center ;">

  <h3>Update Accomodation Payments</h3>

		<form action="AccomodationPaymentControllerServelet" method="GET">
		
			<input type="hidden" name="command" value="UPDATE" />
			
			<input type="hidden" name="accPayId" value="${THE_ACCPAY.id}" />
			

   <div class="form-group">
      <label for="client_ID">Reservation ID :</label>
      <input type="text" class="form-control"  id=reserveId name="reserveId"  value="${THE_ACCPAY.reserveId}"> 
    </div>
   
     <div class="form-group">
      <label for="days">Date :</label>
      <input type="date" class="form-control" id="date" name="date" value="${THE_ACCPAY.date}">
    </div>
 
 <div class="form-group">
      <label for="client_ID">Room ID :</label>
      <input type="text" class="form-control"  id=RID name="RID"  value="${THE_ACCPAY.RID}"> 
    </div>
    
     <div class="form-group">
      <label for="category">Room Type :</label>
    <input type="text" class="form-control" id="category" name="category" value="${THE_ACCPAY.category}" >
  
    </div>
    
     <div class="form-group">
    <label for="days">Number of Days at Stay :</label>
      <input type="text" class="form-control" id="days" name="days" value="${THE_ACCPAY.days}"> 
    </div>
  
  
    <div class="form-group">
    <label for="extra_payments">Advance Payment done :</label>
  
    <input type="number" class="form-control" id="advance" name="advance" value = "${THE_ACCPAY.advance}" > 
  
  
  </select>  

  
	
     <div class="form-group">
    <label for="restaurant_payments">Restaurant Payments to be done :</label>
      <input type="text" class="form-control" id="restaurant" name="restaurant" value = "${THE_ACCPAY.restaurant}" > 
          </div>
</div>
 
     <div class="form-group">
  <button type="button" class="btn btn-default" style="background-color: #e7e7e7;" onClick="APaymentCalculations()">CALCULATE</button>
    </div>
  
     <div class="form-group">
    <label for="due">Total Payment :</label>
        <input type="text" class="form-control" id="netTotal" name="total"  value ="0" > 
       </div>

  <!--  "${THE_ACCPAY.total}"-->
 
     <div class="form-group">
<button type="submit" class="btn btn-default" style="background-color: #e7e7e7;" value="SAVE">SAVE</button>
  

</form>


</div>
</div>


</div>

</body>
</html>