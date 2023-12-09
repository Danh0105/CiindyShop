@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý Slide Banner</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="{{ route("admin.slide.index") }}"> Slide</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.slide.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr style="text-align:center;">
									<th style="width: 60px; text-align:center;">Thứ tự</th>
									<th>Tên</th>
									<th>Trạng thái</th>
									<th>Vị trí</th>
									<th>Target</th>
									<th>Ngày tạo</th>
									<th>Hành dộng</th>
								</tr>
								@if (isset($slides))
									@foreach ($slides as $slide)
										<tr>
											<td>{{ $slide->id }}</td>
											<td>{{ $slide->sd_title }}</td>
											<td>
												@if ($slide->sd_active == 1)
													<a class="label label-info" href="{{ route("admin.slide.active", $slide->id) }}">Hiển thị</a>
												@else
													<a class="label label-default" href="{{ route("admin.slide.active", $slide->id) }}">Ẩn</a>
												@endif
											</td>
											<td>{{ $slide->sd_sort }}</td>
											<td>{{ $slide->sd_target }}</td>
											<td>{{ $slide->created_at }}</td>
											<td>
												<div class="row" style="    display: flex;gap: 4px;">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 20px 5px 10px;"
															href="{{ route("admin.slide.update", $slide->id) }}"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.slide.delete", $slide->id) }}"
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
