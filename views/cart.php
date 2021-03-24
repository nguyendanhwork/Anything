<?php

 
?>
<style>
textarea {
    width: 95%;
    font-size: 20px;
    padding: 10px;
    height: 80px;
    border: solid 1px #6498cd;
}

a {
    color: black;
}

button {
    background: #ec2424;
    border: solid 1px;
    color: white;
    padding: 10px 15px;
    font-size: 15px;
    border-radius: 5px;
}
</style>
<section>
    <div class="container">
        <h1 class="center" style="margin-top:0">
            GIỎ HÀNG
        </h1>
        <table>
            <tr>
                <th>Sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá tiền</th>
                <th>Xóa</th>
            </tr>
            <?php
               $price = 0;
               if(isset($_SESSION['cart'])){
                foreach($_SESSION['cart'] as $cart){
                    $price += $cart['price'];
                    $img = explode('/',$cart['image'])[0];
                    echo ' <tr>
                    <td><img src="'.$pathImg.''.$img.'" width="100" alt=""></td>
                    <td style="color: #428bca;font-weight: 500">'.$cart['name'].'</td>
                    <td><input type="number" min=1 value="'.$cart["quantity"].'" onchange="" style=" width: 55px;padding: 5px;"></td>
                    <td>
                       '.number_format($cart["price"]).'<span style="text-decoration: underline;">đ</span>
                    </td>
                    <td>
                        <a href="?ctrl=cart&iddelete='.$cart['id'].'"/> <i class="fas fa-trash"></i> </a>
                    </td>
                </tr>';
                }
               }
                    if(isset($_POST['btnOrder'])){ 
                        if(isset($_SESSION['customer'])){
                          
                            if(isset($_SESSION['cart'])){
                                $idCustomer = $_SESSION['customer']['0'];
                                $totalAmount = $price;
                                $cart = $_SESSION['cart'];
                                $classCart->addtoCart($idCustomer,$totalAmount,$cart);
                                unset($_SESSION['cart']);
                             
                                echo "<script type='text/javascript'>alert('Đặt hàng thành công!')</script>";
                                echo "<script>window.top.location='index.php'</script>";
                              
                            }else {
                              
                                echo "<script type='text/javascript'>alert('Không có sản phẩm trong giỏ hàng của bạn!')</script>";
                                echo "<script>window.top.location='index.php'</script>";
                            }    
                        }else{
                         
                            echo "<script type='text/javascript'>alert('Vui lòng đăng nhập để tiến hành đặt hàng!')</script>";
                            echo "<script>window.top.location='index.php?ctrl=cart'</script>";
                        }
                    }
               ?>

            <tr>
                <td colspan="4" style="font-weight: bold;">
                    TỔNG TIỀN:
                </td>
                <td style="font-weight: 500;">
                    <?php echo number_format($price); ?><span style="text-decoration: underline;">đ</span>
                </td>

            </tr>

            <Tr>
                <Td colspan="5">
                    <textarea name="" id="" placeholder="Ghi chú"></textarea>
                </Td>
            </Tr>
        </table>
        <div class="center">
            <form method="POST" action="">
                <button type="submit" name="btnOrder">
                    Thanh Toán
                </button>

                <button>
                    Cập nhật
                </button>
            </form>

        </div>

    </div>


</section>