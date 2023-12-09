@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý mã giảm giá</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="{{ route("admin.discount.code.index") }}"> Mã tài khoản</a></li>
			<li class="active">Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.discount.code.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px">Thứ tự</th>
									<th>Mã </th>
									<th>Số lượt sử dụng</th>
									<th>Ngày bắt đầu</th>
									<th>Ngày kết thúc</th>
									<th>Phần trăm giảm giá</th>
									<th>Hành động</th>
								</tr>
								@if ($discountCodes)
									@foreach ($discountCodes as $key => $discount)
										<tr>
											<td>{{ $discount->id }}</td>
											<td>{{ $discount->d_code }}</td>
											<td>{{ $discount->d_number_code }}</td>
											<td>{{ $discount->d_date_start }}</td>
											<td>{{ $discount->d_date_end }}</td>
											<td>{{ $discount->d_percentage }} %</td>
											<td>
												<div class="row">
													<div class="col-md-3">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="{{ route("admin.discount.code.update", $discount->id) }}"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-3">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.discount.code.delete", $discount->id) }}"
															style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i
																class="fa fa-trash"></i>
															Xóa</a>
													</div>
												</div>

											</td>
										</tr>
									@endforeach
								@endif
							</tbody>
						</table>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					{!! $discountCodes->links() !!}
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
