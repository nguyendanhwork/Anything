<?php
class producer {
    var $id = null;
    var $name = null;
    var $des = null;
 
    public function __construct(){
        if(func_num_args() == 3){
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->des = func_get_arg(2);
          
        }
    }
    public function getProducer(){
        $db = new connect();
        $strQuery = "select * from hang_sx";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getProducerbyId($id){
        $db = new connect();
        $strQuery = "select * from hang_sx where id=$id";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function addProducer($name,$des){
        $db = new connect();
        $strQuery = "INSERT INTO hang_sx(id,name,mo_ta) VALUES(NULL,'$name','$des')";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function updateProducer($id,$name,$des){
        $db = new connect();
       echo  $strQuery = "UPDATE hang_sx SET name='$name',mo_ta='$des' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteProducer($id){
        $db = new connect();
        $strQuery = "DELETE FROM hang_sx where hang_sx.id='$id'";
        $r = $db->exec($strQuery);
        return $r;
    }
}
?>