
 
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card card-plain">
                <div class="card-header card-header-primary">
                  <h4 class="card-title mt-0"> Bảng hãng sản xuất</h4>
                
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                  <form method="post" action="">
                  
                  <table class="table table-hover">
                      <thead class="">
                        <th>
                          Mã đơn  hàng
                        </th>
                        <th>
                          Tên khách hàng
                        </th>
                        <th>
                          Tổng tiền
                        </th>
                   
                        <th>
                          Ngày đặt
                        </th>
                        <th>
                         Trạng thái
                        </th>
                        <th>
                         Thao tác
                        </th>
                      </thead>
                      <tbody>
                          <?php
                            while($set = $orders->fetch()){
                              echo '<tr>
                              <td>
                                '.$set[0].'
                              </td>
                              <td>
                              '.$classOrder->getCustomerbyId($set[1])[3].' ('.$set[1].')
                              </td>
                              <td>
                              '.number_format($set[2]).'đ
                              </td>
                              <td>
                              '.$set[3].'
                              </td>
                              <td>
                              '.$set[4].'
                              </td>
                              <td class="td-actions">
                             
                                <a href="?ctrl=order&idedit='.$set[0].'" rel="tooltip" title="Xem" class="btn btn-primary btn-link btn-sm">
                                    <i class="material-icons">visibility</i>
                                  </a>
                           
                                  <a href="?ctrl=order&iddelete='.$set[0].'" rel="tooltip" title="Xóa" class="btn btn-danger btn-link btn-sm">
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
  
