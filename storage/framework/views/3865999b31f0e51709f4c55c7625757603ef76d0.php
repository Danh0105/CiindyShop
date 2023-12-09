<?php $__env->startSection("content"); ?>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Quản lý bài viết</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
			<li><a href="<?php echo e(route("admin.article.index")); ?>"> Bài viết</a></li>
			<li class="active"> Danh sách</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-header">
					<h3 class="box-title"><a class="btn btn-primary" href="<?php echo e(route("admin.article.create")); ?>">Thêm mới <i
								class="fa fa-plus"></i></a></h3>
				</div>
				<div class="box-body">
					<div class="col-md-12">
						<table class="table">
							<tbody>
								<tr>
									<th style="width: 70px">Thư mục</th>
									<th style="width: 25%">Tiêu đề</th>
									<th>Danh mục</th>
									<th>Ảnh</th>
									<th>Hot</th>
									<th>Trạng thái</th>
									<th>Ngày đăng</th>
									<th style="width: 15%">Hành động</th>
								</tr>

							</tbody>
							<?php if(isset($articles)): ?>
								<?php $__currentLoopData = $articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<tr>
										<td><?php echo e($article->id); ?></td>
										<td><?php echo e($article->a_name); ?></td>
										<td>
											<span class="label label-success"><?php echo e($article->menu->mn_name ?? "[N\A]"); ?></span>
										</td>
										<td>
											<img src="<?php echo e($article->a_avatar); ?>" style="width: 80px;height: 80px">
										</td>

										<td>
											<?php if($article->a_hot == 1): ?>
												<a class="label label-info" href="<?php echo e(route("admin.article.hot", $article->id)); ?>">Hot</a>
											<?php else: ?>
												<a class="label label-default" href="<?php echo e(route("admin.article.hot", $article->id)); ?>">Không có</a>
											<?php endif; ?>
										</td>
										<td>
											<?php if($article->a_active == 1): ?>
												<a class="label label-info" href="<?php echo e(route("admin.article.active", $article->id)); ?>">Kích hoạt </a>
											<?php else: ?>
												<a class="label label-default" href="<?php echo e(route("admin.article.active", $article->id)); ?>">Ẩn</a>
											<?php endif; ?>
										</td>
										<td><?php echo e($article->created_at); ?></td>
										<td style="width: 120px">
											<div class="row">
												<div class="col-md-5">
													<a class="btn btn-xs"style="background-color: #3c8dbc;color: white;    margin: 5px 30px 5px 10px;"
														href="<?php echo e(route("admin.article.update", $article->id)); ?>"></i>Chỉnh sữa</a>
												</div>
												<div class="col-md-5">
													<a class="btn btn-xs js-delete-confirm" href="<?php echo e(route("admin.article.delete", $article->id)); ?>"
														style="background-color: #dd4b39;border-color: #d73925;margin:5px;color: white"><i class="fa fa-trash"></i>
														Xóa</a>
												</div>
											</div>

										</td>
									</tr>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							<?php endif; ?>
						</table>
					</div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<?php echo $articles->links(); ?>

				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section>
	<!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make("layouts.app_master_admin", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/article/index.blade.php ENDPATH**/ ?>