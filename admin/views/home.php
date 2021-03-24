<?php
$dataPoints = array( 
	array("y" => 0,"label" => "Tháng 1" ),
	array("y" => 0,"label" => "Tháng 2" ),
	array("y" => 0,"label" => "Tháng 3" ),
  array("y" => 0,"label" => "Tháng 4" ),
  array("y" => 0,"label" => "Tháng 5" ),
  array("y" => 0,"label" => "Tháng 6" ),
  array("y" => 0,"label" => "Tháng 7" ),
  array("y" => 0,"label" => "Tháng 8" ),
  array("y" => 0,"label" => "Tháng 9" ),
  array("y" => 0,"label" => "Tháng 10" ),
  array("y" => 0,"label" => "Tháng 11" ),
  array("y" => 0,"label" => "Tháng 12" ),
);
$totalInYear = 0;
$year = date('Y');
$revenue = $classOrder->getRevenuebyYear($year);
if(isset($_POST['view_revenue_year'])){
  $year = $_POST['yearRevenue'];
  $revenue = $classOrder->getRevenuebyYear($year);
}
while($rs = $revenue->fetch()){
  $totalInYear += $rs[0];
  for($i = 0; $i < count($dataPoints); $i++){
    if(date('m',strtotime($rs['ngay_dat'])) == explode(' ',$dataPoints[$i]['label'])[1]){
      $dataPoints[$i]['y'] += $rs[0];
    }
  }
};

$date = date('Y-m');
$totalRevenue = $classOrder->getTotalRevenue($date)->fetch();
if(isset($_POST['view_revenue'])){
if(isset($_POST['revenue_date'])){
  $date = $_POST['revenue_date'];
}
$totalRevenue = $classOrder->getTotalRevenue($date)->fetch();

}

$otherProducts = 0;
$dataPoints2 = array();
$topProducts = $classOrder->getTop5HotProducts();
while($tp = $topProducts->fetch()){
   array_push($dataPoints2,array("y"=>$tp[0],"label"=>$tp[1]));
   $otherProducts += $tp[0];
}
array_push($dataPoints2,array("y"=>100-$otherProducts,"label"=>"Các sản phẩm khác"));


 
?>
<style>
h3 {
    font-size: 18px;
}

.yearRevenue input {
    color: gray;

    display: inline-block;
    border: solid 1px lightgray;


    border-radius: 4px;
    font-size: 14px;
}
</style>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">devices</i>
                        </div>
                        <p class="card-category">Sản phẩm</p>
                        <h3 class="card-title"><?php echo count($products->fetch()); ?>
                            <small>SP</small>
                        </h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-danger">warning</i>
                            <a href="">Get More Space...</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon">
                            <i class="material-icons">store</i>
                        </div>
                        <p class="card-category">Doanh thu</p>
                        <h3 class="card-title"> <?php echo number_format($totalRevenue[0]); ?>VND</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <form action="" method="post">
                                <input type="month" value="<?php echo $date; ?>" name="revenue_date">
                                <input type="submit" name="view_revenue">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-danger card-header-icon">
                        <div class="card-icon">
                          <a href="?ctrl=order" style="color:white"> <i class="material-icons">shopping_cart</i></a> 
                        </div>
                        <p class="card-category">Đơn hàng cần xử lý</p>
                        <h3 class="card-title"><?php $count = 0; while($rs = $needtoHandle->fetch()){
                            $count += 1;
                        }echo $count; ?></h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">local_offer</i> Tracked from Github
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                    <div class="card-header card-header-info card-header-icon">
                        <div class="card-icon">
                            <i class="fa fa-twitter"></i>
                        </div>
                        <p class="card-category">Followers</p>
                        <h3 class="card-title">+245</h3>
                    </div>
                    <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">update</i> Just Updated
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 col-md-12">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title">Thống kế trong năm <form action="" method="post" style="float: right;"
                                class="yearRevenue">
                                <input type="number" value="<?php echo $year; ?>" name="yearRevenue" placeholder="YYYY"
                                    min="2018" max="2100" step="1">
                                <input type="submit" name="view_revenue_year">
                            </form>
                        </h4>



                    </div>
                    <div class="card-body table-responsive">
                        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="card">
                    <div class="card-header card-header-warning">
                        <h4 class="card-title">Thống kế sản phẩm nổi bật</h4>
                        <p class="card-category"></p>
                    </div>
                    <div class="card-body table-responsive">
                        <div id="chartContainer2" style="height: 370px; width: 100%;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

window.onload = function() {

    var chart = new CanvasJS.Chart("chartContainer", {
        animationEnabled: true,
        title: {
            text: "Thống kê các tháng trong năm"
        },
        axisY: {
            title: <?php echo '"Tổng '.number_format($totalInYear).' VND"'; ?>,
            includeZero: true,
            prefix: "",
            suffix: "VND"
        },
        data: [{
            type: "bar",
            yValueFormatString: "#,### VND",
            indexLabel: "{y}",
            indexLabelPlacement: "inside",
            indexLabelFontWeight: "bolder",
            indexLabelFontColor: "white",
            dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
        }]
    });
    var chart2 = new CanvasJS.Chart("chartContainer2", {
	theme: "light2",
	animationEnabled: true,
	title: {
		text: "Top 5 sản phẩm nổi bật"
	},
	data: [{
		type: "pie",
		indexLabel: "{y}",
		yValueFormatString: "#,##0.00\"%\"",
		indexLabelPlacement: "inside",
		indexLabelFontColor: "#36454F",
		indexLabelFontSize: 18,
		indexLabelFontWeight: "bolder",
		showInLegend: true,
		legendText: "{label}",
		dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
	}]
});
    chart.render();
    chart2.render();
}
</script>