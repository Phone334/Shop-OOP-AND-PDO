<?php

require "DataBase.php";

$id = $_GET['edit'];

$database = new DataBase;
$db = $database->dbConnect();

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="css/style.css">
</head>
<body>

<?php
   if(isset($message)){
      foreach($message as $message){
         echo '<span class="message">'.$message.'</span>';
      }
   }
?>

<div class="container">


<div class="admin-product-form-container centered">

   <?php
      
      $select = mysqli_query($db, "SELECT * FROM sp_product WHERE id = '$id'");
      while($row = mysqli_fetch_assoc($select)){

   ?>
   
   <form action="login.php" method="post" enctype="multipart/form-data">
      <h3 class="title">update the product</h3>

      <input type="text" class="box" name="_edit" value="<?php echo $id = $row['id']; ?>" placeholder="enter the ID">

      <input type="text" class="box" name="product_name" value="<?php echo $row['name']; ?>" placeholder="enter the product name">
      <input type="number" min="0" class="box" name="product_price" value="<?php echo $row['price']; ?>" placeholder="enter the product price">
      <input type="text" class="box" name="product_type" value="<?php echo $row['type']; ?>" placeholder="enter the product type">
      <input type="file" class="box" name="product_image" value="<?php echo $row['img']; ?>"  accept="image/png, image/jpeg, image/jpg">

      <input type="submit" value="update product" name="update_product" class="btn">

      <a href="admin.php" class="btn">go back!</a>
   </form>
   


   <?php }; ?>

   

</div>

</div>

</body>
</html>