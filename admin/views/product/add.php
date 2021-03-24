<?php

  $classProducer = new producer();
  $producers = $classProducer->getProducer();
  $classCategory = new category();
  $categories = $classCategory->getCategory();

  if(isset($_POST['buttonAdd'])){
    $name = $_POST['product_name'];
    $images = $_FILES['product_image'];
    $image = "";
    $des = $_POST['product_describle'];
    $price = $_POST['product_price'];
    $discount = $_POST['product_discount'];
    $information = $_POST['product_information'];
    $color = $_POST['product_color'];
    $guarantee = $_POST['product_guarantee'];
    $idProducer = $_POST['product_idproducer'];
    $idCategory = $_POST['product_idcategory'];
      if(empty($_POST['product_id'])){
        $img_desc = reArrayFiles($images);
          foreach($img_desc as $val)
          {
              move_uploaded_file($val['tmp_name'],$pathImg.$val['name']);
          }
          for($i = 0; $i < count($img_desc); $i++){
            $image.= $img_desc[$i]['name'].'/';
        }
        $classProduct->addProduct($name,$image,$des,$price,$discount,$information,$color,$guarantee,$idProducer,$idCategory);
      }else{
        $id = $_POST['product_id'];
        $img_desc = reArrayFiles($images);
          foreach($img_desc as $val)
          {
              move_uploaded_file($val['tmp_name'],$pathImg.$val['name']);
          }
          for($i = 0; $i < count($img_desc); $i++){
            $image.= $img_desc[$i]['name'].'/';
        }
        $classProduct->updateProduct($id,$name,$image,$des,$price,$discount,$information,$color,$guarantee,$idProducer,$idCategory);
      }
      echo "<script>window.top.location='index.php?ctrl=product'</script>";
}
?>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Cập nhật sản phẩm</h4>
                        <p class="card-category">Nhập thông tin</p>
                    </div>
                    <div class="card-body">
                        <form method="post" action="" multipart="" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input type="hidden" class="form-control" name="product_id"
                                                    value="<?php if(isset($result)) echo $result[0];?>">
                                                <label class="bmd-label-floating">Tên</label>
                                                <input type="text" class="form-control" name="product_name"
                                                    value="<?php if(isset($result)) echo $result[1];?>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Đơn giá</label>
                                                <input type="number" class="form-control" name="product_price"
                                                    value="<?php if(isset($result)) echo $result[4];?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Giảm giá</label>
                                                <input type="number" class="form-control" name="product_discount"
                                                    value="<?php if(isset($result)) echo $result[5];?>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Màu sắc</label>
                                                <input type="text" class="form-control" name="product_color"
                                                    value="<?php if(isset($result)) echo $result[7];?>">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Bảo hành</label>
                                                <input type="number" class="form-control" name="product_guarantee" min=6
                                                    value="<?php if(isset($result)) echo $result[8];?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Hãng sản xuất</label>
                                                <select name="product_idproducer" id="" class="form-control">
                                                    <?php
                                                    while($set = $producers->fetch()){
                                                        $selected = "";
                                                      if(isset($result)){
                                                        if($result[9] == $set[0]){
                                                          $selected = "selected";
                                                        }
                                                      }
                                                      echo '<option value="'.$set[0].'"'.$selected.'>'.$set[1].'</option>';
                                                     
                                                    }
                                                  ?>
                                                </select>

                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Loại sản phẩm</label>
                                                <select name="product_idcategory" id="" class="form-control">
                                                    <?php
                                                
                                                    while($set = $categories->fetch()){
                                                        $selected = "";
                                                        if($result[10] == $set[0]){
                                                          $selected = "selected";
                                                        }
                                                        echo '<option value="'.$set[0].'"'.$selected.' >
                                                        '.$set[1].'
                                                      </option>';
                                                  
                                                    }
                                                  ?>
                                                </select>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">

                                                <div class="form-group">
                                                    <label class="bmd-label-floating"> Mô tả</label>
                                                    <textarea class="form-control" rows="5"
                                                        name="product_describle"><?php if(isset($result)) echo $result[3];?></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <input type="file" onchange="readURL(this)" class="form-control"
                                                name="product_image[]" accept="image/jpeg, image/png" multiple
                                                value="<?php if(isset($result)) echo $result[1];?>">
                                            <img id="showImg" src="#" alt="your image" width="100%" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Thông tin kỹ thuật</label>
                                        <textarea name="product_information" id="editor1" rows="10" cols="80">
                                                    <?php if(isset($result)) echo $result[6]; ?>
                                        </textarea>
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

<script src="../views/ckeditor/ckeditor.js"></script>
<script>
CKEDITOR.replace('editor1');

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('#showImg')
                .attr('src', e.target.result)

        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>