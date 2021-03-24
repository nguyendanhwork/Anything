

    <div class="aside-menu col 12">
        <h4>
            DANH MỤC
        </h4>
        <nav>
        <ul>
        <?php
            while($cate = $categories->fetch()){
                echo '<li>
                <a href="?ctrl=products&idcategory='.$cate[0].'"><i class="'.$cate[2].'"></i>'.$cate[1].'</a>
            </li>';
            }
        ?>
        </ul>

        </nav>

    </div>



