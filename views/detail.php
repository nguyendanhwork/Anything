<style>
.framecomment {
    border-top: solid 1px #d3d3d361;
    padding-top: 10px;
    padding-bottom: 10px;
}

textarea {
    width: 100%;
    height:70px;
}

.tab-wrapper {
    margin-top: 30px;
}

.tab-wrapper ul li {
    display: inline-block;
    border-radius: 5px;
    padding: 5px 10px;
    border: solid 1px lightgray;
}

.tab-wrapper ul {
    border-bottom: solid 1px lightgray;
}

.tab-wrapper ul li a {
    color: black;
}

.tab-wrapper ul li.active {
    background: #Fff;
}

.tab-wrapper ul li.active a {
    color: blue;
}

.tab-wrapper ul li a {
    text-transform: uppercase;
    text-decoration: none;
}

.tab-content {
    padding: 0 20px;
}

.tab-item {
    display: none;
}

.tab-wrapper img {
    width: 100%;
}
</style>
<section>
    <div class="container">
        <div class="row">
            <div class="col l6 s12" style="padding-right:15px">
                <div class="col l12 detail-page">
                    <?php
                    $imgs = explode('/',$detail[2]);
                        for($i = 0; $i < count($imgs); $i++){
                            if(!empty($imgs[$i])){
                                echo '<img class="item-display" src="'.$pathImg.''.$imgs[$i].'" width="100%" alt="">';
                            }
                        }
                    ?>

                </div>
                <div class="col l12 padding-lr-50" style="margin-top:5px">
                    <?php
                    $imgs = explode('/',$detail[2]);
                        for($i = 0; $i < count($imgs); $i++){
                            if(!empty($imgs[$i])){
                                echo '<div class="col l3" style="padding:5px">
                                <img class="click-show" src="'.$pathImg.''.$imgs[$i].'" width="100%" height="80" alt="" style="border: solid 1px lightgray;cursor: pointer;">
                            </div>';
                            }
                        }
                    ?>
                </div>

            </div>
            <?php
              $discount = intval($detail[4] - $detail[4]*$detail[5]/100);
                echo '
                <div class="col l6 s12 info-detail-product" style="padding-left:15px">
                <h2>
                    '.$detail[1].'
                </h2>
                <p>
                    <strong style="font-size:13px">
                        30 người quan tâm sản phẩm
                    </strong>

                </p>
                <p>
                    <span>
                      Nhà sản xuất:
                  </span> &nbsp;'.$classProducer->getProducerbyId($detail[9])[1].'
                </p>
                <p>
                    <span>
                        Xuất xứ:
                    </span> &nbsp;Chính hãng
                </p>
                <p>
                    <span>
                        Bảo hành:
                    </span> &nbsp;'.$detail[8].' tháng
                </p>
                <p>
                    <span>
                        Tình trạng:
                    </span> &nbsp;Mới 100%
                </p>
                <h1>
                    GÍA NIÊM YẾT:&nbsp;'.number_format($discount).' VNĐ
                </h1>
                <p>
                    <strong class="underline">
                        Quà tặng:
                    </strong>
                </p>
                <p>
                    <span style="color:#ff0000">
                        ★
                    </span>
                    <strong>
                        <span style="color:#0000ff">
                            Balo Acer Predator SUV
                        </span>
                        <span style="color:#ff0000">
                            trị giá 2,000,000 VNĐ
                        </span>
                    </strong>
                </p>
                <p>
                    <span style="color:#ff0000">
                        ★
                    </span>
                    <strong>
                        <span style="color:#0000ff">
                            Túi chống shock ANYTHING
                        </span>
                        <span style="color:#ff0000">
                            trị giá 139,000 VNĐ
                        </span>
                    </strong>
                </p>
                <p>
                    <span style="color:#ff0000">
                        ★
                    </span>
                    <strong>
                        <span style="color:#ff0000">
                            Miễn phí nâng cấp 16GB RAM
                        </span>
                        <span style="color:#0000ff;font-size: 15px;font-weight: 400;font-style: italic;">
                            (Số lượng có hạn)
                        </span>
                    </strong>
                </p>
                <p>
                    <strong class="underline">
                        Khuyến mãi tại Anything:
                    </strong>
                </p>
                <p>
                    <span style="color:#ff0000">
                        ★
                    </span>
                    <strong>
                        <span style="color:#0000ff">
                            Giảm trực tiếp 
                        </span>
                        <span style="color:#ff0000">
                        '.number_format(intval($detail[4]*$detail[5]/100)).' 
                        </span>
                        <span style="color:#0000ff">
                            chỉ còn
                        </span>
                        <span style="color:#ff0000">
                            '.number_format($discount).' VNĐ
                        </span>
                    </strong>
                </p>
                <p>
                    <span style="color:#ff0000">
                        ★
                    </span>
                    <strong>
                        <span style="color:#0000ff">
                           Mua kèm
                        </span>
                        <span style="color:#ff0000">
                           đế tản nhiệt Laptop
                        </span>
                        <span style="color:#0000ff">
                            sẽ được giảm
                        </span>
                        <span style="color:#ff0000">
                            10%.
                        </span>
                    </strong>
                </p>
                <p style="margin-bottom: 0;">
                    <span>
                        Giá cũ:
                    </span> &nbsp;
                    <span style="font-size: 20px">
                        <del style="color: gray;">
                            '.number_format($detail[4]).'
                            <span style="color: gray;">
                                đ
                            </span>
                    </del>
                    </span>
                </p>
                <p style="margin-top: 2px;">
                    <span>
                        Giá KM:
                    </span> &nbsp;
                    <span style="font-size: 20px;color:#ff0000">
                      
                    '.number_format($discount).'
                            <span style="color:#ff0000;font-style:none">
                                đ
                            </span>
                    </del>
                    </span>
                </p>
                <form method="post" action="">
                <p><button type="submit" class="order-product" name="btnAddCart">Đặt hàng</button>
                </p>
                </form>
            </div>
                ';
             ?>
            <div class="col l12 s12">
                <div class="tab-wrapper">
                        <ul class="tab">
                                <li><a href="#tab-main-comment">Bình luận</a></li>
                        <li><a href="#tab-info">Thông tin kỹ thuật</a></li>
                    </ul>
                        <div class="tab-content">
                             <div class="tab-item" id="tab-info">
                                      <?php echo $detail[6];?>
                        </div>
                        <div class="tab-item" id="tab-main-comment">
                            <div class="review-add">
                                <h4>Khách hàng nhận xét</h4>
                                <form action="" class="ra-form" method="POST">
                                    <?php
                                      $classAccount = new account();
                                    if(isset($_POST['btn_comment'])){
                                        if(isset($_SESSION['customer'])){
                                            $id_customer = $_SESSION['customer'][0];
                                            $id_product = $detail[0];
                                            $content = $_POST['comment_content'];
                                            $classComment->addComment($id_customer,$content,$id_product);
                                        }else{
                                            echo "<script type='text/javascript'>alert('Vui lòng đăng nhập bình luận!')</script>";
                                        }
                                       
                                        echo "<script>window.top.location='index.php?ctrl=detail&id=".$detail[0]."'</script>";
                                    }
                                    while($comment = $comments->fetch()){
                                        $name = $classAccount->getAccountbyId($comment[1]);
                                        echo '<div class="row">
                                        <div class="col-lg-12"> 
                                        <div class="framecomment">
                                        <p style="margin-bottom: 3px;margin-top: 0;">Bởi: <b>'.$name[3].'</b><span style="font-size: 13px;color: #808080;margin-left: 15px;">vào ngày '.$comment[4].'</span></p>
                                        <p style="margin-top: 0;margin-bottom: 0; word-wrap: break-word">'.$comment[2].'</p>
                                        </div>
                                        </div>
                                        </div>';
                                    }
                                
                                 ?>
                                    <div class="row" style="margin-top:30px;">
                                        <form action="" method="post">
                                            <div class="col l12">
                                                <h4> <?php if(isset($_SESSION['customer'])) echo $_SESSION['customer'][3].'('.$_SESSION['customer'][1].')';?>
                                                </h4>
                                            </div>
                                            <div class="col l12">
                                                <textarea placeholder="Thêm bình luận"
                                                    name="comment_content"id="comment_content"></textarea>
                                                <button type="submit" id="btn_comment" name="btn_comment">Gửi ngay</button>
                                            </div>
                                        </form>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>


</section>
<script>
$(document).ready(function() {
    $("#btn_comment").prop("disabled", true);
        $("#comment_content").keyup(function(){
            var length = $(this).val().length;
            if(length >=1){
                $("#btn_comment").prop("disabled", false);
            }else{
                $("#btn_comment").prop("disabled", true);
            }
        });
    // Hàm active tab nào đó
    function activeTab(obj) {
        // Xóa class active tất cả các tab
        $('.tab-wrapper ul li').removeClass('active');

        // Thêm class active vòa tab đang click
        $(obj).addClass('active');

        // Lấy href của tab để show content tương ứng
        var id = $(obj).find('a').attr('href');

        // Ẩn hết nội dung các tab đang hiển thị
        $('.tab-item').hide();

        // Hiển thị nội dung của tab hiện tại
        $(id).show();
    }

    // Sự kiện click đổi tab
    $('.tab li').click(function() {
        activeTab(this);
        return false;
    });

    // Active tab đầu tiên khi trang web được chạy
    activeTab($('.tab li:first-child'));
});
</script>