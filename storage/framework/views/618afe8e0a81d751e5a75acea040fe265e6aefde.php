<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý nhà cung cấp</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.producer.index")); ?>"> Nhà cung cấp</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="<?php echo e(route("admin.producer.create")); ?>">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 100px"> Thứ tự</th>
									<th>Tên</th>
									<th>Email</th>
									<th>Số điện thoại</th>
									<th>Ngày tạo</th>
									<th>Hành động</th>
								</tr>
								<?php if(isset($producers)): ?>
									<?php $__currentLoopData = $producers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $producer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<tr>
											<td><?php echo e($producer->id); ?></td>
											<td><?php echo e($producer->pdr_name); ?></td>
											<td><?php echo e($producer->pdr_email); ?></td>
											<td><?php echo e($producer->pdr_phone); ?></td>
											<td><?php echo e($producer->created_at); ?></td>
											<td>
												<div class="row">
													<div class="col-md-2">
														<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 45px 5px 10px;"
															href="<?php echo e(route("admin.producer.update", $producer->id)); ?>"><i class="fa fa-pencil"></i> Edit</a>
													</div>
													<div class="col-md-2">
														<a class="btn btn-xs js-delete-confirm" href="<?php echo e(route("admin.producer.delete", $producer->id)); ?>"
															style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i
																class="fa fa-trash"></i>
															Delete</a>
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
			<div class="box-footer">
				<?php echo $producers->appends($query)->links(); ?>

			</div>
		</div>
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/producer/index.blade.php ENDPATH**/ ?>