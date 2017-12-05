

<?php
$conn;

?>
<?php

$conn=mysqli_connect("localhost","root","","thegioididong");
mysqli_set_charset($conn, "utf8");
if (!$conn) {
    die("Kết nối thất bại: " . mysqli_connect_error());
}
?>



<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="../assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Product Page - Material Kit PRO by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/material-kit.min.css" rel="stylesheet"/>
</head>

<body class="product-page">
	<nav class="navbar navbar-rose navbar-transparent navbar-fixed-top navbar-color-on-scroll" color-on-scroll="100">
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
						<a href="product-page.html#" class="dropdown-toggle" data-toggle="dropdown">
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
						<a href="product-page.html#" class="dropdown-toggle" data-toggle="dropdown">
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

	<div class="page-header header-filter" data-parallax="true" filter-color="rose" style="background-image: url('../assets/img/bg6.jpg');">
	    <div class="container">
	        <div class="row title-row">
	            <div class="col-md-4 col-md-offset-8">
					<button class="btn btn-white pull-right"><i class="material-icons">shopping_cart</i> 0 Items</button>
	            </div>
	        </div>
	    </div>
	</div>

	<div class="section section-gray">
	    <div class="container">
            <div class="main main-raised main-product">
                <div class="row">
                    <div class="col-md-6 col-sm-6">

					<div >
					<?php 
						$idSP=$_GET["idSP"];
						settype($idSP,"int");
						$query="select * from `sanpham`  ;";
						$sanpham=mysqli_query($conn,$query);
						$row_sanpham;
						if (mysqli_num_rows($sanpham) > 0){
							$row_sanpham=mysqli_fetch_array($sanpham);
							echo "<img src=\"hinhchinh/";echo $row_sanpham["UrlHinh"]."\"/>";
						}
						
						?> 
					 
					</div>
						</div>
						
                    <div class="col-md-6 col-sm-6">
						<h2 class="title"> 
						<?php 
					$sanpham=mysqli_query($conn,$query);
						$row_sanpham;
						if (mysqli_num_rows($sanpham) > 0){
							$row_sanpham=mysqli_fetch_array($sanpham);
						
						echo $row_sanpham["TenSP"];
						}
						else echo "no result;";
						
						
						?> </h2>
						<h3 class="main-price"><?php echo $row_sanpham["Gia"];?></h3>
						<div id="acordeon">
                            <div class="panel-group" id="accordion">
							<h3><?php echo $row_sanpham["MoTa"];?></h3>
                        </div>
                        </div><!--  end acordeon -->

			            <div class="row pick-size">
                            <div class="col-md-6 col-sm-6">
                                <label>Select color</label>
								<select class="selectpicker" data-style="select-with-transition" data-size="7">
									<option value="1">Rose </option>
									<option value="2">Gray</option>
									<option value="3">White</option>
								</select>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <label>Select size</label>
								<select class="selectpicker" data-style="select-with-transition" data-size="7">
									<option value="1">Small </option>
									<option value="2">Medium</option>
									<option value="3">Large</option>
								</select>
                            </div>
                        </div>
                        <div class="row text-right">
                            <button class="btn btn-rose btn-round">Add to Cart &nbsp;<i class="material-icons">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="features text-center">
                <div class="row">
    				<div class="col-md-4">
    					<div class="info">
    						<div class="icon icon-info">
    							<i class="material-icons">local_shipping</i>
    						</div>
    						<h4 class="info-title">2 Days Delivery </h4>
    						<p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
    					</div>
    				</div>

    				<div class="col-md-4">
    					<div class="info">
    						<div class="icon icon-success">
    							<i class="material-icons">verified_user</i>
    						</div>
    						<h4 class="info-title">Refundable Policy</h4>
    						<p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
    					</div>
    				</div>

    				<div class="col-md-4">
    					<div class="info">
    						<div class="icon icon-rose">
    							<i class="material-icons">favorite</i>
    						</div>
    						<h4 class="info-title">Popular Item</h4>
    						<p>Divide details about your product or agency work into parts. Write a few lines about each one. A paragraph describing a feature will be enough.</p>
    					</div>
    				</div>

                </div>
            </div>

			<div class="related-products">
				<h3 class="title text-center">You may also be interested in:</h3>

				<div class="row">
					<div class="col-sm-6 col-md-3">
						<div class="card card-product">
							<div class="card-image">
								<a href="product-page.html#pablo">
									//<img class="img" src="../assets/img/examples/card-product1.jpg" />
								</a>
							</div>

							<div class="card-content">
								<h6 class="category text-rose">Trending</h6>
								<h4 class="card-title">
									<a href="product-page.html#pablo">Dolce & Gabbana</a>
								</h4>
								<div class="card-description">
									Dolce & Gabbana's 'Greta' tote has been crafted in Italy from hard-wearing red textured-leather.
								</div>
								<div class="footer">
	                                <div class="price">
										<h4>$1,459</h4>
									</div>
	                            	<div class="stats">
										<button type="button" rel="tooltip" title="Saved to Wishlist" class="btn btn-just-icon btn-simple btn-rose">
											<i class="material-icons">favorite</i>
										</button>
	                            	</div>
	                            </div>

							</div>

						</div>
					</div>

					<div class="col-sm-6 col-md-3">
						<div class="card card-product">
							<div class="card-image">
								<a href="product-page.html#pablo">
									<img class="img" src="../assets/img/examples/card-product3.jpg" />
								</a>
							</div>

							<div class="card-content">
								<h6 class="category text-muted">Popular</h6>
								<h4 class="card-title">
									<a href="product-page.html#pablo">Balmain</a>
								</h4>
								<div class="card-description">
									Balmain's mid-rise skinny jeans are cut with stretch to ensure they retain their second-skin fit but move comfortably.
								</div>
								<div class="footer">
	                                <div class="price">
										<h4>$459</h4>
									</div>
	                            	<div class="stats">
										<button type="button" rel="tooltip" title="Save to Wishlist" class="btn btn-just-icon btn-simple btn-default">
											<i class="material-icons">favorite</i>
										</button>
	                            	</div>
	                            </div>

							</div>

						</div>
					</div>

					<div class="col-sm-6 col-md-3">
						<div class="card card-product">
							<div class="card-image">
								<a href="product-page.html#pablo">
									<img class="img" src="../assets/img/examples/card-product4.jpg" />
								</a>
							</div>

							<div class="card-content">
								<h6 class="category text-muted">Popular</h6>
								<h4 class="card-title">
									<a href="product-page.html#pablo">Balenciaga</a>
								</h4>
								<div class="card-description">
									Balenciaga's black textured-leather wallet is finished with the label's iconic 'Giant' studs. This is where you can...
								</div>
								<div class="footer">
	                                <div class="price">
										<h4>$590</h4>
									</div>
	                            	<div class="stats">
										<button type="button" rel="tooltip" title="Saved to Wishlist" class="btn btn-just-icon btn-simple btn-rose">
											<i class="material-icons">favorite</i>
										</button>
	                            	</div>
	                            </div>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-md-3">
						<div class="card card-product">
							<div class="card-image">
								<a href="product-page.html#pablo">
									<img class="img" src="../assets/img/examples/card-product2.jpg" />
								</a>
							</div>

							<div class="card-content">
								<h6 class="category text-rose">Trending</h6>
								<h4 class="card-title">
									<a href="product-page.html#pablo">Dolce & Gabbana</a>
								</h4>
								<div class="card-description">
									Dolce & Gabbana's 'Greta' tote has been crafted in Italy from hard-wearing red textured-leather.
								</div>
								<div class="footer">
	                                <div class="price">
										<h4>$1,459</h4>
									</div>
	                            	<div class="stats">
										<button type="button" rel="tooltip" title="Save to Wishlist" class="btn btn-just-icon btn-simple btn-default">
											<i class="material-icons">favorite</i>
										</button>
	                            	</div>
	                            </div>

							</div>

						</div>
					</div>

				</div>
			</div>
	    </div>
	</div>


<footer class="footer footer-black footer-big">
	<div class="container">

		<div class="content">
			<div class="row">
				<div class="col-md-4">
					<h5>About Us</h5>
					<p>Creative Tim is a startup that creates design tools that make the web development process faster and easier. </p> <p>We love the web and care deeply for how users interact with a digital product. We power businesses and individuals to create better looking web projects around the world. </p>
				</div>

				<div class="col-md-4">
					<h5>Social Feed</h5>
					<div class="social-feed">
						<div class="feed-line">
							<i class="fa fa-twitter"></i>
							<p>How to handle ethical disagreements with your clients.</p>
						</div>
						<div class="feed-line">
							<i class="fa fa-twitter"></i>
							<p>The tangible benefits of designing at 1x pixel density.</p>
						</div>
						<div class="feed-line">
							<i class="fa fa-facebook-square"></i>
							<p>A collection of 25 stunning sites that you can use for inspiration.</p>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<h5>Instagram Feed</h5>
					<div class="gallery-feed">
						<img src="../assets/img/faces/card-profile6-square.jpg" class="img img-raised img-rounded" alt="" />
						<img src="../assets/img/faces/christian.jpg" class="img img-raised img-rounded" alt="" />
						<img src="../assets/img/faces/card-profile4-square.jpg" class="img img-raised img-rounded" alt="" />
						<img src="../assets/img/faces/card-profile1-square.jpg" class="img img-raised img-rounded" alt="" />

						<img src="../assets/img/faces/marc.jpg" class="img img-raised img-rounded" alt="" />
						<img src="../assets/img/faces/kendall.jpg" class="img img-raised img-rounded" alt="" />
						<img src="../assets/img/faces/card-profile5-square.jpg" class="img img-raised img-rounded" alt="" />
						<img src="../assets/img/faces/card-profile2-square.jpg" class="img img-raised img-rounded" alt="" />
					</div>

				</div>
			</div>
		</div>


		<hr />

		<ul class="pull-left">
			<li>
				<a href="product-page.html#pablo">
				   Blog
				</a>
			</li>
			<li>
				<a href="product-page.html#pablo">
					Presentation
				</a>
			</li>
			<li>
				<a href="product-page.html#pablo">
				   Discover
				</a>
			</li>
			<li>
				<a href="product-page.html#pablo">
					Payment
				</a>
			</li>
			<li>
				<a href="product-page.html#pablo">
					Contact Us
				</a>
			</li>
		</ul>

		<div class="copyright pull-right">
			Copyright &copy; <script>document.write(new Date().getFullYear())</script> Creative Tim All Rights Reserved.
		</div>
	</div>
</footer>



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

	<!--	Plugin for Product Gallery, full documentation here: https://9bitstudios.github.io/flexisel/ -->
	<script src="../assets/js/jquery.flexisel.js"></script>

	<!--    Plugin For Google Maps   -->
	<script  type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFPQibxeDaLIUHsC6_KqDdFaUdhrbhZ3M"></script>

	<!--    Plugin for 3D images animation effect, full documentation here: https://github.com/drewwilson/atvImg    -->
	<script src="../assets/js/atv-img-animation.js" type="text/javascript"></script>

	<!--    Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc    -->
	<script src="../assets/js/material-kit.min.js" type="text/javascript"></script>

    <script type="text/javascript">

    $(document).ready(function() {
		$("#flexiselDemo1").flexisel({
			visibleItems: 4,
    		itemsToScroll: 1,
    		animationSpeed: 400,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint:480,
                    visibleItems: 3
                },
                landscape: {
                    changePoint:640,
                    visibleItems: 3
                },
                tablet: {
                    changePoint:768,
                    visibleItems: 3
                }
            }
        });
    });
   </script>


</html>
