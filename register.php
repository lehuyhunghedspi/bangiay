<?php
//var_dump($_POST);
if( isset ($_POST['username'])&& isset ($_POST['password'])&&isset ($_POST['email'])){
$link = mysqli_connect("localhost","root","","bangiay");
if (mysqli_connect_errno()){
	echo "Failed to connect database";
	exit();
}
$query ="INSERT INTO 'user' ('ID', 'USERNAME', 'PASSWORD', 'EMAIL') VALUES (NULL, '".$_POST['username']."', '".md5($_POST['password'])."', '".$_POST['email']."');";
if ($link->query($query)){
	echo "INSERTED";
}else echo "ERROR";
}else $error = "You have to enter your username and password" ;
?>
<!DOCTYPE html>
<html>
<head>
<title>LOGIN</title>
</head>
<body>
<fieldset style="width:450px;">
<legend>REGISTER</legend>
<form method="POST">
<table border="0">
<tr>
<td>USERNAME:</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>PASSWORD:</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>EMAIL:</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td><input type="submit" value="REGISTER"></td>
</tr>
<tr>
<td>
<?php
echo (isset($error)) ? $error : "";
?>
</td>
</tr>
</table>
</form>
</fieldset>
</body>
</html>