<?php
class comment {
    var $id = null;
    var $id_customer = null;
    var $content = null;
    var $id_product = null;
    var $date = null;
    public function __construct(){
        if(func_num_args() == 5){
            $this->id = func_get_arg(0);
            $this->id_customer = func_get_arg(1);
            $this->content = func_get_arg(2);
            $this->id_product = func_get_arg(3);
            $this->date = func_get_arg(4);
        }
    }
    public function getComment(){
        $db = new connect();
        $strQuery = "select * from comment order by id DESC";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getCommentbyId($id){
        $db = new connect();
        $strQuery = "select * from comment where id_sanpham = $id order by id DESC";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function addComment($id_customer,$content,$id_product){
        $db = new connect();
        $strQuery = "INSERT INTO comment(id,id_khachhang,content,id_sanpham) VALUES(NULL,'$id_customer','$content','$id_product')";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function updateComment($id,$name,$des,$hot,$order){
        $db = new connect();
       echo  $strQuery = "UPDATE comment SET name='$name',mo_ta='$des',hot='$hot',stt='$order' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteComment($id){
        $db = new connect();
        $strQuery = "DELETE FROM comment where comment.id='$id'";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function getOrderby(){
        $db = new connect();
        $strQuery = "select * from comment where hot = 1 ORDER BY comment.stt ASC";
        $r = $db->getList($strQuery);
        return $r;
    }
}
?>