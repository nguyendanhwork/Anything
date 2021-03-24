<?php
class account {
    var $id = null;
    var $name = null;
    var $username = null;
    var $password = null;
    var $email = null;
    var $phone = null;
    var $role = null;
    public function __construct(){
        if(func_num_args() == 7){
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->username = func_get_arg(2);
            $this->password = func_get_arg(3);
            $this->email = func_get_arg(4);
            $this->phone = func_get_arg(5);
            $this->role = func_get_arg(6);
        }
    }
    public function getAccount(){
        $db = new connect();
        $strQuery = "select * from account";
        $r = $db->getList($strQuery);
        return $r;
    }
    public function getAccountbyId($id){
        $db = new connect();
        $strQuery = "select * from account where id=$id";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function loginAccount($username,$password){
        $db = new connect();
        $strQuery = "select * from account where user_name='$username' AND pass_word = '$password' AND role = 0";
        $r = $db->getInstance($strQuery);
        return $r;
    }
    public function addAccount($name,$username,$password,$email,$phone,$role){
        $db = new connect();
        $strQuery = "INSERT INTO account(id,name,user_name,pass_word,email,sdt,role) VALUES(NULL,'$name','$username','$password','$email','$phone','$role')";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function updateAccount($id,$name,$username,$password,$email,$phone,$role){
        $db = new connect();
       echo  $strQuery = "UPDATE account SET name='$name',user_name='$username',pass_word=MD5('$password'),email='$email',sdt='$phone',role='$role' where id=$id";
        $r = $db->exec($strQuery);
        return $r;
    }
    public function deleteAccount($id){
        $db = new connect();
        $strQuery = "DELETE FROM account where account.id='$id'";
        $r = $db->exec($strQuery);
        return $r;
    }
}
?>