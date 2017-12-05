<?php

if( isset ($_POST['username'])&& isset ($_POST['password'])&&isset ($_POST['email'])&&isset ($_POST['retypepassword'])){
$link = mysqli_connect("localhost","root","","bangiay");
if (mysqli_connect_errno()){
	echo "Failed to connect database";
	exit();
}
$query ="INSERT INTO user (ID, USERNAME, PASSWORD, EMAIL) VALUES (NULL, '".$_POST['username']."', '".md5($_POST['password'])."', '".$_POST['email']."');";
if($_POST['password']==$_POST['retypepassword']){
    if ($link->query($query)){
	 echo "<script>alert (\"INSERT!\")</script>";
	}else echo "<script>alert (\"ERROR!\")</script>";}
else{
	echo "<script>alert (\"mat khau khong trung khop\")</script>";}
}else $error = "You have to enter your username and password" ;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="../assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>LOGIN</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!-- Canonical SEO -->
	<link rel="canonical" href="http://www.creative-tim.com/product/material-kit-pro" />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/material-kit.min.css" rel="stylesheet"/>
</head>
<body>
<body class="signup-page">
	<nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    	<div class="container">
        	<!-- Brand and toggle get grouped for better mobile display -->
        	<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
            		<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
        		</button>
        		<a class="navbar-brand" href="../presentation.html">SHOPPING</a>
        	</div>
			    	
	    </div>
    </nav>
	<div class="page-header header-filter" filter-color="purple" style="background-image: url('../assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
    	<div class="container">
			<div class="row">
    			<div class="col-md-7 col-md-offset-3">

					<div class="card card-signup">
                        <h2 class="card-title text-center">REGISTER</h2>
                        <div class="row col-md-offset-1">
<fieldset style="width:500px;">
<form method="POST">
<table border="0">

<div class="input-group">
<span class="input-group-addon">
<i class="material-icons">face</i>
</span>
<input type="text" name="username" class="form-control" placeholder="USERNAME...">
</div>

<div class="input-group">
<span class="input-group-addon">
<i class="material-icons">lock_outline</i>
</span>
<input type="password" name="password"placeholder="PASSWORD..." class="form-control" />
</div>

<div class="input-group">
<span class="input-group-addon">
<i class="material-icons">lock_outline</i>
</span>
<input type="password" name="retypepassword"placeholder="RETYPE PASSWORD..." class="form-control" />
</div>

<div class="input-group">
<span class="input-group-addon">
<i class="material-icons">email</i>
</span>
<input type="text" name="email" placeholder="Email..." class="form-control"/>
</div>

<div class="footer text-center col-md-offset-1">
<input type="submit" class="btn btn-primary btn-round btn-rose" value="REGISTER">
</div>
</table>
</form>
</fieldset>
                         </div>
                	</div>

                </div>
            </div>
		</div>
    </div>
</body>
<!--   Core JS Files   -->
	<script src="../assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../assets/js/material.min.js"></script>

	<!--    Plugin for Date Time Picker and Full Calendar Plugin   -->
	<script src="../assets/js/moment.min.js"></script>

	<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/   -->
	<script src="../assets/js/nouislider.min.js" type="text/javascript"></script>

	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker   -->
	<script src="../assets/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select   -->
	<script src="../assets/js/bootstrap-selectpicker.js" type="text/javascript"></script>

	<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/   -->
	<script src="../assets/js/bootstrap-tagsinput.js"></script>

	<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput   -->
	<script src="../assets/js/jasny-bootstrap.min.js"></script>

	<!--    Plugin For Google Maps   -->
	<script  type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFPQibxeDaLIUHsC6_KqDdFaUdhrbhZ3M"></script>

	<!--    Plugin for 3D images animation effect, full documentation here: https://github.com/drewwilson/atvImg    -->
	<script src="../assets/js/atv-img-animation.js" type="text/javascript"></script>

	<!--    Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc    -->
	<script src="../assets/js/material-kit.min.js" type="text/javascript"></script>
</html>