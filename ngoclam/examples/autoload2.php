<?php
// Start the session
session_start();
include 'libs/database.php';
include 'libs/helper.php';
db_connect();
$idLoai=$_SESSION['idLoai'];
$content_per_page = 4;	
$group_no  = strtolower(trim(str_replace("/","",$_REQUEST['group_no'])));
$start = ceil($group_no * $content_per_page);
$sql= "SELECT * FROM sanpham, sanpham_thuoctinh WHERE sanpham.idSP=sanpham_thuoctinh.idSP AND idLoai=$idLoai";
    if(isset($_REQUEST['brand']) && $_REQUEST['brand']!="") :
		$brand = explode(',',url_clean($_REQUEST['brand']));	
	    $sql.=" AND bonho_bo_nho_trong IN ('".implode("','",$brand)."')";
	endif;

    if(isset($_GET['material']) && $_GET['material']!="") :
		$material = explode(',',url_clean($_REQUEST['material']));	
        $sql.=" AND bonho_ram IN ('".implode("','",$material)."')";
    endif;

	$sql.=" LIMIT $start, $content_per_page";
	//$all_product=$conn->query($sql);
	$all_product=mysqli_query($conn,$sql);
    $rowcount=mysqli_num_rows($all_product);
	 echo $sql; 

    function url_clean($String)
    {
    	return str_replace('_',' ',$String); 
    }
?>

<!-- listing -->
        <?php if(isset($all_product) && count($all_product) && $rowcount > 0) : $i = 0; ?>
            <?php foreach ($all_product as $key => $products) : ?>
                <article class="col-md-4 col-sm-6">
                    <div class="thumbnail product">
                        <figure>
                            <a href="#"><img src="hinhchinh/<?php echo $products['UrlHinh']; ?>" alt="<?php echo $products['TenSP']; ?>" /></a>
                        </figure>
                        <div class="caption">
                            <a href="" class="product-name"><?php echo $products['TenSP']; ?></a>
                            <div class="price">Rs.<?php echo $products['Gia']; ?>/-</div>
                            <h6>Brand : <?php echo $products['bonho_bo_nho_trong']; ?></h6>
                            <h6>Material : <?php echo $products['bonho_ram']; ?></h6>
                            
                        </div>
                    </div>
                </article>
            <?php $i++; endforeach; ?> 
        <?php endif; ?>
                                
<!-- /.listing -->