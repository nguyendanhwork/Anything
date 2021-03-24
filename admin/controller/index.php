<?php
 session_start();
    include_once '../model/connect.php';
    include_once '../model/global.php';
    include_once '../model/category.php';
    include_once '../model/producer.php';
    include_once '../model/product.php';
    include_once '../model/account.php';
    include_once '../model/order.php';
    include_once '../views/header.php';
    $ctrl = 'home';
    if(isset($_SESSION['user'])){
        include_once '../views/menu.php';
        if(isset($_GET['ctrl'])){
            $ctrl = $_GET['ctrl'];
        };
    }else{
        $ctrl='login';
    }
    switch ($ctrl){
        case 'login':
            $classAccount = new account();
            if(isset($_POST['btnLogin'])){
                $username = $_POST['login_username'];
                $password = MD5($_POST['login_password']);
                $result=$classAccount->loginAccount($username,$password);
                if(is_array($result)){
                    $_SESSION['user'] = $result[1];
                }
                echo "<script>window.top.location='index.php'</script>";
            }
            include '../views/login.php';
        break;
        case 'logout':
           unset($_SESSION['user']);
           echo "<script>window.top.location='index.php'</script>";
        break;
        case 'home':
            $classCustomer = new account();
            $classOrder = new order();
            $classProduct = new product();
            $classCategory = new category();
            $customers = $classCustomer->getAccount();
            $orders = $classOrder->getOrder();
            $needtoHandle = $classOrder->getNeedtoHandle();
            $products = $classProduct->getProduct();
            $categories = $classCategory->getCategory();

        include '../views/home.php';
        break;
        case 'category':
            $classCategory = new category();
            $categories = $classCategory->getCategory();
            if(isset($_GET['act'])){
                $act = $_GET['act'];
                if($act == 'add'){
                    include '../views/category/add.php';
                }else if($act == 'edit'){
                    $id = $_GET['id'];
                    $result = $classCategory->getCategorybyId($id);
                    include '../views/category/add.php';
                }else if($act == 'delete'){
                    $id = $_GET['id'];
                    $classCategory->deleteCategory($id);
                    echo "<script>window.top.location='index.php?ctrl=category'</script>";
                }
            }
            else{
                include '../views/category/index.php';
            }
        break;
        case 'producer':
            $classProducer = new producer();
            $producers = $classProducer->getProducer();
            if(isset($_GET['act'])){
                $act = $_GET['act'];
                if($act == 'add'){
                    include '../views/producer/add.php';
                }else if($act == 'edit'){
                    $id = $_GET['id'];
                    $result = $classProducer->getProducerbyId($id);
                    include '../views/producer/add.php';
                }else if($act == 'delete'){
                    $id = $_GET['id'];
                    $classProducer->deleteProducer($id);
                    echo "<script>window.top.location='index.php?ctrl=producer'</script>";
                }
            }
            else{
                include '../views/producer/index.php';
            }
        break;
        case 'product':
            $classProduct = new product();
            $products = $classProduct->getProduct();
            if(isset($_GET['act'])){
                $act = $_GET['act'];
                if($act == 'add'){
                    include '../views/product/add.php';
                }else if($act == 'edit'){
                    $id = $_GET['id'];
                    $result = $classProduct->getProductbyId($id);
                    include '../views/product/add.php';
                }else if($act == 'delete'){
                    $id = $_GET['id'];
                    $classProduct->deleteProduct($id);
                    echo "<script>window.top.location='index.php?ctrl=product'</script>";
                }
            }
            else{
                include '../views/product/index.php';
            }
        break;
        case 'account':
            $classAccount = new account();
            $accounts = $classAccount->getAccount();
            if(isset($_GET['act'])){
                $act = $_GET['act'];
                if($act == 'add'){
                    include '../views/account/add.php';
                }else if($act == 'edit'){
                    $id = $_GET['id'];
                    $result = $classAccount->getAccountbyId($id);
                    include '../views/account/add.php';
                }else if($act == 'delete'){
                    $id = $_GET['id'];
                    $classAccount->deleteAccount($id);
                    echo "<script>window.top.location='index.php?ctrl=account'</script>";
                }
            }
            else{
                include '../views/account/index.php';
            }
        break;
        case "order":
            $classProduct = new product();
            $classOrder = new order();
            $orders = $classOrder->getOrder();
            if(isset($_GET['iddelete'])){
                $id = $_GET['iddelete'];
                $classOrder->deleteOrder($id);
                echo "<script>window.top.location='index.php?ctrl=order'</script>";
            }else if(isset($_GET['idedit'])){
                $id = $_GET['idedit'];
               $result = $classOrder->getOrderbyId($id);
               include '../views/order/add.php';
            }else{
                include '../views/order/index.php';
            }
           
        break;
    };
    include_once '../views/footer.php';
?>
