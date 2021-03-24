<?php
class cart {
    var $id = null;
    var $idCustomer = null;
    var $totalAmount = 0;
    var $orderDate = null;
    var $idProduct = null;
    var $quantity = 0;
    var $price = 0;
    
    public function __construct(){
        if(func_num_args() == 7){
            $this->id = func_get_arg(0);
            $this->idCustomer = func_get_arg(1);
            $this->totalAmount = func_get_arg(2);
            $this->orderDate = func_get_arg(3);
            $this->idProduct = func_get_arg(4);
            $this->quantity = func_get_arg(5);
            $this->price = func_get_arg(6);
        }
    }
    public function getCart(){
        $db = new connect();
        $strQuery = "select * from don_hang";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getCartbyId($id){
        $db = new connect();
        $strQuery = "select * from don_hang where id=$id";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function addtoCart($idCustomer,$totalAmount,$cart){
        $db = new connect();
        $str_hd = "INSERT INTO don_hang(id,ma_kh,tong_tien,ngay_dat) VALUES(NULL,'$idCustomer','$totalAmount',CURRENT_TIMESTAMP)";
        $r_hd = $db->exec($str_hd);
        $soHD = $db->lastInsertId();
        foreach($cart as $c){
            $idProduct = $c['id'];
            $quantity = $c['quantity'];
            $price = $c['price'];
            $str_cthd = "INSERT INTO chitiet_donhang(id,id_donhang,id_sanpham,so_luong,don_gia) VALUES(NULL,'$soHD','$idProduct','$quantity','$price')";  
            $r_cthd = $db->exec($str_cthd);
        }
        return $r_hd;
    }
    public function updateCart($id,$name,$des,$hot,$order){
        $db = new connect();
       echo  $strQuery = "UPDATE don_hang SET name='$name',mo_ta='$des',hot='$hot',stt='$order' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteCart($id){
        $db = new connect();
        $strQuery = "DELETE FROM don_hang where don_hang.id='$id'";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function getOrderby(){
        $db = new connect();
        $strQuery = "select * from don_hang where hot = 1 ORDER BY don_hang.stt ASC";
        $r = $db->getList($strQuery);
        return $r;
    }
}
?>