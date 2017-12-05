<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="../assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Signup Page - Material Kit PRO by Creative Tim</title>

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


<?php
session_start();
$conn;
require "../lib/connectdb.php";

//require "lib/trangchu.php";
if( isset($_GET["p"]))
	$p=$_GET["p"];
else
	$p="";

?>

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
        		<a class="navbar-brand" href="../presentation.html">Material Kit PRO</a>
        	</div>

        	<div class="collapse navbar-collapse">
        		<ul class="nav navbar-nav navbar-right">
    				<li>
						<a href="../index.html">
							<i class="material-icons">apps</i> Components
						</a>
					</li>

					<li class="dropdown">
						<a href="signup-page.html#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="material-icons">view_day</i> Sections
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu dropdown-with-icons">
							<li>
								<a href="../sections.html#headers">
									<i class="material-icons">dns</i> Headers
								</a>
							</li>
							<li>
								<a href="../sections.html#features">
									<i class="material-icons">build</i> Features
								</a>
							</li>
							<li>
								<a href="../sections.html#blogs">
									<i class="material-icons">list</i> Blogs
								</a>
							</li>
							<li>
								<a href="../sections.html#teams">
									<i class="material-icons">people</i> Teams
								</a>
							</li>
							<li>
								<a href="../sections.html#projects">
									<i class="material-icons">assignment</i> Projects
								</a>
							</li>
							<li>
								<a href="../sections.html#pricing">
									<i class="material-icons">monetization_on</i> Pricing
								</a>
							</li>
							<li>
								<a href="../sections.html#testimonials">
									<i class="material-icons">chat</i> Testimonials
								</a>
							</li>
							<li>
								<a href="../sections.html#contactus">
									<i class="material-icons">call</i> Contacts
								</a>
							</li>

						</ul>
					</li>

					<li class="dropdown">
						<a href="signup-page.html#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="material-icons">view_carousel</i> Examples
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu dropdown-with-icons">
							<li>
								<a href="about-us.html">
									<i class="material-icons">account_balance</i> About Us
								</a>
							</li>
							<li>
								<a href="blog-post.html">
									<i class="material-icons">art_track</i> Blog Post
								</a>
							</li>
							<li>
								<a href="blog-posts.html">
									<i class="material-icons">view_quilt</i> Blog Posts
								</a>
							</li>
							<li>
								<a href="contact-us.html">
									<i class="material-icons">location_on</i> Contact Us
								</a>
							</li>
							<li>
								<a href="landing-page.html">
									<i class="material-icons">view_day</i> Landing Page
								</a>
							</li>
							<li>
								<a href="login-page.html">
									<i class="material-icons">fingerprint</i> Login Page
								</a>
							</li>
							<li>
								<a href="pricing.html">
									<i class="material-icons">attach_money</i> Pricing Page
								</a>
							</li>
							<li>
								<a href="ecommerce.html">
									<i class="material-icons">shop</i> Ecommerce Page
								</a>
							</li>
							<li>
								<a href="product-page.html">
									<i class="material-icons">beach_access</i> Product Page
								</a>
							</li>
							<li>
								<a href="profile-page.html">
									<i class="material-icons">account_circle</i> Profile Page
								</a>
							</li>
							<li>
								<a href="signup-page.html">
									<i class="material-icons">person_add</i> Signup Page
								</a>
							</li>
						</ul>
					</li>

					<li>
						<a href="http://www.creative-tim.com/buy/material-kit-pro?ref=presentation" target="_blank" class="btn btn-white btn-simple">
							<i class="material-icons">shopping_cart</i> Buy Now
						</a>
					</li>
        		</ul>
        	</div>
    	</div>
    </nav>
<?php 
if(isset($_POST["btnSignup"]))
{
	if($_POST["signup-password"]==$_POST["signup-retype-password"]){
 $email=$_POST["signup-email"];
	$matkhau=$_POST["signup-password"];
	//echo $emaildangnhap.$matkhaudangnhap;
	$qr="SELECT count(*) from `nguoidung` where email='".$email.";";
	//echo "<br/><br/><br/><br/><br/>".$qr;
	if($danhsachnguoidung=mysqli_query($conn,$qr))
	{if(mysqli_num_rows($danhsachnguoidung)==0)
	{
		echo 
		$qr="INSERT INTO `nguoidung`(`hoten`, `email`, `passwords`) VALUES (\"".$_POST["signup-firstname"]."\",\"".$_POST["signup-email"]."\",\"".$_POST["signup-password"]."\") ;";
		mysqli_query($conn,$qr);
		echo "<script>alert (\"thanh cong\")</script>";
	}
	}	else{ echo "<script>alert (\"tai khoan email da ton tai\")</script>";}
	
}
else{
	echo "<script>alert (\"mat khau khong trung khop\")</script>";
}
}
?>

	<div class="page-header header-filter" filter-color="purple" style="background-image: url('../assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
    	<div class="container">
			<div class="row">
    			<div class="col-md-10 col-md-offset-1">

					<div class="card card-signup">
                        <h2 class="card-title text-center">Register</h2>
                        <div class="row">
                            <div class="col-md-5 col-md-offset-1">
            					<div class="info info-horizontal">
            						<div class="icon icon-rose">
            							<i class="material-icons">timeline</i>
            						</div>
            						<div class="description">
            							<h4 class="info-title">Marketing</h4>
            							<p class="description">
            								We've created the marketing campaign of the website. It was a very interesting collaboration.
            							</p>
            						</div>
            		        	</div>

            					<div class="info info-horizontal">
            						<div class="icon icon-primary">
            							<i class="material-icons">code</i>
            						</div>
            						<div class="description">
            							<h4 class="info-title">Fully Coded in HTML5</h4>
            							<p class="description">
            								We've developed the website with HTML5 and CSS3. The client has access to the code using GitHub.
            							</p>
            						</div>
            					</div>

            					<div class="info info-horizontal">
            						<div class="icon icon-info">
            							<i class="material-icons">group</i>
            						</div>
            						<div class="description">
            							<h4 class="info-title">Built Audience</h4>
            							<p class="description">
            								There is also a Fully Customizable CMS Admin Dashboard for this product.
            							</p>
            						</div>
            					</div>
            				</div>
                            <div class="col-md-5">
                                <div class="social text-center">
                                    <button class="btn btn-just-icon btn-round btn-twitter">
                                        <i class="fa fa-twitter"></i>
                                    </button>
                                    <button class="btn btn-just-icon btn-round btn-dribbble">
                                        <i class="fa fa-dribbble"></i>
                                    </button>
                                    <button class="btn btn-just-icon btn-round btn-facebook">
                                        <i class="fa fa-facebook"> </i>
                                    </button>
                                    <h4> or be classical </h4>
                                </div>

								<form class="form" method="POST" action="signup-page.php">
									<div class="card-content">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">face</i>
											</span>
											<input type="text" name="signup-firstname" class="form-control" placeholder="First Name...">
										</div>

										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">email</i>
											</span>
											<input type="text" name="signup-email"class="form-control" placeholder="Email...">
										</div>

										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">lock_outline</i>
											</span>
											<input type="password" name="signup-password"placeholder="Password..." class="form-control" />
										</div>
										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons">lock_outline</i>
											</span>
											<input type="password" name="signup-retype-password"placeholder="Retype password..." class="form-control" />
										</div>

										<!-- If you want to add a checkbox to this form, uncomment this code -->

										<div class="checkbox">
											<label>
												<input type="checkbox" name="optionsCheckboxes" checked>
												I agree to the <a href="signup-page.html#something">terms and conditions</a>.
											</label>
										</div>
									</div>
									<div class="footer text-center">
									<input type="submit" name="btnSignup" class="btn btn-primary btn-round btn-rose" value="Get Started">
									</div>
								</form>
                            </div>
                        </div>
                	</div>

                </div>
            </div>
		</div>

		<footer class="footer">
	        <div class="container">
	            <nav class="pull-left">
					<ul>
						<li>
							<a href="http://www.creative-tim.com">
								Creative Tim
							</a>
						</li>
						<li>
							<a href="http://presentation.creative-tim.com">
							   About Us
							</a>
						</li>
						<li>
							<a href="http://blog.creative-tim.com">
							   Blog
							</a>
						</li>
						<li>
							<a href="http://www.creative-tim.com/license">
								Licenses
							</a>
						</li>
					</ul>
	            </nav>
	            <div class="copyright pull-right">
	                &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="http://www.creative-tim.com" target="_blank">Creative Tim</a>
	            </div>
	        </div>
	    </footer>

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
