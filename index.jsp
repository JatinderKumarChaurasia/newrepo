<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="assets/styles/material-components-web.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="assets/styles/bootstrap.min.css">
<link rel="stylesheet" href="assets/styles/style.css">
<link rel="stylesheet" href="assets/styles/icon.css">
<script src="assets/scripts/logsign.js" type="text/javascript"></script>
<title>Welcome To Assistance Portal</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Alegreya|Alegreya+Sans|IBM+Plex+Mono:400,400i|IBM+Plex+Sans+Condensed:400,400i|IBM+Plex+Sans:100,100i,400,400i,700,700i|IBM+Plex+Serif:400,400i|Merriweather|Merriweather+Sans|Montserrat|Nanum+Myeongjo|Nunito|Nunito+Sans|Quattrocento|Quattrocento+Sans|Roboto|Roboto+Mono|Roboto+Slab')
	;

* {
	font-family: 'Quattrocento Sans', sans-serif;
}

@import "@material/form-field/mdc-form-field";

@import "@material/radio/mdc-radio";

.nav {
	z-index: 2;
	background-color: #36648B;
}

body {
	background-image: url("assets/images/bgimagereal.png");
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
 <script>

        function validateForm() {
            var pass = document.getElementById("userpassword").value;
            var pass_regex = /^[a-zA-Z]{7,20}$/;
            var username = document.getElementById("username").value;
            var username_regex = /^[0-9]{6,10}$/;

            if (username.match(username_regex) && username.length >= 6) {
                document.getElementById("username").style.borderColor = "green";
                document.getElementById("wrongID").innerHTML = "";
            }
            else {
                document.getElementById("username").style.borderColor = "red";
                document.getElementById("username").value="";
                document.getElementById("wrongID").style.color = "red";
                document.getElementById("wrongID").innerHTML = "*";
                alert("Entered Username/Password is wrong");
                return false;
            }
            if (pass.match(pass_regex)) 
            {
                document.getElementById("userpassword").style.borderColor = "green";
                document.getElementById("wrongPassword").innerHTML = "";
            }
            else {
                document.getElementById("userpassword").style.borderColor = "red";
                document.getElementById("userpassword").value="";
                document.getElementById("wrongPassword").style.color = "red";
                document.getElementById("wrongPassword").innerHTML = "*";
                alert("Entered Username/Password is wrong");
                return false;
            }
            var type = document.getElementsByName("type");
            if (type[0].checked)
            {
                console.log("customer");               
            }
            else if( type[1].checked) 
            {
                console.log("mechanic");               
            }
            else 
            {
                alert("Please Select Your Type");
                return false;
            }
        }
    </script>
</head>
<body>
	<header>
	<div class="navigation">
		<div class=" check  p-1">
			<nav style="backface-visibility: hidden;"
				class="nav justify-content fixed-top p-2"> <a
				class=" navbar-brand text-sm-center nav-link " href="#"> <img
				src="assets/images/logo.jpg" width="30" height="30"
				class="d-inline-block align-top"> On Road Assistance
			</a> <a class=" text-sm-right nav-link" data-toggle="modal"
				data-target="#loginModal" href="" >Login</a> <a
				class=" text-sm-right nav-link active" data-toggle="modal"
				data-target="#myModal">SignUp</a> <a class=" text-sm-right nav-link"
				href="#" tabindex="-1">Help</a> </nav>
		</div>
	</div>
	</header>
	<!-- Login Modal -->
	<div class="modal" id="loginModal">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px;">
					
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Login
					</h4>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form class="align-middle" action="" onsubmit="return validateForm()">
                        <div class="form-group">
                            <h6 style="text-align:left" >Username</h6>
                            <input type="text"  class="form-control" id="username" autocomplete="off" name="userId" aria-describedby="IdHelp" placeholder="123456" data-toggle="popover"/>
                            <span id="wrongID"></span>
                        </div>
                        <div class="form-group">
                            <h6 style="text-align:left" >Password</h6>
                            <input type="password" class="form-control" name="userPassword" id="userpassword" placeholder="Password" aria-describedby="userpasswordhelp"/>
                            <span id="wrongPassword"></span>
                        </div>
                        <div class="mdc-form-field">
                            <div class="mdc-radio">
                                <input type="radio" class="mdc-radio__native-control forRadio" value="C" id="customer" name="type"/>
                                <div class="mdc-radio__background">
                                    <div class="mdc-radio__outer-circle"></div>
                                    <div class="mdc-radio__inner-circle"></div>
                                </div>
                            </div>
                            <h6 class="mt-2">Customer</h6>
                            <div class="mdc-radio ">
                                <input type="radio"  class="mdc-radio__native-control forRadio" value="M" id="mechanic" name="type"/>
                                <div class="mdc-radio__background">
                                    <div class="mdc-radio__outer-circle"></div>
                                    <div class="mdc-radio__inner-circle"></div>
                                </div>
                            </div>
                            <h6 class="mt-2">Mechanic</h6>
                        </div>
                        <div class="mdc-card__primary-action mdc-card__actions--full-bleed" tabindex="0">
                            <button class="foo-button mdc-button" type="submit" class="btn btn-primary">Submit</button>
                        </div>

                    </form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
					<p>
						Not a member? <a href="#">Sign Up</a>
					</p>
					<p>
						Forgot <a href="#">Password?</a>
					</p>
				</div>
			</div>

		</div>
	</div>

	<!-- Signup Modal -->
	<div class="modal" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">

					<h6 class="modal-title">Signup as</h6>
				</div>
				<div class="modal-body" style="text-align: center">
				<form action="customerSignUp.html">
					<input type="submit" value="Customer" id="asCustomer" class="btn btn-info btn-lg p-2 m-3" />
				</form>
				<form action="mechanicSignUp.html">
					<input type="submit" value="Mechanic" id="asMechanic" class="btn btn-info btn-lg p-2 m-3" />
				</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript"
		src="assets/scripts/material-components-web.min.js"></script>

	<script type="text/javascript" src="assets/scripts/jquery.min.js"></script>

	<script type="text/javascript"
		src="assets/scripts/jquery-3.3.1.slim.min.js"></script>

	<script type="text/javascript" src="assets/scripts/popper.min.js"></script>

	<script type="text/javascript" src="assets/scripts/bootstrap.min.js"></script>
</body>
</html>