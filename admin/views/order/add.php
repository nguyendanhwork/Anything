<?php

 if(isset($_POST['buttonUpdate'])){
   $id = $_POST['order_id'];
    $mode = $_POST['order_mode'];
    $classOrder->updateOrder($id,$mode);
    // $subject= "Cảm ơn quý khách đã mua hàng tại Anything";
    // ini_set('display_errors','1');
    // if($mode != 'Cần xử lý'){
    //     $txt = "Đơn hàng #".$result[0]." của bạn".$mode;
    //     mail($result[9],$subject,$text);
    // }
  
//     $to_email = "c15ltdcn161297@gmail.com";
// $subject = "Simple Email Test via PHP";
// $body = "Hi,nn This is test email send by PHP Script";
// $headers = "From: sender\'s email";
 
// if (mail($to_email, $subject, $body, $headers)) {
//     echo "Email successfully sent to $to_email...";
// } else {
//     echo "Email sending failed...";
// }

  echo "<script>window.top.location='index.php?ctrl=order'</script>";
}
?>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Cập nhật đơn hàng</h4>
                        <p class="card-category">Nhập thông tin</p>
                    </div>
                    <div class="card-body">
                        <form method="post" action="">
                            <div class="row">
                                <div class="col-md-3">

                                    <div class="form-group">
                                        <input type="hidden" class="form-control" name="order_id"
                                            value="<?php if(isset($result)) echo $result[0];?>">
                                        <label class="bmd-label-floating">Tên khách hàng </label>
                                        <div class="form-control">
                                            <?php if(isset($result)) echo $result[8];?>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Email </label>
                                        <div class="form-control">
                                            <?php if(isset($result)) echo $result[9];?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Số điện thoại </label>
                                        <div class="form-control">
                                            <?php if(isset($result)) echo $result[10];?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Tổng tiền</label>
                                        <div class="form-control">
                                            <?php if(isset($result)) echo $result[2];?>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Trạng thái </label>
                                        <select class="form-control" name="order_mode" id="">

                                            <?php
                                         $mode = array('Cần xử lý','Đang xử lý','Đang giao','Đã giao','Trả hàng','Hủy bỏ');
                                        foreach($mode as $mode){
                                          $selected = "";
                                          if($mode == $result[4]){
                                            $selected = "selected";
                                          }
                                          echo '<option value="'.$mode.'"'.$selected.'>'.$mode.'</option>';
                                        }
                                          
                                        ?>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">


                                        <table class="table table-hover">
                                            <thead class="">

                                                <th>
                                                    Hình ảnh
                                                </th>
                                                <th>
                                                    Tên sản phẩm
                                                </th>

                                                <th>
                                                    Số lượng
                                                </th>
                                                <th>
                                                    Đơn giá
                                                </th>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    
                                                      $rs = $classOrder->getOrderDetailbyId($result[0]);
                                                   while($dt = $rs->fetch()){
                                                     $pr = $classProduct->getProductbyId($dt[2]);
                                                    
                                                     echo '<tr>
                                                    
                                                     <td><img width=100 src="'.$pathImg.''.explode('/',$pr[2])[0].'"></td>
                                                      <td>'.$pr[1].'</td>
                                                       <td>'.$dt[3].'</td>
                                                       <td> '.number_format($dt[4]).'đ</td>
                                                  
                                                       </tr>';
                                                   }
                                                   ?>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>


                            <input type="submit" class="btn btn-primary pull-right" value="Cập nhật"
                                name="buttonUpdate">
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>