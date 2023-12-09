<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý Sự Kiện</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.menu.index")); ?>"> Sự kiện</a></li>
			<li class="active"> Danh sách </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="<?php echo e(route("admin.menu.create")); ?>">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px">Thứ tự</th>
									<th>Tên</th>
									<th>Ảnh</th>
									<th>Trạng thái</th>
									<th>Hot</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								<?php if($menus): ?>
									<?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<tr>
											<td><?php echo e($menu->id); ?></td>
											<td><?php echo e($menu->mn_name); ?></td>
											<td>
												<img src="<?php echo e($menu->mn_avatar); ?>" style="width: 80px;height: 80px;">
											</td>
											<td>
												<?php if($menu->mn_status == 1): ?>
													<a class="label label-info" href="<?php echo e(route("admin.menu.active", $menu->id)); ?>">Hiển thị</a>
												<?php else: ?>
													<a class="label label-default" href="<?php echo e(route("admin.menu.active", $menu->id)); ?>">Ẩn</a>
												<?php endif; ?>
											</td>
											<td>
												<?php if($menu->mn_hot == 1): ?>
													<a class="label label-info" href="<?php echo e(route("admin.menu.hot", $menu->id)); ?>">Hot</a>
												<?php else: ?>
													<a class="label label-default" href="<?php echo e(route("admin.menu.hot", $menu->id)); ?>">Không có</a>
												<?php endif; ?>
											</td>
											<td><?php echo e($menu->created_at); ?></td>
											<td>
												<div class="row">
													<div class="col-md-3">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 30px 5px 10px;"
															href="<?php echo e(route("admin.menu.update", $menu->id)); ?>"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-3">
														<a class="btn btn-xs js-delete-confirm" href="<?php echo e(route("admin.menu.delete", $menu->id)); ?>"
															style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i
																class="fa fa-trash"></i>
															Xóa</a>
													</div>
												</div>

											</td>
										</tr>
									<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
								<?php endif; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/menu/index.blade.php ENDPATH**/ ?>