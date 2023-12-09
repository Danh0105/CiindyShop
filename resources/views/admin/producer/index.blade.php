@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý nhà cung cấp</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="{{ route("admin.producer.index") }}"> Nhà cung cấp</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.producer.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 100px"> Thứ tự</th>
									<th>Tên</th>
									<th>Email</th>
									<th>Số điện thoại</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								@if (isset($producers))
									@foreach ($producers as $key => $producer)
										<tr>
											<td>{{ $producer->id }}</td>
											<td>{{ $producer->pdr_name }}</td>
											<td>{{ $producer->pdr_email }}</td>
											<td>{{ $producer->pdr_phone }}</td>
											<td>{{ $producer->created_at }}</td>
											<td>
												<div class="row">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="{{ route("admin.producer.update", $producer->id) }}"><i class="fa fa-pencil"></i> Edit</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.producer.delete", $producer->id) }}"
															style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i
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
			</div>
			<!-- /.box -->
			<div class="box-footer">
				{!! $producers->appends($query)->links() !!}
			</div>
		</div>
	</section>
	<!-- /.content -->
@stop
