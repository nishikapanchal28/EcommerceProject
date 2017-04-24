<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#image')
                .attr('src', e.target.result)
                 .width(150)
                        .height(200);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
function FillBilling(f) {
	  if(f.billingtoo.checked == true) {
	    f.billing_app.value = f.shipping_app.value;
	   
	  }
	  if(f.billingtoo.checked == false) {

          f.billing_app.value = '';

	}
}
function validateEmail(email) {
	  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  return re.test(email);
	}

	function validate() {
	  $("#result").text("");
	  var email = $("#email").val();
	  if (validateEmail(email)) {
	    $("#result").text(email + "is valid");
	  
	  } else {
	    $("#result").text(email + " is not valid ");
	    $("#result").css("color", "red");
	  }
	  return false;
	}

	$("#validate").bind("click", validate);
	</script>
<style>
body{
background-image: url("resources/images/Mackenzie-Leather-Bags-Goods-Product-Photography-13.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
div.panel{
 
    width: 900px;
      background: rgba(130,130,130,.3);
}
#image{
  border: 1px solid black;
    margin-top: 10px;
    margin-bottom: 10px;
    margin-right: 50px;
    margin-left: 0px;
    background-color: lightblue;
   
   
    
}
</style>

</head>
<body>
<div class="container">
<div class="panel panel-default">


<form:form action="registerdetails" commandName="customer" method="POST"  enctype="multipart/form-data" class="form-horizontal">

 <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue">
  <center>YOUR PERSONAL DETAILS</center> </div>
       <div class="panel-body">
      
<div class="form-group">
 
      <label class="control-label col-sm-2" for="firstname"> FIRST NAME: </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="firstname" placeholder="Enter the first name"/>
        <form:errors path="firstname"></form:errors>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">LAST NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter the last name "/>
          <form:errors path="lastname"></form:errors>
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"> EMAIL:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="email"   id='email' placeholder="Enter email"/>
                  <form:errors path="lastname"></form:errors>
        
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="phonenumber">PHONE NUMBER: </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="phonenumber"  placeholder="Enter phone number "/>
                          <form:errors path="phonenumber"></form:errors>
        
      </div>
    </div>
    <div>
      <label class="control-label col-sm-2" >PROFILE PICTURE:</label>
    <input type='file' onchange="readURL(this);" /> <br>
     <img id="image" src="#" alt="your image" />
   
    </div>
    </div>
    </div>
    <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue">
  <center>YOUR LOGIN DETAILS</center> </div>
       <div class="panel-body">
      <div class="form-group">
      <label class="control-label col-sm-2" for="username">USER NAME:  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="users.username"  placeholder="Enter user name "/>
          <form:errors path="users.username"></form:errors>
      </div>
    </div>
 <div class="form-group">
      <label class="control-label col-sm-2" for="password">PASSWORD:</label>
      <div class="col-sm-10">
        <form:input type="password" class="form-control" path="users.password"  placeholder="Enter password"/>
                  <form:errors path="users.password"></form:errors>
        
      </div>
    </div>
    </div>
    </div>
     <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue">
   <center>BILLING ADDRESS DETAILS </center></div>
       <div class="panel-body">
<div class="form-group">
      <label class="control-label col-sm-2" for="apartmentnumber">APARTMENT NUMBER:  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.apartmentnumber"  placeholder="Enter apartment number"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="streetname">STREET NAME:  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.streetname"  placeholder="Enter street name"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="city"> CITY: </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.city"  placeholder="Enter city"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="state"> STATE:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.state"  placeholder="Enter state"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="country"> COUNTRY:  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.country"  placeholder="Enter country"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode"> ZIP CODE:   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.zipcode"  placeholder="Enter zipcode"/>
      </div>
      </div>
     
    </div>
    </div>
   
     <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue">
     <center>SHIPPING ADDRESS DETAILS</center> </div>
        <div class="panel-body">
    <div class="form-group">
      <br>
<input type="checkbox" name="billingtoo" onclick="FillBilling(this.form)">
<em>Check this box if Billing Address and Mailing Address are the same.</em>
      <label class="control-label col-sm-2" for="apartmentnumber">APARTMENT NUMBER:   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.apartmentnumber"  placeholder="Enter apartment number"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="streetname">STREET NAME:   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.streetname"  placeholder="Enter street name"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="city"> CITY : </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.city"  placeholder="Enter city"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="state"> STATE:  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.state"  placeholder="Enter state"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="country"> COUNTRY:  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.country"  placeholder="Enter country"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode"> ZIP CODE:   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.zipcode"  placeholder="Enter zipcode"/>
      </div>
      </div>
    </div></div>
<div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
<input type="submit" value="SUBMIT" class="btn btn-info" id='validate'>
<input type="reset" value="RESET" class="btn btn-info">
</div>
</div>
    </form:form>
</div>
</div>
</body>
</html>
<%@ include file="fotter.jsp" %>