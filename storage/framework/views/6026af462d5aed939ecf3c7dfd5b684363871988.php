<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Cập nhật danh mục sản phẩm</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.category.index")); ?>"> Danh mục</a></li>
			<li class="active"> Cập nhật</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-body">
					<form role="form" action="" method="POST" enctype="multipart/form-data">
						<?php echo csrf_field(); ?>
						<div class="col-sm-8">
							<div class="col-sm-12">
								<div class="form-group <?php echo e($errors->first("c_name") ? "has-error" : ""); ?>">
									<label for="name">Tên danh mục <span class="text-danger">(*)</span></label>
									<input class="form-control" name="c_name" type="text" value="<?php echo e($category->c_name); ?>"
										placeholder="Tên danh mục...">
									<?php if($errors->first("c_name")): ?>
										<span class="text-danger"><?php echo e($errors->first("c_name")); ?></span>
									<?php endif; ?>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label for="name">Danh mục cha <span class="text-danger">(*)</span></label>
									<select class="form-control" id="" name="c_parent_id">
										<option value="0">__Chọn__</option>
										<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
											<option value="<?php echo e($item->id); ?>" <?php echo e($item->id == $category->c_parent_id ? "selected='selected'" : ""); ?>>
												<?php $str = "";
												for ($i = 0; $i < $item->level; $i++) {
												    echo $str;
												    $str .= "-- ";
												} ?>
												<?php echo e($item->c_name); ?>

											</option>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									</select>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="box box-warning">
								<div class="box-header with-border">
									<h3 class="box-title">Ảnh</h3>
								</div>
								<div class="box-body block-images">
									<div style="margin-bottom: 10px">
										<img class="img-thumbnail" src="<?php echo e($category->c_avatar ?? "/images/no-image.jpg"); ?>" alt=""
											style="width: 200px;height: 200px;" onerror="this.onerror=null;this.src='/images/no-image.jpg';">
									</div>
									<div style="position:relative;">
										<a class="btn btn-primary" href="javascript:;"> Chọn tệp... <input class="js-upload" name="c_avatar"
												type="file"
												style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;"
												size="40"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="box-footer text-center">
								<a class="btn btn-danger" href="<?php echo e(route("admin.category.index")); ?>">
									Đóng <i class="fa fa-close"></i></a>
								<button class="btn btn-success" type="submit">Lưu <i class="fa fa-save"></i></button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/category/update.blade.php ENDPATH**/ ?>