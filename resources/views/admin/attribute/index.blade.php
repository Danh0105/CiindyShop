@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý kích thước màu sắc sản phẩm</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Trang chủ</a></li>
			<li><a href="{{ route("admin.attribute.index") }}"> Dữ liệu kích thước màu sắc sản phẩm</a></li>
			<li class="active">Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.attribute.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px; text-align:center;">Thứ tự</th>
									<th>Tên</th>
									<th>Kiểu</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								@if (isset($attibutes))
									@foreach ($attibutes as $key => $attribute)
										<tr>
											<td>{{ $attribute->id }}</td>
											<td>{{ $attribute->atb_name }}</td>
											<td>
												<span class="label label-info">{{ $attribute->type->t_name ?? "[N\A]" }}</span>
											</td>
											<td>{{ $attribute->created_at }}</td>
											<td>
												<div class="row">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="{{ route("admin.attribute.update", $attribute->id) }}"><i class="fa fa-pencil"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.attribute.delete", $attribute->id) }}"
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
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
