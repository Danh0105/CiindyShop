@extends("layouts.app_master_admin")
@section("content")
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý sản phẩm</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="{{ route("admin.product.index") }}"> Sản phẩm</a></li>
			<li class="active"> Danh sách </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-title">
					<form class="form-inline">
						<input class="form-control" name="id" type="text" value="{{ Request::get("id") }}" placeholder="ID">
						<input class="form-control" name="name" type="text" value="{{ Request::get("name") }}" placeholder="Tên...">
						<select class="form-control" name="category">
							<option value="0">Danh mục</option>
							@foreach ($categories as $item)
								<option value="{{ $item->id }}" {{ Request::get("category") == $item->id ? "selected='selected'" : "" }}>
									{{ $item->c_name }}</option>
							@endforeach
						</select>

						<button class="btn btn-success" type="submit"><i class="fa fa-search"></i> Tìm kiếm</button>
						<button class="btn btn-info" name="export" type="submit" value="true">
							<i class="fa fa-save"></i> Xuất file
						</button>
						<a class="btn btn-primary" href="{{ route("admin.product.create") }}">Thêm mới <i class="fa fa-plus"></i></a>
					</form>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th>Nhà cung cấp</th>
									<th style="width: 70px; text-align:center;">Thứ tự</th>
									<th style="width: 300px">Tên</th>
									<th>Danh mục</th>
									<th>Ảnh</th>
									<th>Giá</th>
									<th>Giá Nhập</th>
									<th>Hot</th>
									<th>Số lượng</th>
									<th>Trạng thái</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>

							</tbody>
							@if (isset($producer))
								@foreach ($producer as $item)
									<tr style="">
										<td style="border-right: 2px solid #f4f4f4;border-bottom: 2px solid #f4f4f4;"
											rowspan="{{ count($item["products"]) + 1 }}" scope="row">
											{{ $item["pdr_name"] }}</td>
									</tr>
									@foreach ($item["products"] as $product)
										<tr>
											<td>{{ $product["id"] }}</td>
											<td>{{ $product["pro_name"] }}</td>
											<td>
												<span class="label label-success">{{ $product["category"]["c_name"] ?? "[N\A]" }}</span>
											</td>
											<td>
												<img src="{{ pare_url_file($product["pro_avatar"]) }}" style="width: 80px;height: 100px">
											</td>
											<td>
												@if ($product["pro_sale"])
													<span style="text-decoration: line-through;">{{ number_format($product["pro_price"], 0, ",", ".") }}
														đ</span><br>
													@php
														$price = ((100 - $product["pro_sale"]) * $product["pro_price"]) / 100;
													@endphp
													<span>{{ number_format($price, 0, ",", ".") }} đ</span>
												@else
													{{ number_format($product["pro_price"], 0, ",", ".") }} đ
												@endif

											</td>
											<td>
												{{ number_format($product["pro_price_entry"], 0, ",", ".") }} đ

											</td>
											<td>
												@if ($product["pro_hot"] == 1)
													<a class="label label-info" href="{{ route("admin.product.hot", $product["id"]) }}">Hot</a>
												@else
													<a class="label label-default" href="{{ route("admin.product.hot", $product["id"]) }}">Không có</a>
												@endif
											</td>
											<td>{{ $product["pro_number"] - $product["pro_pay"] > 0 ? $product["pro_number"] - $product["pro_pay"] : 0 }}
											</td>
											<td>
												@if ($product["pro_active"] == 1)
													<a class="label label-info" href="{{ route("admin.product.active", $product["id"]) }}">Kích hoạt</a>
												@else
													<a class="label label-default" href="{{ route("admin.product.active", $product["id"]) }}">Ẩn</a>
												@endif
											</td>
											<td>{{ $product["created_at"] }}</td>
											<td>
												<div class="row">
													<div class="col-md-6">
														<a class="btn btn-xs" href="{{ route("admin.product.update", $product["id"]) }}"
															style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;">
															<i class="fa fa-pencil"></i>Chinh sửa</a>

													</div>
													<div class="col-md-6">
														<a class="btn btn-xs js-delete-confirm" href="{{ route("admin.product.delete", $product["id"]) }}"
															style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white">
															<i class="fa fa-trash"></i>
															Xóa</a>
													</div>
												</div>
											</td>
										</tr>
									@endforeach
								@endforeach
							@endif
						</table>
					</div>
				</div>
			</div>
			<!-- /.box-body -->
			<div class="box-footer">

			</div>
			<!-- /.box-footer-->
		</div>
		<!-- /.box -->
	</section>
	<!-- /.content -->
@stop
