<?php
class category {
    var $id = null;
    var $name = null;
    var $des = null;
    var $hot = null;
    var $order = null;
    public function __construct(){
        if(func_num_args() == 5){
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->des = func_get_arg(2);
            $this->hot = func_get_arg(3);
            $this->order = func_get_arg(4);
        }
    }
    public function getCategory(){
        $db = new connect();
        $strQuery = "select * from loai";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getCategorybyId($id){
        $db = new connect();
        $strQuery = "select * from loai where id=$id";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function addCategory($name,$des,$hot,$order){
        $db = new connect();
        $strQuery = "INSERT INTO loai(id,name,mo_ta,hot,stt) VALUES(NULL,'$name','$des','$hot','$order')";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function updateCategory($id,$name,$des,$hot,$order){
        $db = new connect();
       echo  $strQuery = "UPDATE loai SET name='$name',mo_ta='$des',hot='$hot',stt='$order' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteCategory($id){
        $db = new connect();
        $strQuery = "DELETE FROM loai where loai.id='$id'";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function getOrderby(){
        $db = new connect();
        $strQuery = "select * from loai where hot = 1 ORDER BY loai.stt ASC";
        $r = $db->getList($strQuery);
        return $r;
    }
}
?>