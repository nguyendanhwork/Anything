<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../views/css/myStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/f4c3bfecf2.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/22d6657a9c.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
    <title>Anything</title>
</head>

<body>
    <header>
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col l3">
                        <div class="header-currency">
                            <a href="">VND</a>
                            <div class="header-menu">

                            </div>
                        </div>
                        <div class="header-language">

                            <a href=""> <img src="../views/images/en.png" alt="">ENGLISH</a>
                        </div>

                    </div>
                    <div class="col l9">
                        <div class="welcome">
                            <p>
                                XIN CHÀO <?php if(isset($_SESSION['customer']))echo $_SESSION['customer'][3].'!' ?>
                            </p>
                        </div>
                        <div class="header-right">
                            <nav>
                                <ul>
                                    <li>
                                        <a href="">TÀI KHOẢN</a>
                                    </li>
                                    <li>
                                        <a href="">HẰNG NGÀY</a>
                                    </li>

                                    <li>
                                        <a href="">FORUM</a>
                                    </li>
                                    <li>
                                        <a href="">LIÊN HỆ</a>
                                    </li>
                                    <?php
                                    if(isset($_SESSION['customer'])){
                                        echo ' <li>
                                        <a href="?ctrl=logout">ĐĂNG XUẤT</a>
                                        </li>';
                                    }else echo '<li>
                                    <a href="?ctrl=register">ĐĂNG KÝ</a>
                                </li>
                                <li>
                                    <a href="?ctrl=login">ĐĂNG NHẬP</a>
                                </li>';
                                    ?>

                                </ul>
                            </nav>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="header-middle">
            <div class="container">
                <div class="row">
                    <div class="col l3">
                        <a href="index.php"><img src="../views/images/myLogo.png" width="120" alt=""></a>
                    </div>
                    <div class="col l6 padding-top-bot-10 ">
                        <div class="col l10">
                            <div class="search-box" style="position:relative">
                                <input type="text" autocomplete="off name=" id="" placeholder="Tìm kiếm...">
                                <i class="fa fa-search"></i>
                                <div class="result-search"></div>
                            </div>

                        </div>

                    </div>
                    <div class="col l3 padding-top-bot-10 ">
                        <div class="col l7" style="position: relative;">
                            <div class="callUs">
                                GỌI CHÚNG TÔI NGAY
                            </div>
                            <a href="">+(84) 902595423</a>
                        </div>
                        <div class="col l5 center">

                            <a href="?ctrl=cart"><i class="fas fa-shopping-cart" style="position:relative"><span
                                        class="quantity-cart">
                                        <?php if(isset($_SESSION['cart'])){
                                        echo count($_SESSION['cart']);
                                    }else echo 0 ?>
                                    </span></i></a>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <main>
            <div class="container">
                <div class="row">
                    <div class="col l4">

                        <div class="col l2 padding-top-bot-5 ">
                            <i class="fa fa-shipping-fast"></i>
                        </div>
                        <div class="col l10">
                            <h4>
                                MIỄN PHÍ GIAO HÀNG & TRẢ LẠI
                            </h4>
                            <p>
                                Miễn phí giao hàng cho các hóa đơn trên 1,000,000đ
                            </p>
                        </div>

                    </div>
                    <div class="col l4">

                        <div class="col l2 padding-top-bot-5  nonePD">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div class="col l10">
                            <h4>
                                ĐẢM BẢO HOÀN LẠI TIỀN
                            </h4>
                            <p>
                                Đảm bảo hoàn tiền 100%
                            </p>

                        </div>

                    </div>
                    <div class="col l4">

                        <div class="col l2 padding-top-bot-5 ">
                            <i class="fas fa-headset"></i>
                        </div>
                        <div class="col l10">
                            <h4>
                                HỖ TRỢ ONLINE 24/7
                            </h4>
                            <p>
                                Luôn chờ máy để hỗ trợ khách hàng
                            </p>
                        </div>

                    </div>

                </div>

            </div>
        </main>

    </header>
    <script type="text/javascript">
    $(document).ready(function() {
        $('.search-box input[type="text"]').on("keyup input", function() {
            /* Get input value on change */
            var inputVal = $(this).val();
            var resultDropdown = $(this).siblings(".result-search");

            if (inputVal.length>1) {
                $.get("../model/livesearch.php", {
                    term: inputVal
                }).done(function(data) {

                    // Display the returned data in browser
                    resultDropdown.html(data);
                });
            } else {
                resultDropdown.empty();
            }
        });

        // Set search input value on click of result item
        $(document).on("click", ".result-search p", function() {
            $(this).parents(".search-box").find('input[type="text"]').val($(this).text());
            $(this).parent(".result-search").empty();
        });
    });
    </script>