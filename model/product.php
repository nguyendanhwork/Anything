<?php
class product {
    var $id = null;
    var $name = null;
    var $image = null;
    var $des = null;
    var $price = null;
    var $discount = null;
    var $information = null;
    var $color = null;
    var $guarantee = null;
    var $idProducer = null;
    var $idCategory = null;
    public function __construct(){
        if(func_num_args() == 11){
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->image = func_get_arg(2);
            $this->des = func_get_arg(3);
            $this->price = func_get_arg(4);
            $this->discount = func_get_arg(5);
            $this->information = func_get_arg(6);
            $this->color = func_get_arg(7);
            $this->guarantee = func_get_arg(8);
            $this->idProducer = func_get_arg(9);
            $this->idCategory = func_get_arg(10);

         
        }
    }
    public function getProduct(){
        $db = new connect();
        $strQuery = "select * from san_pham";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getProductbyId($id){
        $db = new connect();
        $strQuery = "select * from san_pham where id=$id";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function getProductbyIdCategory($id){
        $db = new connect();
        $strQuery = "select * from san_pham where id_loai = $id";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function addProduct($name,$image,$des,$price,$discount,$information,$color,$guarantee,$idProducer,$idCategory){
        $db = new connect();
        $strQuery = "INSERT INTO san_pham(id,name,hinh,mo_ta,don_gia,giam_gia,thongtin_kythuat,mau_sac,bao_hanh,id_hsx,id_loai) VALUES(NULL,'$name','$image','$des','$price','$discount','$information','$color','$guarantee','$idProducer','$idCategory')";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function updateProduct($id,$name,$image,$des,$price,$discount,$information,$color,$guarantee,$idProducer,$idCategory){
        $db = new connect();
        echo  $strQuery = "UPDATE san_pham SET name='$name',hinh='$image',mo_ta='$des',don_gia='$price',giam_gia='$discount',thongtin_kythuat='$information',mau_sac='$color',bao_hanh='$guarantee',id_hsx='$idProducer',id_loai='$idCategory' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteProduct($id){
        $db = new connect();
        $strQuery = "DELETE FROM san_pham where san_pham.id='$id'";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function getProductsOnHome($id){
        $db = new connect();
        $strQuery = "select * from san_pham where id_loai = '$id' ORDER BY id DESC LIMIT 4 ";
        $r = $db->getList($strQuery);
        return $r;
    }
    
}
?>