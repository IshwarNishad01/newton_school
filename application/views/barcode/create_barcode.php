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
if (isset($barcode)) {
	# code...
print_r($barcode);

	?>
<img src="../<?php print_r($barcode);?>">

	<?php
}
?>
</body>
</html>