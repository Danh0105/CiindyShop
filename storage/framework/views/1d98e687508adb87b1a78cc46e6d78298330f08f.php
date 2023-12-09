<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý Slide Banner</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.slide.index")); ?>"> Slide</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="<?php echo e(route("admin.slide.create")); ?>">Thêm mới <i
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
								<?php if(isset($slides)): ?>
									<?php $__currentLoopData = $slides; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slide): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<tr>
											<td><?php echo e($slide->id); ?></td>
											<td><?php echo e($slide->sd_title); ?></td>
											<td>
												<?php if($slide->sd_active == 1): ?>
													<a class="label label-info" href="<?php echo e(route("admin.slide.active", $slide->id)); ?>">Hiển thị</a>
												<?php else: ?>
													<a class="label label-default" href="<?php echo e(route("admin.slide.active", $slide->id)); ?>">Ẩn</a>
												<?php endif; ?>
											</td>
											<td><?php echo e($slide->sd_sort); ?></td>
											<td><?php echo e($slide->sd_target); ?></td>
											<td><?php echo e($slide->created_at); ?></td>
											<td>
												<div class="row" style="    display: flex;gap: 4px;">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 20px 5px 10px;"
															href="<?php echo e(route("admin.slide.update", $slide->id)); ?>"></i>Chỉnh sữa</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="<?php echo e(route("admin.slide.delete", $slide->id)); ?>"
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

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/slide/index.blade.php ENDPATH**/ ?>