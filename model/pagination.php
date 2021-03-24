<?php
    function pagination($page,$total){
        $quantity = 4;
        $pagesNumber = ceil($total/$quantity);
        $pagination = "";  
        for ($i = 0; $i  < $pagesNumber; $i++) { 
            if($page == ($i+1)){
                $class =' class="active" ';
            }else{
                $class =' class="" ';
            }
            if(isset($_GET['ctrl'])){
                $ctrl = $_GET['ctrl'];
                switch ($ctrl) {
                    case 'scheduled':
                        $link = "index.php?ctrl=scheduled&act=search&page=".($i+1);
                        break;
                    case 'styleofroom':
                            $link = "index.php?ctrl=styleofroom&act=search&page=".($i+1);
                        break;
                    case 'city':
                            $link = "index.php?ctrl=city&act=search&page=".($i+1);
                        break;
                    case 'catalog':
                            $link = "index.php?ctrl=catalog&act=search&page=".($i+1);
                        break;
                        case 'blog':
                            $link = "index.php?ctrl=blog&page=".($i+1);
                        break;
                    default:
                        $link = "index.php?ctrl=scheduled&act=search&page=".($i+1);
                        break;
                }
            }else{
                $link = "index.php?page=".($i+1);
            }
            $disabled = "";
            if(isset($_GET['page'])){
                if($_GET['page'] == $i+1){
                   $disabled = "style='pointer-events: none; font-weight:bold;background-color: #d3d3d382;'";
                }
            }
            if($pagesNumber == 1){
                $pagination = "";
            }else{
                $pagination.='<a href="'.$link.'" '.$class.' '.$disabled.'>
                '.($i+1).' 
            </a>';
            }

        }
        
        return $pagination;
       
    };
?>