<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý mã giảm giá</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.discount.code.index")); ?>"> Mã tài khoản</a></li>
			<li class="active">Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="<?php echo e(route("admin.discount.code.create")); ?>">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px">Thứ tự</th>
									<th>Mã </th>
									<th>Số lượt sử dụng</th>
									<th>Ngày bắt đầu</th>
									<th>Ngày kết thúc</th>
									<th>Phần trăm giảm giá</th>
									<th>Hành động</th>
								</tr>
								<?php if($discountCodes): ?>
									<?php $__currentLoopData = $discountCodes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $discount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<tr>
											<td><?php echo e($discount->id); ?></td>
											<td><?php echo e($discount->d_code); ?></td>
											<td><?php echo e($discount->d_number_code); ?></td>
											<td><?php echo e($discount->d_date_start); ?></td>
											<td><?php echo e($discount->d_date_end); ?></td>
											<td><?php echo e($discount->d_percentage); ?> %</td>
											<td>
												<div class="row">
													<div class="col-md-3">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="<?php echo e(route("admin.discount.code.update", $discount->id)); ?>"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-3">
														<a class="btn btn-xs js-delete-confirm" href="<?php echo e(route("admin.discount.code.delete", $discount->id)); ?>"
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
				<!-- /.box-body -->
				<div class="box-footer">
					<?php echo $discountCodes->links(); ?>

				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/discount_code/index.blade.php ENDPATH**/ ?>