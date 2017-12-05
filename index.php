

<?php
session_start();
$conn;
require "lib/connectdb.php";

//require "lib/trangchu.php";
if( isset($_GET["p"]))
	$p=$_GET["p"];
else
	$p="";

?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>hang xach tay</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!-- Canonical SEO -->
	<link rel="canonical" href="http://www.creative-tim.com/product/material-kit-pro" />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/material-kit.min.css" rel="stylesheet"/>

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link href="assets/assets-for-demo/vertical-nav.css" rel="stylesheet" />
	<link href="assets/assets-for-demo/demo.css" rel="stylesheet" />

	
	
	
	<style>
body {
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 80px;
}
</style>
</head>

<body class="index-page">


<?php
// kiem tra dang nhap
if(isset($_POST["btnlogin"]))
{
	$emaildangnhap=$_POST["emaildangnhap"];
	$matkhaudangnhap=$_POST["matkhaudangnhap"];
	//echo $emaildangnhap.$matkhaudangnhap;
	$qr="SELECT * from `nguoidung` where email='".$emaildangnhap."' and passwords = '".$matkhaudangnhap."';";
	//echo "<br/><br/><br/><br/><br/>".$qr;
	if($danhsachnguoidung=mysqli_query($conn,$qr)){
	if(mysqli_num_rows($danhsachnguoidung)>0){
		$row=mysqli_fetch_array($danhsachnguoidung);
		$_SESSION["idUser"]=$row["idUser"];
		$_SESSION["hoten"]=$row["hoten"];
	} else{ echo "<script>alert (\"tai khoan khong ton tai hoac nhap sai mat khau\")</script>";}
	}
	
	
	
}
	

 ?>
 
 
 
	<nav class="navbar navbar-primary navbar-fixed-top" color-on-scroll=" " id="sectionsNav">
    	<div class="container" float="left">
        	<!-- Brand and toggle get grouped for better mobile display -->
			
        	<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse">
            		<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
        		</button>
        		</div>
<a class="navbar-brand" href="presentation.html"><h6>Mỹ phẩm nhật</h6></a>
        	
						
        	<div class="collapse navbar-collapse">
        		<ul class="nav navbar-nav navbar-right">
				 <li><form class="navbar-form navbar-right" role="search">
	                        <div class="form-group form-white">
	                          <input type="text" class="form-control" placeholder="Search">
	                        </div>
	                        <button type="submit" class="btn btn-white btn-raised btn-fab btn-fab-mini"><i class="material-icons">search</i></button>
	                      </form>
						  </li> 
					<li>
					<?php if(isset($_SESSION["idUser"]))
						{
					
					require "block/formxinchao.php";
					}require "block/loginbutton.php";
					
					?>
					</li>	
					
					<li>
						<button class="btn btn-primary btn-round btn-rose"><a href="http://www.creative-tim.com/buy/material-kit-pro?ref=presentation" target="_blank"></a><div><i class="material-icons">shopping_cart</i>Mua</div></button> 
						
					
					
					</li>					
					
			
					<li class="button-container">
					
						
					</li>
					
					
        		</ul>
				</div>	
        	
		</div>	
    	
    </nav>
	
	<br/><br/><br/><br/>
	<div class="row">
	<div class="col-md-2">
	<div >
						<div class="card card-refine card-plain">
							<div class="card-content">
								<h4 class="card-title">
									Refine
									<button class="btn btn-default btn-fab btn-fab-mini btn-simple pull-right" rel="tooltip" title="Reset Filter">
										<i class="material-icons">cached</i>
									</button>
								</h4>
								
								<div class="panel panel-default panel-rose">
									<div class="panel-heading" role="tab" id="headingTwo">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="ecommerce.html#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<h4 class="panel-title">chất liệu</h4>
											<i class="material-icons">keyboard_arrow_down</i>
										</a>
									</div>
									
									<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body">
											<?php
								$qr="SELECT * FROM `chatlieu`";
								$chatlieu=mysqli_query($conn,$qr);
								$i=0;
								echo mysqli_num_rows($chatlieu);
								while($row_chatlieu=mysqli_fetch_array($chatlieu))
								{
									?><div class="checkbox">
												<label>
													<input type="checkbox" value="" data-toggle="checkbox" <?php if($i==0) {echo 'checked=""';$i=1;}?>>
												<?php echo $row_chatlieu["tenchatlieu"];?>	
												</label>
											</div>
									<?php }
										?>
											</div>
									</div>
									
								</div>

								</div>
						</div>
						<!-- end card -->
					</div>
	
	</div>
	<div class="col-md-10">
	   					<div class="row">
	   						 <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/bo-trang-diem-duong.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Polo Ralph Lauren</h4>
	   									 </a>
	   									 <p class="description">
	   										Impeccably tailored in Italy from lightweight navy wool.
	   									 </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	<span class="price"> &euro; 800</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Remove from wishlist" data-placement="left">
	   											 <i class="material-icons">favorite</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
	   						  <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/kem-lot-va-che-khuyet-diem.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Wooyoungmi</h4>
	   									 </a>
	   									 <p class="description">
											 Dark-grey slub wool, pintucked notch lapels.
	   									 </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	<span class="price">&euro; 555</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Add to wishlist" data-placement="left">
	   											 <i class="material-icons">favorite_border</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
	   						   <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/kem-nen-trang-diem.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Tom Ford</h4>
	   									 </a>
	   									 <p class="description">
	   										Immaculate tailoring is TOM FORD's forte.haoasodasu hc u acoiw
	   								    </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	 <span class="price"> &euro; 879</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right"  rel="tooltip" title="Add to wishlist" data-placement="left">
	   											 <i class="material-icons">favorite_border</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
 <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/bo-trang-diem-duong.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Polo Ralph Lauren</h4>
	   									 </a>
	   									 <p class="description">
	   										Impeccably tailored in Italy from lightweight navy wool.
	   									 </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	<span class="price"> &euro; 800</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Remove from wishlist" data-placement="left">
	   											 <i class="material-icons">favorite</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
	   						  <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/kem-lot-va-che-khuyet-diem.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Wooyoungmi</h4>
	   									 </a>
	   									 <p class="description">
											 Dark-grey slub wool, pintucked notch lapels.
	   									 </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	<span class="price">&euro; 555</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Add to wishlist" data-placement="left">
	   											 <i class="material-icons">favorite_border</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
	   						   <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/kem-nen-trang-diem.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Tom Ford</h4>
	   									 </a>
	   									 <p class="description">
	   										Immaculate tailoring is TOM FORD's forte.haoasodasu hc u acoiw
	   								    </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	 <span class="price"> &euro; 879</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right"  rel="tooltip" title="Add to wishlist" data-placement="left">
	   											 <i class="material-icons">favorite_border</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
 <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/bo-trang-diem-duong.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Polo Ralph Lauren</h4>
	   									 </a>
	   									 <p class="description">
	   										Impeccably tailored in Italy from lightweight navy wool.
	   									 </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	<span class="price"> &euro; 800</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Remove from wishlist" data-placement="left">
	   											 <i class="material-icons">favorite</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
	   						  <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/kem-lot-va-che-khuyet-diem.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Wooyoungmi</h4>
	   									 </a>
	   									 <p class="description">
											 Dark-grey slub wool, pintucked notch lapels.
	   									 </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	<span class="price">&euro; 555</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right" rel="tooltip" title="Add to wishlist" data-placement="left">
	   											 <i class="material-icons">favorite_border</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>
	   						   <div class="col-md-3">
	   							 <div class="card card-product card-plain no-shadow" data-colored-shadow="false">
	   								 <div class="card-image">
	   									 <a href="ecommerce.html#">
	   										 <img src="hinhanh/kem-nen-trang-diem.jpg" alt="..."/>
	   									 </a>
	   								 </div>
	   								 <div class="card-content">
	   									 <a href="ecommerce.html#">
	   										 <h4 class="card-title">Tom Ford</h4>
	   									 </a>
	   									 <p class="description">
	   										Immaculate tailoring is TOM FORD's forte.haoasodasu hc u acoiw
	   								    </p>
	   									 <div class="footer">
											 <div class="price-container">
											 	 <span class="price"> &euro; 879</span>
											 </div>

	   										 <button class="btn btn-rose btn-simple btn-fab btn-fab-mini btn-round pull-right"  rel="tooltip" title="Add to wishlist" data-placement="left">
	   											 <i class="material-icons">favorite_border</i>
	   										 </button>
	   									 </div>
	   								 </div>
	   							 </div> <!-- end card -->
	   						  </div>

							  
	   						   
	   						  
	   					</div>
						<div class="row">
						<div class="col-md-3 col-md-offset-4">
	   							   <button rel="tooltip" class="btn btn-rose btn-round">Load more...</button>
	   						  </div>
						</div>
	   				</div>
	
  
  
  </div>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<br/><br/><br/><br/>

	
	
	<br/><br/><br/><br/>
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>
	a
<br/><br/><br/><br/>
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>
	a
<br/><br/><br/><br/>
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>

	
	<br/><br/><br/><br/>
	a
	<?php require "block/inputlogin.php"; ?>

	
</body>
	<!--   Core JS Files   -->
	<script src="assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/js/material.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="assets/js/moment.min.js"></script>

	<!--	Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script src="assets/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="assets/js/bootstrap-selectpicker.js" type="text/javascript"></script>

	<!--	Plugin for Tags, full documentation here: http://xoxco.com/projects/code/tagsinput/  -->
	<script src="assets/js/bootstrap-tagsinput.js"></script>

	<!--	Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="assets/js/jasny-bootstrap.min.js"></script>

	<!-- Plugin For Google Maps -->
	<script  type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFPQibxeDaLIUHsC6_KqDdFaUdhrbhZ3M"></script>

	<script src="assets/js/atv-img-animation.js" type="text/javascript"></script>

	<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
	<script src="assets/js/material-kit.min.js" type="text/javascript"></script>

	<!-- Fixed Sidebar Nav - JS For Demo Purpose, Don't Include it in your project -->
	<script src="assets/assets-for-demo/modernizr.js" type="text/javascript"></script>
	<script src="assets/assets-for-demo/vertical-nav.js" type="text/javascript"></script>

	<script type="text/javascript">

		$(document).ready(function(){
			var slider = document.getElementById('sliderRegular');

	        noUiSlider.create(slider, {
	            start: 40,
	            connect: [true,false],
	            range: {
	                min: 0,
	                max: 100
	            }
	        });

	        var slider2 = document.getElementById('sliderDouble');

	        noUiSlider.create(slider2, {
	            start: [ 20, 60 ],
	            connect: true,
	            range: {
	                min:  0,
	                max:  100
	            }
	        });



			materialKit.initFormExtendedDatetimepickers();

		});
	</script>
</html>
