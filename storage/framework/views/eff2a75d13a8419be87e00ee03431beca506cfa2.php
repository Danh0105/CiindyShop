<section class="top-header desktop">
	<div class="container">
		<div class="content">
			<div class="left">
				
				<a href="<?php echo e(route("get.user.transaction")); ?>" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
			</div>
			<div class="right">
				<?php if(Auth::check()): ?>
					<a href="<?php echo e(route("get.user.dashboard")); ?>">Xin chào <?php echo e(Auth::user()->name); ?></a>
					<a href="<?php echo e(route("get.user.dashboard")); ?>">Quản lý tài khoản</a>
					<a href="<?php echo e(route("get.logout")); ?>">Đăng xuất </a>
				<?php else: ?>
					<a href="<?php echo e(route("get.register")); ?>">Đăng ký</a>
					<a href="<?php echo e(route("get.login")); ?>">Đăng nhập</a>
				<?php endif; ?>
			</div>
		</div>
	</div>
</section>
<section class="top-header mobile">
	<div class="container">
		<div class="content">
			<div class="left">
				<a href="<?php echo e(route("get.static.customer_care")); ?>" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a>
				<a href="<?php echo e(route("get.user.transaction")); ?>" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
				<?php if(Auth::check()): ?>
					<a href="">Xin chào <?php echo e(Auth::user()->name); ?></a>
					<a href="<?php echo e(route("get.user.dashboard")); ?>">Quản lý tài khoản</a>
					<a href="<?php echo e(route("get.logout")); ?>">Đăng xuất </a>
				<?php else: ?>
					<a href="<?php echo e(route("get.register")); ?>">Đăng ký</a>
					<a href="<?php echo e(route("get.login")); ?>">Đăng nhập</a>
				<?php endif; ?>
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
					<img src="<?php echo e(url("images/logo8.png")); ?>" alt="Home" style="height: 90px; width:auto;">
				</a>
				<span class="menu js-menu-cate" style="margin-right: 30px;"><i class="fa fa-list-alt" aria-hidden="true"></i></span>
			</div>
			<div class="search">

				<form role="search" action="<?php echo e($link_search ?? route("get.product.list", ["k" => Request::get("k")])); ?>"
					method="GET">
					<input class="form-control" name="k" type="text" value="<?php echo e(Request::get("k")); ?>"
						placeholder="Tìm kiếm sản phẩm ...">
					<button class="btnSearch" type="submit">
						<i class="fa fa-search"></i>
						<span>Tìm kiếm</span>
					</button>
				</form>
			</div>

			<ul class="right">
				<li>
					<a href="<?php echo e(route("get.product.list")); ?>">Sản phẩm</a>
				</li>
				<li>
					<a href="http://127.0.0.1:8000/bai-viet">Bài viết</a>
				</li>
				<li>

					<a href="<?php echo e(route("get.shopping.list")); ?>" title="Giỏ hàng">
						<i class="la la-shopping-cart"></i>
						<span class="text">
							<span class="">Giỏ hàng (<?php echo e(\Cart::count()); ?>)</span>
							<span></span>
						</span>
					</a>
				</li>

			</ul>

			<div class="container" id="menu-main" style="display: none;">
				<ul class="menu-list">
					<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<li>
							<a class="js-open-menu" href="<?php echo e(route("get.category.list", $item->c_slug . "-" . $item->id)); ?>"
								title="<?php echo e($item->c_name); ?>">
								<img src="<?php echo e($item->c_avatar); ?>" alt="<?php echo e($item->c_name); ?>">
								<span><?php echo e($item->c_name); ?></span>
								<?php if(isset($item->children) && count($item->children)): ?>
									<span class="fa fa-angle-right"></span>
								<?php else: ?>
									<span></span>
								<?php endif; ?>
							</a>
							<?php if(isset($item->children) && count($item->children)): ?>
								<div class="submenu">
									<div class="group">
										<div class="item">
											<?php $__currentLoopData = $item->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $children): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
												<a class="js-open-menu" href="<?php echo e(route("get.category.list", $children->c_slug . "-" . $children->id)); ?>"
													title="<?php echo e($children->c_name); ?>">
													<span><?php echo e($children->c_name); ?></span>
												</a>
											<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
										</div>
									</div>
								</div>
							<?php endif; ?>
						</li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				</ul>
			</div>
		</div>

	</div>
</div>
<?php /**PATH D:\Shop\resources\views/frontend/components/header.blade.php ENDPATH**/ ?>