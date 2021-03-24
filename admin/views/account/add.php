<?php
 if(isset($_POST['buttonAdd'])){
  $name = $_POST['account_name'];
  $username = $_POST['account_username'];
  $password = $_POST['account_password'];
  $email = $_POST['account_email'];
  $phone = $_POST['account_phone'];
  $role = $_POST['account_role'];
  if(empty($_POST['account_id'])){
    $classAccount->addAccount($name,$username,$password,$email,$phone,$role);
  }else{
    $id = $_POST['account_id'];
    $classAccount->updateAccount($id,$name,$username,$password,$email,$phone,$role);
  }
  echo "<script>window.top.location='index.php?ctrl=account'</script>";
}
?>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Cập nhật tài khoản</h4>
                        <p class="card-category">Nhập thông tin</p>
                    </div>
                    <div class="card-body">
                        <form method="post" action="">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" name="account_id"
                                            value="<?php if(isset($result)) echo $result[0];?>">
                                        <label class="bmd-label-floating">Họ và tên </label>
                                        <input type="text" class="form-control" name="account_name"
                                            value="<?php if(isset($result)) echo $result[3];?>">
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Tên tài khoản</label>
                                        <input type="text" class="form-control" name="account_username"
                                            value="<?php if(isset($result)) echo $result[1];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Mật khẩu</label>
                                        <input type="password" class="form-control" name="account_password"
                                            value="<?php if(isset($result)) echo $result[2];?>">
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Email</label>
                                        <input type="text" class="form-control" name="account_email"
                                            value="<?php if(isset($result)) echo $result[4];?>">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Số điện thoại</label>
                                        <input type="text" class="form-control" name="account_phone"
                                            value="<?php if(isset($result)) echo $result[5];?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Vai trò</label>
                                        <select class="form-control" name="account_role" id="">
                                        <?php
                                            $selected1 = "";
                                            $selected0 = "";
                                            if(isset($result)){
                                                if($result[6] == 1){
                                                    $selected1 = "selected";
                                                }else $selected0 = "selected";
                                            };
                                            echo $selected1.'1';
                                            echo $selected0.'0';
                                            echo "<option value='1'".$selected1.">Quản trị viên</option>
                                            <option value='0'".$selected0.">Khách hàng</option>";
                                        ?>
                                           
                                        </select>
                                
                                    </div>
                                </div>
                            </div>

                            <input type="submit" class="btn btn-primary pull-right" value="Tạo mới" name="buttonAdd">
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>