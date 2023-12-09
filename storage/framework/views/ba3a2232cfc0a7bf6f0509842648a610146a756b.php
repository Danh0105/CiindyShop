<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Thêm mới mã giảm giá</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.category.index")); ?>"> Mã giảm giá</a></li>
			<li class="active"> Tạo </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-body">
					<?php echo $__env->make("admin.discount_code.form", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
				</div>
			</div>
			<!-- /.box -->
		</div>
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/discount_code/create.blade.php ENDPATH**/ ?>