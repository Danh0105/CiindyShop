@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý bài viết</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="{{ route("admin.article.index") }}"> Bài viết</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="{{ route("admin.article.create") }}">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px">Thư mục</th>
									<th style="width: 25%">Tiêu đề</th>
									<th>Danh mục</th>
									<th>Ảnh</th>
									<th>Hot</th>
									<th>Trạng thái</th>
									<th>Ngày đăng</th>
									<th style="width: 15%">Hành động</th>
								</tr>

							</tbody>
							@if (isset($articles))
								@foreach ($articles as $key => $article)
									<tr>
										<td>{{ $article->id }}</td>
										<td>{{ $article->a_name }}</td>
										<td>
											<span class="label label-success">{{ $article->menu->mn_name ?? "[N\A]" }}</span>
										</td>
										<td>
											<img src="{{ $article->a_avatar }}" style="width: 80px;height: 80px">
										</td>

										<td>
											@if ($article->a_hot == 1)
												<a class="label label-info" href="{{ route("admin.article.hot", $article->id) }}">Hot</a>
											@else
												<a class="label label-default" href="{{ route("admin.article.hot", $article->id) }}">Không có</a>
											@endif
										</td>
										<td>
											@if ($article->a_active == 1)
												<a class="label label-info" href="{{ route("admin.article.active", $article->id) }}">Kích hoạt </a>
											@else
												<a class="label label-default" href="{{ route("admin.article.active", $article->id) }}">Ẩn</a>
											@endif
										</td>
										<td>{{ $article->created_at }}</td>
										<td style="width: 120px">
											<div class="row">
												<div class="col-md-5">
													<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 30px 5px 10px;"
														href="{{ route("admin.article.update", $article->id) }}"></i>Chỉnh sữa</a>
												</div>
												<div class="col-md-5">
													<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.article.delete", $article->id) }}"
														style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i class="fa fa-trash"></i>
														Xóa</a>
												</div>
											</div>

										</td>
									</tr>
								@endforeach
							@endif
						</table>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					{!! $articles->links() !!}
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
