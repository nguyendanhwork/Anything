
 
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0"> Bảng hãng sản xuất</h4>
                  <p class="card-category"><a href="?ctrl=producer&act=add">Thêm mới</a></p>
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
                          Tên
                        </th>
                        <th>
                          Mô tả
                        </th>
               
                        <th>
                         Thao tác
                        </th>
                      </thead>
                      <tbody>
                          <?php
                            while($set = $producers->fetch()){
                              echo '<tr>
                              <td>
                                '.$set[0].'
                              </td>
                              <td>
                              '.$set[1].'
                              </td>
                              <td>
                              '.$set[2].'
                              </td>
                       
                              <td class="td-actions">
                             
                                <a href="?ctrl=producer&act=edit&id='.$set[0].'" rel="tooltip" title="Sửa" class="btn btn-primary btn-link btn-sm">
                                    <i class="material-icons">edit</i>
                                  </a>
                           
                                  <a href="?ctrl=producer&act=delete&id='.$set[0].'" rel="tooltip" title="Xóa" class="btn btn-danger btn-link btn-sm">
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
  
