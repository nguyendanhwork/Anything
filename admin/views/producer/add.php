<?php
 if(isset($_POST['buttonAdd'])){
  $name = $_POST['producer_name'];
  $des = $_POST['producer_describle'];
  if(empty($_POST['producer_id'])){
    $classProducer->addProducer($name,$des);
  }else{
    $id = $_POST['producer_id'];
    $classProducer->updateProducer($id,$name,$des);
  }
  echo "<script>window.top.location='index.php?ctrl=producer'</script>";
}
?>
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Cập nhật hãng sản xuất</h4>
                  <p class="card-producer">Nhập thông tin</p>
                </div>
                <div class="card-body">
                  <form method="post" action="">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                        <input type="hidden" class="form-control" name="producer_id" value="<?php if(isset($result)) echo $result[0];?>">
                          <label class="bmd-label-floating">Tên </label>
                          <input type="text" class="form-control" name="producer_name" value="<?php if(isset($result)) echo $result[1];?>">
                        </div>
                      </div>
                    </div>
               
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <div class="form-group">
                            <label class="bmd-label-floating">Mô tả</label>
                            <textarea class="form-control" rows="5" name="producer_describle"><?php if(isset($result)) echo $result[2];?></textarea>
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
    