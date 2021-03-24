<?php
class order {
    var $id = null;
    var $idCustomer = null;
    var $totalAmount = 0;
    var $orderDate = null;
    var $mode = 0;
    var $idProduct = null;
    var $quantity = 0;
    var $price = 0;
    
    public function __construct(){
        if(func_num_args() == 8){
            $this->id = func_get_arg(0);
            $this->idCustomer = func_get_arg(1);
            $this->totalAmount = func_get_arg(2);
            $this->orderDate = func_get_arg(3);
            $this->mode = func_get_arg(4);
            $this->idProduct = func_get_arg(5);
            $this->quantity = func_get_arg(6);
            $this->price = func_get_arg(7);
        }
    }
    public function getOrder(){
        $db = new connect();
        $strQuery = "select don_hang.* from don_hang order by id DESC";
        $r = $db->getList($strQuery);
        return $r;
    }
  
    public function getNeedtoHandle(){
        $db = new connect();
        $strQuery = "select don_hang.* from don_hang where trang_thai ='Cần xử lý' order by id DESC";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getOrderbyId($id){
        $db = new connect();
        $strQuery = "select * from don_hang inner join account on don_hang.ma_kh = account.id where don_hang.id=$id ";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function addtoOrder($idCustomer,$totalAmount,$Order){
        $db = new connect();
        $str_hd = "INSERT INTO don_hang(id,ma_kh,tong_tien,ngay_dat) VALUES(NULL,'$idCustomer','$totalAmount',CURRENT_TIMESTAMP)";
        $r_hd = $db->exec($str_hd);
        $soHD = $db->lastInsertId();
        foreach($Order as $c){
            $idProduct = $c['id'];
            $quantity = $c['quantity'];
            $price = $c['price'];
            $str_cthd = "INSERT INTO chitiet_donhang(id,id_donhang,id_sanpham,so_luong,don_gia) VALUES(NULL,'$soHD','$idProduct','$quantity','$price')";  
            $r_cthd = $db->exec($str_cthd);
        }
        return $r_hd;
    }
    public function updateOrder($id,$mode){
        $db = new connect();
       echo  $strQuery = "UPDATE don_hang SET trang_thai = '$mode' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteOrder($id){
        $db = new connect();
        $strQuery = "DELETE FROM chitiet_donhang where id_donhang='$id'";
        $c = $db->exec($strQuery);
        $strQuery = "DELETE FROM don_hang where id='$id'";
        $r = $db->exec($strQuery);
        return array($r,$c);
    }

    public function getCustomerbyId($id){
        $db = new connect();
        $strQuery = "select * from account where id='$id'";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function getOrderDetailbyId($id){
        $db = new connect();
        $strQuery = "select * from chitiet_donhang where id_donhang=$id";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getRevenuebyYear($year){
        $db = new connect();
        $strQuery = "select sum(tong_tien),don_hang.* from don_hang where trang_thai='Đã giao' AND year(ngay_dat) = '$year' group by month(ngay_dat);";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getTotalRevenue($date){
        $month = date('m',strtotime($date));
        $year = date('yy',strtotime($date));
        $db = new connect();
        $strQuery = "select sum(tong_tien) from don_hang where year(ngay_dat) = '$year' AND month(ngay_dat) = '$month'";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getTop5HotProducts(){
        // $month = date('m',strtotime($date));
        // $year = date('yy',strtotime($date));
        $db = new connect();
        $strQuery = "select round(sum(chitiet_donhang.so_luong*100) / (select sum(so_luong) from chitiet_donhang),2) as 'percent', san_pham.name from chitiet_donhang inner join san_pham on chitiet_donhang.id_sanpham = san_pham.id group by chitiet_donhang.id_sanpham order by percent DESC LIMIT 5 ";
        $r = $db->getList($strQuery);
        return $r;
    }
}
?>