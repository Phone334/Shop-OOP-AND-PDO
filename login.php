<?php
require "DataBase.php";
$db = new DataBase();
if ($db->dbConnect()) {
    if (isset($_POST['user']) && isset($_POST['password'])) {
        if ($db->logIn("users", $_POST['user'], $_POST['password'])) {
            header("Location:admin.php");
        } 
    }else if (isset($_POST['add_product'])){
        if ($db->Add_product($_POST['product_name'], $_POST['product_price'], $_POST['product_type'], $_FILES['product_image']['name'])){
            header("Location:admin.php");
        }
    }else if(isset($_GET['delete'])){
        if ($db->Delete($_GET['delete'])){
            header('location:admin.php');
        }
        
    }else if(isset($_POST['update_product'])){
        if ($db->Update($_POST['product_name'], $_POST['product_price'], $_POST['product_type'], $_FILES['product_image']['name'], $_POST['_edit'])){
            header('location:admin.php');
        }

     }else echo "All fields are required";
} else echo "Error: Database connection";

?>
