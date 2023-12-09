@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Trang thống kê admin</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
		</ol>
	</section>
	<section class="content">
		<!-- Info boxes -->
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-aqua"><i class="ion ion-ios-cart-outline"></i></span>
					<div class="info-box-content">
						<span class="info-box-text">Tổng số đơn hàng</span>
						<span class="info-box-number">{{ $totalTransactions }}<small><a href="{{ route("admin.transaction.index") }}">(Chi
									tiết đơn hàng)</a></small></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-red"><i class="ion ion-ios-people-outline"></i></span>
					<div class="info-box-content">
						<span class="info-box-text">Thành viên</span>
						<span class="info-box-number">{{ $totalUsers }} <small><a href="{{ route("admin.user.index") }}">(Chi tiết thành
									viên)</a></small></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<!-- fix for small devices only -->
			<div class="clearfix visible-sm-block"></div>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-green"><i class="fa fa-shopping-bag" aria-hidden="true"></i></span>
					<div class="info-box-content">
						<span class="info-box-text">Sản phẩm</span>
						<span class="info-box-number">{{ $totalProducts }} <small><a href="{{ route("admin.product.index") }}">(Chi tiết
									sản phẩm)</a></small></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-yellow"><i class="fa fa-flag" aria-hidden="true"></i></span>
					<div class="info-box-content">
						<span class="info-box-text">Đánh giá</span>
						<span class="info-box-number">{{ $totalRatings }} <small><a href="{{ route("admin.rating.index") }}">(Chi tiết đánh
									giá)</a></small></span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
		</div>
		<div>
			<div style="width: 100px;">
				<select class="form-control" id="selectOption" name="">
					<option value="1">Tháng</option>
					<option value="2">Ngày</option>
				</select>
			</div>
			<canvas id="Chartday" style="display: none;"></canvas>
			<canvas id="Chartmonth"></canvas>
		</div>
		<div class="row">
			<!-- Left col -->
			<div class="col-md-8">
				<!-- TABLE: LATEST ORDERS -->
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Danh sách đơn hàng mới</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-box-tool" data-widget="collapse" type="button"><i class="fa fa-minus"></i>
							</button>
							<button class="btn btn-box-tool" data-widget="remove" type="button"><i class="fa fa-times"></i></button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
							<table class="no-margin table">
								<thead>
									<tr>
										<th>ID</th>
										<th>Thông tin</th>
										<th>Tổng tiền</th>
										<th>Account</th>
										<th>Trạng thái</th>
										<th>Ngày tạo</th>
									</tr>
								</thead>
								<tbody>
									@foreach ($transactions as $transaction)
										<tr>
											<td>{{ $transaction->id }}</td>
											<td>
												<ul>
													<li>Name: {{ $transaction->tst_name }}</li>
													<li>Email: {{ $transaction->tst_email }}</li>
													<li>Phone: {{ $transaction->tst_phone }}</li>
												</ul>
											</td>
											<td>{{ number_format($transaction->tst_total_money, 0, ",", ".") }} đ</td>
											<td>
												@if ($transaction->tst_user_id)
													<span class="label label-success">Thành viên</span>
												@else
													<span class="label label-default">Khách</span>
												@endif
											</td>
											<td>
												<span class="label label-{{ $transaction->getStatus($transaction->tst_status)["class"] }}">
													{{ $transaction->getStatus($transaction->tst_status)["name"] }}
												</span>
											</td>
											<td>{{ $transaction->created_at }}</td>
										</tr>
									@endforeach
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix">
						<a class="btn btn-sm btn-info btn-flat pull-right" href="{{ route("admin.transaction.index") }}">Danh sách đơn
							hàng</a>
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->
			</div>
			<div class="col-md-4">
				<!-- PRODUCT LIST -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Top sản phẩm bán chạy</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-box-tool" data-widget="collapse" type="button"><i class="fa fa-minus"></i>
							</button>
							<button class="btn btn-box-tool" data-widget="remove" type="button"><i class="fa fa-times"></i></button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<ul class="products-list product-list-in-box">
							@foreach ($topPayProducts as $item)
								<li class="item">
									<div class="product-img">
										<img src="{{ pare_url_file($item->pro_avatar) }}" alt="Product Image">
									</div>
									<div class="product-info">
										<a class="product-title" href="javascript:void(0)">
											{{ $item->pro_pay }} Lượt mua
											<span class="label label-warning pull-right">{{ number_format($item->pro_price, 0, ",", ".") }} đ</span>
										</a>
										<span class="product-description">{{ $item->pro_name }}</span>
									</div>
								</li>
							@endforeach
						</ul>
					</div>
					<!-- /.box-body -->
					<div class="box-footer text-center">
						{{-- <a href="javascript:void(0)" class="uppercase">View All Products</a> --}}
					</div>
					<!-- /.box-footer -->
				</div>
			</div>
		</div>

		<!-- /.row -->

	</section>
@stop

@section("script")

	<link href="https://code.highcharts.com/css/highcharts.css" rel="stylesheet">
	<script src="https://code.highcharts.com/highcharts.js"></script>
	{{-- <script src="https://code.highcharts.com/modules/exporting.js"></script> --}}
	{{-- <script src="https://code.highcharts.com/modules/export-data.js"></script> --}}
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script type="text/javascript">
		const ctx = document.getElementById('Chartmonth');
		var dataTK = {{ $profit }};
		const data = {
			labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9',
				'Tháng 10', 'Tháng 11', 'Tháng 12'
			],
			datasets: [{
					label: 'Tổng Bán',
					data: {{ $sum }},
					backgroundColor: 'rgba(255, 99, 132, 0.2)',
					borderColor: 'rgb(255, 99, 132)',
					borderWidth: 1
				},
				{
					label: 'Lãi hoặc Lỗ',
					data: dataTK,
					backgroundColor: 'rgba(75, 192, 192, 0.2)',
					borderColor: 'rgb(75, 192, 192)',
					borderWidth: 1
				},
			]
		};

		const stackedBar = new Chart(ctx, {
			type: 'bar',
			data: data,
			options: {
				scales: {
					x: {
						stacked: true
					},
					y: {
						stacked: true
					}
				},
				plugins: {
					subtitle: {
						display: true,
						text: 'Custom Chart Subtitle'
					}
				}
			}
		});


		let dataTransaction = $("#container").attr('data-json');
		dataTransaction = JSON.parse(dataTransaction);

		let listday = $("#container2").attr("data-list-day");
		listday = JSON.parse(listday);

		let listMoneyMonth = $("#container2").attr('data-money');
		listMoneyMonth = JSON.parse(listMoneyMonth);

		let listMoneyMonthDefault = $("#container2").attr('data-money-default');
		listMoneyMonthDefault = JSON.parse(listMoneyMonthDefault);



		Highcharts.chart('container2', {
			chart: {
				type: 'spline'
			},
			title: {
				text: 'Biểu đồ doanh thu các ngày trong tháng'
			},
			subtitle: {
				text: 'Source: WorldClimate.com'
			},
			xAxis: {
				categories: listday
			},
			yAxis: {
				title: {
					text: 'Temperature'
				},
				labels: {
					formatter: function() {
						return this.value + '°';
					}
				}
			},
			tooltip: {
				crosshairs: true,
				shared: true
			},
			plotOptions: {
				spline: {
					marker: {
						radius: 4,
						lineColor: '#666666',
						lineWidth: 1
					}
				}
			},
			series: [{
					name: 'Hoàn tất giao dịch',
					marker: {
						symbol: 'square'
					},
					data: listMoneyMonth
				},
				{
					name: 'Tiếp nhận',
					marker: {
						symbol: 'square'
					},
					data: listMoneyMonthDefault
				}
			]
		});
	</script>
	<script>
		$(document).ready(function() {
			$('#selectOption').change(function() {
				var selectValue = $(this).val();

				if (selectValue == 2) {
					$('#Chartmonth').hide();
					$.ajax({
						url: '{{ route("getday") }}',
						type: 'GET',
						success: function(response) {
							const ctx = document.getElementById('Chartday');
							$('#Chartday').show();
							var dataTK = {{ $profit }};
							const data = {
								labels: response.day,
								datasets: [{
										label: 'Tổng Bán',
										data: response.sum,
										backgroundColor: 'rgba(255, 99, 132, 0.2)',
										borderColor: 'rgb(255, 99, 132)',
										borderWidth: 1
									},
									{
										label: 'Lãi hoặc Lỗ',
										data: response.profit,
										backgroundColor: 'rgba(75, 192, 192, 0.2)',
										borderColor: 'rgb(75, 192, 192)',
										borderWidth: 1
									},
								]
							};

							const stackedBar = new Chart(ctx, {
								type: 'bar',
								data: data,
								options: {
									scales: {
										x: {
											stacked: true
										},
										y: {
											stacked: true
										}
									},
									plugins: {
										subtitle: {
											display: true,
											text: 'Custom Chart Subtitle'
										}
									}
								}
							});
						}
					});
				} else {
					$('#Chartmonth').show();
					$('#Chartday').hide();

				}
			});
		});
	</script>
@stop
