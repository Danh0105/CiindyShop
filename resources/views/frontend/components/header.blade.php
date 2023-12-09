<section class="top-header desktop">
	<div class="container">
		<div class="content">
			<div class="left">
				{{-- <a href="{{ route('get.static.customer_care') }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a> --}}
				<a href="{{ route("get.user.transaction") }}" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
			</div>
			<div class="right">
				@if (Auth::check())
					<a href="{{ route("get.user.dashboard") }}">Xin chào {{ Auth::user()->name }}</a>
					<a href="{{ route("get.user.dashboard") }}">Quản lý tài khoản</a>
					<a href="{{ route("get.logout") }}">Đăng xuất </a>
				@else
					<a href="{{ route("get.register") }}">Đăng ký</a>
					<a href="{{ route("get.login") }}">Đăng nhập</a>
				@endif
			</div>
		</div>
	</div>
</section>
<section class="top-header mobile">
	<div class="container">
		<div class="content">
			<div class="left">
				<a href="{{ route("get.static.customer_care") }}" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>
				<a href="{{ route("get.user.transaction") }}" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
				@if (Auth::check())
					<a href="">Xin chào {{ Auth::user()->name }}</a>
					<a href="{{ route("get.user.dashboard") }}">Quản lý tài khoản</a>
					<a href="{{ route("get.logout") }}">Đăng xuất </a>
				@else
					<a href="{{ route("get.register") }}">Đăng ký</a>
					<a href="{{ route("get.login") }}">Đăng nhập</a>
				@endif
			</div>
		</div>
	</div>
</section>

<div class="commonTop">
	<div id="headers">
		<div class="header-wrapper container">
			<!--Thay đổi-->
			<div class="logo">
				<a class="desktop" href="/">
					<img src="{{ url("images/logo8.png") }}" alt="Home" style="height: 90px; width:auto;">
				</a>
				<span class="menu js-menu-cate" style="margin-right: 30px;"><i class="fa fa-list-alt" aria-hidden="true"></i></span>
			</div>
			<div class="search">

				<form role="search" action="{{ $link_search ?? route("get.product.list", ["k" => Request::get("k")]) }}"
					method="GET">
					<input class="form-control" name="k" type="text" value="{{ Request::get("k") }}"
						placeholder="Tìm kiếm sản phẩm ...">
					<button class="btnSearch" type="submit">
						<i class="fa fa-search"></i>
						<span>Tìm kiếm</span>
					</button>
				</form>
			</div>

			<ul class="right">
				<li>
					<a href="{{ route("get.product.list") }}">Sản phẩm</a>
				</li>
				<li>
					<a href="http://127.0.0.1:8000/bai-viet">Bài viết</a>
				</li>
				<li>

					<a href="{{ route("get.shopping.list") }}" title="Giỏ hàng">
						<i class="la la-shopping-cart"></i>
						<span class="text">
							<span class="">Giỏ hàng ({{ \Cart::count() }})</span>
							<span></span>
						</span>
					</a>
				</li>

			</ul>

			<div class="container" id="menu-main" style="display: none;">
				<ul class="menu-list">
					@foreach ($categories as $item)
						<li>
							<a class="js-open-menu" href="{{ route("get.category.list", $item->c_slug . "-" . $item->id) }}"
								title="{{ $item->c_name }}">
								<img src="{{ $item->c_avatar }}" alt="{{ $item->c_name }}">
								<span>{{ $item->c_name }}</span>
								@if (isset($item->children) && count($item->children))
									<span class="fa fa-angle-right"></span>
								@else
									<span></span>
								@endif
							</a>
							@if (isset($item->children) && count($item->children))
								<div class="submenu">
									<div class="group">
										<div class="item">
											@foreach ($item->children as $children)
												<a class="js-open-menu" href="{{ route("get.category.list", $children->c_slug . "-" . $children->id) }}"
													title="{{ $children->c_name }}">
													<span>{{ $children->c_name }}</span>
												</a>
											@endforeach
										</div>
									</div>
								</div>
							@endif
						</li>
					@endforeach
				</ul>
			</div>
		</div>

	</div>
</div>
