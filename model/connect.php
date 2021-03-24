<?php
    class connect {
        //khai báo thuộc tính 
        var $db = null;
        //phương thức khởi tạo 
        function __construct () {
            $dsn = "mysql:host=localhost;dbname=anything";
            $user = 'root';
            $pass = '';
            $this->db = new PDO($dsn , $user, $pass, 
                array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
            $this->db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        }
        function getList ($select){
            $result = $this -> db -> query($select);
            return $result;
        }
        function getInstance ($select){
            $results = $this -> db -> query($select);
            $result = $results ->fetch();
            return $result;
        }
        function exec($query){
            $result = $this ->db->exec($query);
            return $result;
        }
        public function lastInsertId(){
            return $this->db->lastInsertId();
        }

    }

    
?>