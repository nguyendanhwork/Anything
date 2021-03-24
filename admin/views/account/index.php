
 
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0"> Bảng hãng sản xuất</h4>
                  <p class="card-category"><a href="?ctrl=account&act=add">Thêm mới</a></p>
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
                          Họ tên
                        </th>
                        <th>
                          Tên tài khoản
                        </th>
                        <th>
                          Email
                        </th>
                        <th>
                          Vai trò
                        </th>
                        <th>
                         Thao tác
                        </th>
                      </thead>
                      <tbody>
                          <?php
                            while($set = $accounts->fetch()){
                              $role = "";
                              if($set[6] == 0){
                                $role = 'Khách hàng';
                              }else $role = 'Quản trị viên';
                              echo '<tr>
                              <td>
                                '.$set[0].'
                              </td>
                              <td>
                              '.$set[3].'
                              </td>
                              <td>
                              '.$set[1].'
                              </td>
                              <td>
                              '.$set[4].'
                              </td>
                              <td>
                              '.$role.'
                              </td>
                              <td class="td-actions">
                             
                                <a href="?ctrl=account&act=edit&id='.$set[0].'" rel="tooltip" title="Sửa" class="btn btn-primary btn-link btn-sm">
                                    <i class="material-icons">edit</i>
                                  </a>
                           
                                  <a href="?ctrl=account&act=delete&id='.$set[0].'" rel="tooltip" title="Xóa" class="btn btn-danger btn-link btn-sm">
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
  
