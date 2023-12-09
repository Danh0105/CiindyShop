<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý Trang tĩnh</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.static.index")); ?>"> Tĩnh</a></li>
			<li class="active"> List </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="<?php echo e(route("admin.static.create")); ?>">Thêm mới <i
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
								<?php if(isset($statics)): ?>
									<?php $__currentLoopData = $statics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $static): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<tr>
											<td><?php echo e($static->id); ?></td>
											<td><?php echo e($static->s_title); ?></td>
											<td><?php echo e($static->getType($static->s_type)); ?></td>
											<td><?php echo e($static->created_at); ?></td>
											<td>
												<div class="row" style="display: flex;gap:10px;">
													<div class="col-md-2">
														<a class="btn btn-xs" href="<?php echo e(route("admin.static.update", $static->id)); ?>"
															style="background-color: #3c8dbc;color: white;    margin: 5px 30px 5px 10px;"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="<?php echo e(route("admin.static.delete", $static->id)); ?>"
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
					
				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/static/index.blade.php ENDPATH**/ ?>