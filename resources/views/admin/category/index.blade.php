@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý danh mục sản phẩm</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Trang chủ</a></li>
			<li><a href="{{ route("admin.category.index") }}"> Danh mục</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.category.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px; text-align:center;">Thứ tự</th>
									<th>Tên danh mục</th>
									<th>Ảnh</th>
									<th>Trạng thái</th>
									<th>Hiển thị</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								@if ($categories)
									@foreach ($categories as $key => $category)
										<tr>
											<td>{{ $category->id }}</td>
											<td>{{ $category->c_name }}</td>
											<td>
												<img class="img-thumbnail" src="{{ $category->c_avatar ?? "/images/no-image.jpg" }}" alt=""
													style="width: 80px;height: 80px;" onerror="this.onerror=null;this.src='/images/no-image.jpg';">
											</td>
											<td>
												@if ($category->c_status == 1)
													<a class="label label-info" href="{{ route("admin.category.active", $category->id) }}">Hiển thị</a>
												@else
													<a class="label label-default" href="{{ route("admin.category.active", $category->id) }}">Ẩn</a>
												@endif
											</td>
											<td>
												@if ($category->c_hot == 1)
													<a class="label label-info" href="{{ route("admin.category.hot", $category->id) }}">Hiển thị</a>
												@else
													<a class="label label-default" href="{{ route("admin.category.hot", $category->id) }}">Ẩn</a>
												@endif
											</td>
											<td>{{ $category->created_at }}</td>
											<td>
												<div class="row">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="{{ route("admin.category.update", $category->id) }}"><i class="fa fa-pencil"></i> Edit</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm"
															href="{{ route("admin.category.delete", $category->id) }}"style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i
																class="fa fa-trash"></i>
															Delete</a>
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
					{!! $categories->links() !!}
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
