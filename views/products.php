<section>
    <div class="container">
        <div class="row">
            <aside class="col l3 padding-left-right-15">
                <?php
                    include '../views/menu.php';
                      
                 ?>
                <div class="col l12" style="margin-top:20px">
                    <?php
                 include '../views/subscribe.php';
                 ?>
                </div>

            </aside>

            <article class="col l9">
                <div class="row padding-left-right-15">
                    <div class="col l12 title-products">
                        <?php echo $classCategory->getCategorybyId($_GET['idcategory'])[1]; ?>
                    </div>
                </div>
                <div class="row">
                    <?php              
                            while($product = $products->fetch()){
                                $img = explode('/',$product[2]);
                                $discount = intval($product[4] - $product[4]*$product[5]/100);
                                echo '
                                <div class="col l3 padding-left-right-15 margin-top-20">
                                <div class="col l12 padding-5-15-20-15 product-row">
                                    <img src="'.$pathImg.''.$img[0].'" alt="">
                                    <div class="col l12 details">
                                        <h4>
                                            '.$product[1].'
                                        </h4>
                                      
                                   
                                        <div class="col l8">
                                            <del>'.number_format($product[4]).'<span>đ</span></del>
                                            <div class="price">
                                                '.number_format($discount).' <span>đ</span>
                                            </div>
                                        </div>
                                        <div class="col l4">
                                            <div class="discount">
                                                -'.$product[5].'%
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-row-hover">
                                        <span>
                                           Xem chi tiết
                                        </span>
                                        <span>
                                            <a href="?ctrl=detail&id='.$product[0].'">
                                                    Đặt hàng
                                            </a>
                                       </span>
                                    </div>
    
                                </div>
                            </div>';
                            }
                       ?>
                    <div class="col l12 center">
                        <div class="pagination" style="margin-top:25px">

                            <ul>
                                <li>
                                    <a href=""><i class="fas fa-angle-double-left"></i></a>
                                </li>
                                <li>
                                    <a href="">1</a>
                                </li>
                                <li>
                                    <a href="">2</a>
                                </li>
                                <li>
                                    <a href="">3</a>
                                </li>
                                <li>
                                    <a href="">...</a>
                                </li>
                                <li>
                                    <a href=""><i class="fas fa-angle-double-right"></i></a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>



            </article>
        </div>

    </div>


</section>