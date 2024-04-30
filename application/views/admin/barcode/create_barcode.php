<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="post">
<input type="" placeholder="enter name" name="name">
<button>submit</button>
</form>
<?php
if (isset($_SESSION['barcode'])) {
	# code...
//print_r($barcode);

	?>
<img src="../<?=$_SESSION['barcode'];?>">

	<?php
}
?>
</body>
</html>