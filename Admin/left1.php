<?php if(!isset($_SESSION)) { session_start(); } ?>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>

<body>
<table style="width:100%">
<tr><td style="font-size:28px">User Links</td></tr>

<?php if($_SESSION["usertype"]=="General")
{?>
<tr><td><a href="addcategory.php">Add Category</a></td></tr>
<tr><td><a href="viewcategory.php">View Category</a></td></tr>
<tr><td><a href="addsubcategory.php">Add Subcategory</a></td></tr>

<tr><td><a href="viewsubcategory.php">View Subcategory</a></td></tr>
<tr><td><a href="addpackage.php">Add Package</a></td></tr>
<?php }?>

<?php if($_SESSION["usertype"]=="General")
{?>
<tr><td><a href="updatepackage.php">Update Package</a></td></tr>
<tr><td><a href="deletepackage.php">Delete Package</a></td></tr>

<?php }?>

<tr><td><a href="viewpackage.php">View Package</a></td></tr>

<tr><td><a href="viewenquiry.php">View Enquiry</a></td></tr>
</table>


</body>
</html>