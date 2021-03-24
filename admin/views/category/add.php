<?php

 if(isset($_POST['buttonAdd'])){
  $name = $_POST['category_name'];
  $des = $_POST['category_describle'];
  $hot = $_POST['category_hot'];
  $order = $_POST['category_order'];
  if(empty($_POST['category_id'])){
    $classCategory->addCategory($name,$des,$hot,$order);
  }else{
    $id = $_POST['category_id'];
    $classCategory->updateCategory($id,$name,$des,$hot,$order);
  }
  echo "<script>window.top.location='index.php?ctrl=category'</script>";
}
?>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Cập nhật loại sản phẩm</h4>
                  <p class="card-category">Nhập thông tin</p>
                </div>
                <div class="card-body">
                  <form method="post" action="">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                        <input type="hidden" class="form-control" name="category_id" value="<?php if(isset($result)) echo $result[0];?>">
                          <label class="bmd-label-floating">Tên loại</label>
                          <input type="text" class="form-control" name="category_name" value="<?php if(isset($result)) echo $result[1];?>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Hot</label>
                          <input type="number" class="form-control" name="category_hot" max=1 min=0 value="<?php if(isset($result)) echo $result[3];?>">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Số thứ tự</label>
                          <input type="number" class="form-control" name="category_order" min=0 value="<?php if(isset($result)) echo $result[4];?>">
                        </div>
                      </div>
                    </div>
               
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                  
                          <div class="form-group">
                            <label class="bmd-label-floating"> Mô tả</label>
                            <textarea class="form-control" rows="5" name="category_describle"><?php if(isset($result)) echo $result[2];?></textarea>
                          </div>
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
    