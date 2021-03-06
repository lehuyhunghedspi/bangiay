
<link rel="stylesheet" type="text/css" href="ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="ddsmoothmenu-v.css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script type="text/javascript" src="ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Please keep this notice intact
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "smoothmenu1", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

ddsmoothmenu.init({
	mainmenuid: "smoothmenu2", //Menu DIV id
	orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
	method: 'toggle', // set to 'hover' (default) or 'toggle'
	arrowswap: true, // enable rollover effect on menu arrow images?
	//customtheme: ["#804000", "#482400"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
<!-- Markup for mobile menu toggler. Hidden by default, only shown when in mobile menu mode -->
<a class="animateddrawer" id="ddsmoothmenu-mobiletoggle" href="#">
<span></span>
</a>

<h2>Trang quản trị</h2>

<div id="smoothmenu1" class="ddsmoothmenu">
<ul>
<li><a href="http://www.dynamicdrive.com">Trang chủ</a></li>
<li><a href="http://www.dynamicdrive.com">Sản phẩm</a>
  <ul>
  <li><a href="themsanpham.php">thêm sản phẩm </a></li>
   <li><a href="themsizesoluong.php">nhập thêm hàng đã có</a></li>
   <li><a href="themmaumoi.php">thêm màu mới cho hàng đã có</a></li>
  </ul>
</li>

<li><a href="http://www.dynamicdrive.com">người dùng</a></li>
<li><a href="http://www.dynamicdrive.com">giao dịch</a>
  <ul>
  <li><a href="http://www.dynamicdrive.com">thông kê giao dịch</a></li>
  <li><a href="http://www.dynamicdrive.com">Folder 2.1</a>
    <ul>
    <li><a href="http://www.dynamicdrive.com">Sub Item 2.1.1</a></li>
    <li><a href="http://www.dynamicdrive.com">Sub Item 2.1.2</a></li>
    <li><a href="http://www.dynamicdrive.com">Folder 3.1.1</a>
		<ul>
    		<li><a href="http://www.dynamicdrive.com">Sub Item 3.1.1.1</a></li>
    		<li><a href="http://www.dynamicdrive.com">Sub Item 3.1.1.2</a></li>
    		<li><a href="http://www.dynamicdrive.com">Sub Item 3.1.1.3</a></li>
    		<li><a href="http://www.dynamicdrive.com">Sub Item 3.1.1.4</a></li>
    		<li><a href="http://www.dynamicdrive.com">Sub Item 3.1.1.5</a></li>
		</ul>
    </li>
    <li><a href="http://www.dynamicdrive.com">Sub Item 2.1.4</a></li>
    </ul>
  </li>
  </ul>
</li>
</ul>
<br style="clear: left" />
</div>





