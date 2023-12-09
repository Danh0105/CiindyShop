@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý từ khoá</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i>Trang chủ</a></li>
			<li><a href="{{ route("admin.keyword.index") }}"> Từ khóa</a></li>
			<li class="active">Danh sách </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.keyword.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px; text-align:center;">Thứ tự</th>
									<th>Tiêu đề</th>
									<th>Mô tả</th>
									<th>Hot</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								@if (isset($keywords))
									@foreach ($keywords as $key => $keyword)
										<tr>
											<td>{{ $keyword->id }}</td>
											<td>{{ $keyword->k_name }}</td>
											<td>{{ $keyword->k_description }}</td>
											<td>
												@if ($keyword->k_hot == 1)
													<a class="label label-info" href="{{ route("admin.keyword.hot", $keyword->id) }}">Hot</a>
												@else
													<a class="label label-default" href="{{ route("admin.keyword.hot", $keyword->id) }}">Không có</a>
												@endif
											</td>
											<td>{{ $keyword->created_at }}</td>
											<td>
												<div class="row">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="{{ route("admin.keyword.update", $keyword->id) }}"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.keyword.delete", $keyword->id) }}"
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
					{!! $keywords->links() !!}
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
