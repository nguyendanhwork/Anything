<section>
    <div class="container">
        <div class="row">
            <aside class="col l3 padding-left-right-15">
                <?php
                        include '../views/menu.php';
                    ?>

            </aside>
            <article class="col l9">
                <div class="Sliderrr row padding-left-right-15">

                    <div class="slider1 isSlide ani col 12">
                        <img src="../views/images/slide-1.jpg" alt="" width="100%" height="365">
                    </div>
                    <div class="slider2 isSlide ani col 12">
                        <img src="../views/images/slide-2.jpg" alt="" width="100%" height="365">

                    </div>
                    <div class="slider3 isSlide ani col 12">

                        <img src="../views/images/slide-3.jpg" alt="" width="100%" height="365">
                    </div>
                    <div class="slider4 isSlide ani col 12">

                        <img src="../views/images/slide-4.jpg" alt="" width="100%" height="365">
                    </div>
                    <span class="slider-prev">
                        <i class="fas fa-chevron-left" onclick="clickSlide(-1)"></i>
                    </span>
                    <span class="slider-next">
                        <i class="fas fa-chevron-right" onclick="clickSlide(1)"></i>
                    </span>
                </div>


            </article>
        </div>

    </div>


</section>
<section>
    <div class="container">
        <div class="row">
            <div class="col l3 padding-left-right-15">

                <div class="col l12">
                    <img src="../views/images/banner-left.jpg" width="100%" alt="">
                </div>
                <div class="col l12 newsletter padding-20">

                    <h3>
                        ĐĂNG KÝ
                    </h3>
                    <p>
                        Nhận tất cả các thông tin mới nhất về Sự kiện và Ưu đãi.
                    </p>
                    <form action="">

                        <div class="formEmail" id="fEmail">
                            <input type="email">
                            <label for="fEmail"><i class="far fa-envelope"></i>ĐỊA CHỈ EMAIL</label>
                        </div>
                        <div class="">

                            <input type="submit" value="ĐĂNG KÝ NGAY">
                        </div>

                    </form>



                </div>
            </div>
            <div class="col l9">
                <div class="row" style="padding:0 8px">
                    <div class="col l4" style="padding:0 7px">
                        <div class="image-banner">
                            <a href="" target="_blank" rel=" ">
                                <img src="../views/images/banner-1.jpg" width="100%" height="180" alt=""></a>
                        </div>
                    </div>
                    <div class="col l4" style="padding:0 7px">
                        <div class="image-banner">
                            <a href="" target="_blank" rel=" ">
                                <img src="../views/images/banner-2.jpg" width="100%" height="180" alt=""></a>
                        </div>
                    </div>
                    <div class="col l4" style="padding:0 7px">
                        <div class="image-banner">
                            <a href="" target="_blank" rel=" ">
                                <img src="../views/images/banner-3.jpg" width="100%" height="180" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="row margin-top-20">
                    <h3 class="padding-left-right-15">
                        SẢN PHẨM
                    </h3>
                    <?php
                        $id = "";
                        $headphone = $classCategory->getCategory();
                        while($hd = $headphone->fetch()){
                            if($hd[1] == "Tai nghe"){
                                $id = $hd[0];
                            }
                        }
                       
                        $headphones = $classProduct->getProductsOnHome($id);
                        while($hd = $headphones->fetch()){
                            $img = explode('/',$hd[2])[0];
                            echo '
                            <div class="col l3 padding-left-right-15">
                            <div class="product">
    
                                <a href="?ctrl=detail&id='.$hd[0].'">
                                    <img src="'.$pathImg.''.$img.'" width="100%" alt="">
                                </a>
                                <div class="product-details">
    
                                    <h3>
                                        <a href="" target="_blank" rel="">'.$hd[1].'</a>
                                    </h3>
                                    <div class="product-price">
                                       '.number_format($hd[4]-($hd[4]*$hd[5]/100)).'<span class="underline">đ</span>
                                    </div>
                                    <div class="product-action">
                                        <button type="button">
                                            <a href="?ctrl=detail&id='.$hd[0].'">
                                                <i class="fas fa-shopping-cart"></i>THÊM HÀNG
                                            </a>
    
                                        </button>
                                    </div>
                                </div>
                            </div>
    
                        </div>';
                        }
                     
                    ?>


                </div>
                <div class="row" style="margin-top:40px;">
                    <div class="col l12 center">
                        <div class="pagination">

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
                                    <a href=""><i class="fas fa-angle-double-right"></i></a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section>


    <div class="container products">
        <?php
         while($order = $orderby->fetch()){
             echo ' <div class="row margin-top-20">
             <div class="row padding-left-right-15">
                 <div class="col l12 title-products">
                     '.$order[1].'
                 </div>
             </div>';
             $products = $classProduct->getProductsOnHome($order[0]);
             while($pr = $products->fetch()){
                 $img = explode('/',$pr[2])[0];
                echo ' <div class="col l3 padding-left-right-15">
                <button type="button" class="btn-new">
                    Mới
                </button>
                <button type="button" class="btn-discount">
                    Khuyến mãi
                </button>
                <div class="col l12 padding-5-15-20-15 product-row">
                    <a href="?ctrl=detail&id='.$pr[0].'">
                        <img src="'.$pathImg.''.$img.'" alt="">
                    </a>
                    <div class="col l12 details">
                        <h4>
                           '.$pr[1].'
                        </h4>
                        <div class="col l8">
                            <del>'.number_format($pr[4]).'<span>đ</span></del>
                            <div class="price">
                                '.number_format($pr[4]-($pr[4]*$pr[5]/100)).'<span>đ</span>
                            </div>
                        </div>
                        <div class="col l4">
                            <div class="discount">
                                -'.$pr[5].'%
                            </div>
                        </div>

                    </div>
                    <div class="product-row-hover">
                        <span>
                            Click để xem chi tiết
                        </span>
                        <span>
                            <a href=?ctrl=detail&id='.$pr[0].'>
                                    Đặt hàng
                            </a>
                       </span>
                    </div>

                </div>

            </div>';
             }
            
          echo '
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
                             <a href=""><i class="fas fa-angle-double-right"></i></a>
                         </li>
                     </ul>

                 </div>
             </div>
         </div>';
         }
        ?>


    </div>
</section>
<script>
$('#demo').pagination({
    dataSource: [1, 2, 3, 4, 5, 6, 7, ..., 100],
    pageSize: 5,
    showPrevious: false,
    showNext: false,
    callback: function(data, pagination) {
        // template method of yourself
        var html = template(data);
        dataContainer.html(html);
    }
})

var interval = setInterval(function() {
  if (window.location.hash)
    window.location = window.location.hash;
}, 100);
 setTimeout(function() { clearInterval(interval); }, 2000);
</script>