<?php
require "DataBaseConfig.php";
session_start();
class DataBase
{
    public $connect;
    public $data;
    private $sql;
    protected $servername;
    protected $username;
    protected $password;
    protected $databasename;

    public $product_image_tmp_name;
    public $product_image_folder;

    public function __construct()
    {
        $this->connect;
        $this->data = null;
        $this->sql = null;
        $dbc = new DataBaseConfig();
        $this->servername = $dbc->servername;
        $this->username = $dbc->username;
        $this->password = $dbc->password;
        $this->databasename = $dbc->databasename; 
    }

    function dbConnect()
    {
        $this->connect = mysqli_connect($this->servername, $this->username, $this->password, $this->databasename);
        return $this->connect;
    }

    function prepareData($data)
    {
        return mysqli_real_escape_string($this->connect, stripslashes(htmlspecialchars($data)));
    }

    function logIn($table, $username, $password)
    {
        $username = $this->prepareData($username);
        $password = $this->prepareData($password);
        $this->sql = "select * from " . $table . " where user = '" . $username . "'";
        $result = mysqli_query($this->connect, $this->sql);
        $row = mysqli_fetch_assoc($result);
        if (mysqli_num_rows($result) != 0) {
            $dbusername = $row['user'];          
            $dbpassword = $row['password'];           
            if ($dbusername == $username && $password == $dbpassword) {
                return true;
            } else $_SESSION['error'] = 'User ຫຼື Password ບໍ່ຖືກຕ້ອງ';header("Location: AdminLogin.php");
        } else $_SESSION['error'] = 'ບໍ່ມີ User ນີ້ຢູ່ໃນຖານຂໍ້ມູນ';header("Location: AdminLogin.php");
    }
    
    function Add_product($product_name, $product_price, $product_type, $product_image)
    {
        $product_name = $this->prepareData($product_name);
        $product_price = $this->prepareData($product_price);
        $product_type = $this->prepareData($product_type);
        $product_image = $this->prepareData($product_image);

        $this->product_image_tmp_name = $_FILES['product_image']['tmp_name'];
        $this->product_image_folder = 'imgs/';
       
        if(empty($product_name) || empty($product_price) || empty($product_image) || empty($product_type)){
            $message[] = 'please fill out all';
            return $message;
         }else{
            $this->sql = "INSERT INTO sp_product (name, price, img, type) VALUES ('$product_name', '$product_price', '$product_image', '$product_type')";
            $upload = mysqli_query ($this->connect,$this->sql);
            if($upload){              
               move_uploaded_file($this->product_image_tmp_name, $this->product_image_folder.$product_image);
               $message[] = 'new product added successfully';
               return $message;
            }else{
               $message[] = 'could not add the product';
               return $message;
            }
         }        
        
    }

    function Delete($delete)
    {
        $delete = $this->prepareData($delete);
        mysqli_query($this->connect, "DELETE FROM sp_product WHERE id = $delete");
        return true;
    }
    
    function Update($product_name, $product_price, $product_type, $product_image,$id)
    {   
        
        $id = $this->prepareData($id);

        $this->product_image_tmp_name = $_FILES['product_image']['tmp_name'];
        $this->product_image_folder = 'imgs/';
        
        $product_name = $this->prepareData($product_name);
        $product_price = $this->prepareData($product_price);
        $product_type = $this->prepareData($product_type);
        $product_image = $this->prepareData($product_image);    

        if(empty($product_name) || empty($product_price) || empty($product_type) || empty($product_image)){
           $message[] = 'please fill out all!';  
           return $message;  
        }else{
     
           $this->sql = "UPDATE sp_product SET name='$product_name', price='$product_price', type='$product_type', img='$product_image' WHERE id = '$id'";
           $upload = mysqli_query($this->connect, $this->sql);
            
           if($upload){
              move_uploaded_file($this->product_image_tmp_name, $this->product_image_folder.$product_image);
              return true;
           }else{
              $$message[] = 'please fill out all!';
              return $message;  
           }
     
            
        }
}

}

?>
