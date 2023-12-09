@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý Trang tĩnh</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="{{ route("admin.static.index") }}"> Tĩnh</a></li>
			<li class="active"> List </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.static.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px">Thứ tự</th>
									<th>Tiêu đề</th>
									<th>Loại Trang</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								@if (isset($statics))
									@foreach ($statics as $static)
										<tr>
											<td>{{ $static->id }}</td>
											<td>{{ $static->s_title }}</td>
											<td>{{ $static->getType($static->s_type) }}</td>
											<td>{{ $static->created_at }}</td>
											<td>
												<div class="row" style="display: flex;gap:10px;">
													<div class="col-md-2">
														<a class="btn btn-xs" href="{{ route("admin.static.update", $static->id) }}"
															style="background-color: #3c8dbc;color: white;    margin: 5px 30px 5px 10px;"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.static.delete", $static->id) }}"
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
					{{-- {!! $slides->links() !!} --}}
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
