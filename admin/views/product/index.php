
 
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0"> Bảng sản phẩm</h4>
                  <p class="card-category"><a href="?ctrl=product&act=add">Thêm mới</a></p>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                  <form method="post" action="">
                  
                  <table class="table table-hover">
                      <thead class="">
                        <th>
                          ID
                        </th>
                        <th>
                          Tên sản phẩm
                        </th>
                        <th>
                          Hình
                        </th>
                        <th>
                          Đơn giá
                        </th>
                        <th>
                          Giảm giá
                        </th>
                        <th>
                          Hãng sản xuất
                        </th>
                        <th>
                          Loại
                        </th>
                        <th>
                         Thao tác
                        </th>
                      </thead>
                      <tbody>
                          <?php
                          $p = new producer();
                          $c = new category();
                            while($set = $products->fetch()){
                              $producer = $p->getProducerbyId($set[9]);
                              $category = $c->getCategorybyId($set[10]);
                              $images = explode('/',$set[2]);
                              echo '<tr>
                              <td>
                                '.$set[0].'
                              </td>
                              <td>
                              '.$set[1].'
                              </td>
                              <td>';
                              foreach($images as $img){
                                if(!empty($img)){
                                  echo '<img src="'.$pathImg.$img.'" width=100/>';
                                }
                             
                              }
                              echo '
                              </td>
                              <td>
                              '.$set[4].'
                              </td>
                              <td>
                              '.$set[5].'
                              </td>
                              <td>
                              '.$producer['name'].'
                              </td>
                              <td>
                              '.$category['name'].'
                              </td>
                              <td class="td-actions">
                             
                                <a href="?ctrl=product&act=edit&id='.$set[0].'" rel="tooltip" title="Sửa" class="btn btn-primary btn-link btn-sm">
                                    <i class="material-icons">edit</i>
                                  </a>
                           
                                  <a href="?ctrl=product&act=delete&id='.$set[0].'" rel="tooltip" title="Xóa" class="btn btn-danger btn-link btn-sm">
                                    <i class="material-icons">close</i>
                                  </a>
                                </td>
                            </tr>'
                            ;}
                          ?>
                      </tbody>
                    </table></form>
                   
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  
