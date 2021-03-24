<?php
session_start();
include_once '../model/connect.php';
include_once '../model/account.php';
include_once '../model/category.php';
include_once '../model/product.php';
include_once '../model/producer.php';
include_once '../model/cart.php';
include_once '../model/comment.php';
include_once '../model/global.php';
    include '../views/header.php';
  
    $ctrl ='home';
    if(isset($_GET['ctrl'])){
        $ctrl = $_GET['ctrl'];
    }
    switch ($ctrl){
        case 'register':
            $classAccount = new account();
            $accounts = $classAccount->getAccount();
            if(isset($_POST['btnRegister'])){
                $check = true;
                $name = $_POST['fullname'];
                $username = $_POST['username'];
                $password = MD5($_POST['password']);
                $email = $_POST['email'];
                $phone = $_POST['phone'];
                $role = 0;
                while($account = $accounts->fetch()){
                    if($account[1] == $username){
                        $check = false;
                    }
                }
                if($check == true){
                    $classAccount->addAccount($name,$username,$password,$email,$phone,$role);
                    $result = $classAccount->loginAccount($username,$password);
                    $_SESSION['customer'] = $result;
                    echo "<script>window.top.location='index.php'</script>";
                }else{
                    echo '<style> #validateUsername{ display:block !important;} </style>';
                }
               
                
            }
            include '../views/register.php';
        break;
        case 'login':
            $classAccount = new account();
            $accounts = $classAccount->getAccount();
            if(isset($_POST['btnLogin'])){
                $username = $_POST['username'];
                $password = MD5($_POST['password']); 
                $result = $classAccount->loginAccount($username,$password);
                if(is_array($result)){
                    $_SESSION['customer'] = $result;
                    echo "<script>window.top.location='index.php'</script>";
                }else{
                    echo "<script>window.top.location='?ctrl=login'</script>";
                }
               
            }
            include '../views/login.php';
        break;
        case 'logout':
            unset($_SESSION['customer']);
            echo "<script>window.top.location='index.php'</script>";
        break;
        case 'home':
            $classCategory = new category();
            $classProduct = new product();
            $categories = $classCategory->getCategory();
            $orderby = $classCategory->getOrderby();
            include '../views/home.php';
        break;
        case 'products':
            $classProduct = new product();
            $classCategory = new category();
            $categories = $classCategory->getCategory();
          
            if(isset($_GET['idcategory'])){
                $id = $_GET['idcategory'];
                $products = $classProduct->getProductbyIdCategory($id);           
            }
            include '../views/products.php';
        break;
        case 'detail':
            
            $classProducer = new producer();
            $classProduct = new product();
            $classComment = new comment();
            if(isset($_GET['id'])){
                $id= $_GET['id'];
                $detail = $classProduct->getProductbyId($id);
                $comments = $classComment->getCommentbyId($id);
            }      
            
            if(isset($_POST['btnAddCart'])){
                $quantity = 1;
                if(!isset($_SESSION['cart'])){
                    $_SESSION['cart'] = [];
                }
                $cart = array();
                $cart['id'] = $detail[0];
                $cart['name'] = $detail[1];
                $cart['image'] = $detail[2];
                $cart['quantity'] = $quantity;
                $cart['price'] = $detail[4];
                $check = true;
               
                for($i = 0; $i < count($_SESSION['cart']);$i++){
                    if($_SESSION['cart'][$i]['id'] == $detail[0]){
                        $_SESSION['cart'][$i]['quantity'] += 1;
                        $_SESSION['cart'][$i]['price'] += $detail[4];
                        $check = false;
                    }  
                }
                if($check == true){
                    array_push($_SESSION['cart'],$cart);
                }
               
                echo "<script>window.top.location='index.php?ctrl=cart'</script>";
            }
            
            include '../views/detail.php';
        break;
        case 'cart':
            $classCart = new cart();
            if(isset($_GET['iddelete'])){
                $id = $_GET['iddelete'];
               for($i = 0; $i <= count($_SESSION['cart']);$i++){
                    if($_SESSION['cart'][$i]['id'] == $id){
                        unset($_SESSION['cart'][$i]);
                    }
               }
                echo "<script>window.top.location='index.php?ctrl=cart'</script>";
            }
           
            include '../views/cart.php';
        break;
    }
    include '../views/footer.php';
?>