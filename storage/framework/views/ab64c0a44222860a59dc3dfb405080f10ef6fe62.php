<style>
	.select2-container--default .select2-selection--multiple {
		border-radius: 0px !important;
	}

	.col-red {
		color: red;
	}

	.select2-selection__choice {
		color: black !important;
	}

	.checkbox {
		margin-top: 10px !important;
		margin-bottom: 10px !important;
	}

	.custom-file-input::-webkit-file-upload-button {
		visibility: hidden;
	}

	.custom-file-input::before {
		content: 'Select some files';
		display: inline-block;
		background: linear-gradient(top, #f9f9f9, #e3e3e3);
		border: 1px solid #999;
		border-radius: 3px;
		padding: 5px 8px;
		outline: none;
		white-space: nowrap;
		-webkit-user-select: none;
		cursor: pointer;
		text-shadow: 1px 1px #fff;
		font-weight: 700;
		font-size: 10pt;
	}

	.custom-file-input:hover::before {
		border-color: black;
	}

	.custom-file-input:active::before {
		background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9);
	}
</style>

<form role="form" action="" method="POST" enctype="multipart/form-data">
	<?php echo csrf_field(); ?>
	<div class="col-sm-8">
		<div class="box box-warning">
			<div class="box-header with-border">
				<h3 class="box-title">Thông tin Sản Phẩm</h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label for="exampleInputEmail1">Tên <b class="col-red">(*)</b></label>
					<input class="form-control" name="pro_name" type="text" value="<?php echo e($product->pro_name ?? old("pro_name")); ?>"
						placeholder="Tên sản phẩm...." autocomplete="off">
					<?php if($errors->first("pro_name")): ?>
						<span class="text-danger"><?php echo e($errors->first("pro_name")); ?></span>
					<?php endif; ?>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="exampleInputEmail1">Giá sản phẩm</label>
							<input class="form-control" name="pro_price" data-type="currency" type="text"
								value="<?php echo e(old("pro_price", isset($product->pro_price) ? $product->pro_price : 0)); ?>" placeholder="Giá...">
							<?php if($errors->first("pro_price")): ?>
								<span class="text-danger"><?php echo e($errors->first("pro_price")); ?></span>
							<?php endif; ?>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="exampleInputEmail1">Giảm giá</label>
							<input class="form-control" name="pro_sale" data-type="currency" type="number"
								value="<?php echo e(old("pro_sale", isset($product->pro_sale) ? $product->pro_sale : 0)); ?>" placeholder="Giá giảm...">
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<label for="tag">Từ khóa</label>
							<select class="form-control js-select2-keyword" name="keywords[]" multiple="">
								<option value="">__Chọn_</option>
								<?php $__currentLoopData = $keywords; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $keyword): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<option value="<?php echo e($keyword->id); ?>" <?php echo e(in_array($keyword->id, $keywordOld) ? "selected='selected'" : ""); ?>>
										<?php echo e($keyword->k_name); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Khuyến mại</label>
					<textarea class="form-control" id="pro_description" name="pro_description" cols="5" rows="2"
					 autocomplete="off"><?php echo e($product->pro_description ?? old("pro_description")); ?></textarea>
					<?php if($errors->first("pro_description")): ?>
						<span class="text-danger"><?php echo e($errors->first("pro_description")); ?></span>
					<?php endif; ?>
				</div>

				<div class="form-group">
					<label class="control-label">Danh mục <b class="col-red">(*)</b></label>
					<select class="form-control" name="pro_category_id">
						<option value="">__Chọn__</option>
						<?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<option value="<?php echo e($category->id); ?>"
								<?php echo e(($product->pro_category_id ?? 0) == $category->id ? "selected='selected'" : ""); ?>>
								<?php echo e($category->c_name); ?>

							</option>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</select>
					<?php if($errors->first("pro_category_id")): ?>
						<span class="text-danger"><?php echo e($errors->first("pro_category_id")); ?></span>
					<?php endif; ?>
				</div>
			</div>
		</div>
		<div class="box box-warning">
			<div class="box-header with-border">
				<h3 class="box-title">Size</h3>
			</div>
			<div class="box-body">
				<?php $__currentLoopData = $attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<?php if(!empty($attribute["attributes"])): ?>
						<div class="form-group col-sm-12">
							<?php $__currentLoopData = $attribute["attributes"]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php if($item["atb_type_id"] == 1): ?>
									<div class="col-sm-3 checkbox">
										<label>
											<input name="attribute[]" type="checkbox" value="<?php echo e($item["id"]); ?>"
												<?php echo e(in_array($item["id"], $attributeOld) ? "checked" : ""); ?>> <?php echo e($item["atb_name"]); ?>

										</label>
									</div>
								<?php endif; ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					<?php endif; ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
			<hr>
			<div class="box-header with-border">
				<h3 class="box-title">Màu sắc</h3>
			</div>
			<div class="box-body">
				<?php $__currentLoopData = $attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<?php if(!empty($attribute["attributes"])): ?>
						<div class="form-group col-sm-12">
							<?php $__currentLoopData = $attribute["attributes"]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
								<?php if($item["atb_type_id"] == 2): ?>
									<div class="col-sm-3 checkbox">
										<label>
											<input name="attribute[]" type="checkbox" value="<?php echo e($item["id"]); ?>"
												<?php echo e(in_array($item["id"], $attributeOld) ? "checked" : ""); ?>> <?php echo e($item["atb_name"]); ?>

										</label>
									</div>
								<?php endif; ?>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</div>
					<?php endif; ?>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
			<hr>
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<div class="box-body" style="padding: 0px;">
				<div class="form-group col-sm-4">
					<label for="exampleInputEmail1">Thương hiệu</label>
					<select class="form-control" name="pro_country">
						<option value="0">__Chọn__</option>
						<?php $__currentLoopData = $producer; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<option value="<?php echo e($item->id); ?>"
								<?php echo e(($product->pro_country ?? "") == $item->id ? "selected='selected'" : ""); ?>><?php echo e($item->pdr_name); ?></option>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</select>
				</div>
				<div class="col-sm-4">
					<div class="form-group">
						<label for="exampleInputEmail1">Giá nhập</label>
						<input class="form-control" name="pro_price_entry" data-type="currency" type="text"
							value="<?php echo e(old("pro_sale", isset($product->pro_price_entry) ? $product->pro_price_entry : 0)); ?>"
							placeholder="Giá giảm...">
					</div>
				</div>
				<div class="form-group col-sm-4">
					<label for="">Số lượng</label>
					<input class="form-control" name="pro_number" type="number"
						value="<?php echo e($product->pro_number ?? old("pro_number", 0)); ?>" placeholder="10">
				</div>
			</div>
		</div>
		<div class="box box-warning">
			<div class="box-header with-border">
				<h3 class="box-title">Nội dung <b class="col-red">(*)</b></h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					
					<textarea class="form-control textarea" id="pro_content" name="pro_content" cols="5" rows="2"><?php echo e($product->pro_content ?? ""); ?></textarea>
					<?php if($errors->first("pro_content")): ?>
						<span class="text-danger"><?php echo e($errors->first("pro_content")); ?></span>
					<?php endif; ?>
				</div>
			</div>
		</div>

	</div>
	<div class="col-sm-4">
		<div class="box box-warning">
			<div class="box-header with-border">
				<h3 class="box-title">Ảnh đại diện</h3>
			</div>
			<div class="box-body block-images">
				<div style="margin-bottom: 10px">
					<img class="img-thumbnail" src="<?php echo e(pare_url_file($product->pro_avatar ?? "") ?? "/images/no-image.jpg"); ?>"
						alt="" style="width: 200px;height: 200px;"
						onerror="this.onerror=null;this.src='/images/no-image.jpg';">
				</div>
				
				<input class="custom-file-input" name="pro_avatar" type="file" size="40" >
			</div>
		</div>
	</div>
	<div class="col-sm-12 clearfix">
		<div class="box-footer text-center">
			<a class="btn btn-default" href="<?php echo e(route("admin.product.index")); ?>"><i class="fa fa-arrow-left"></i> Đóng</a>
			<button class="btn btn-success" type="submit"><i class="fa fa-save"></i>
				<?php echo e(isset($product) ? "Cập nhật" : "Thêm mới"); ?> </button>
		</div>
	</div>
</form>

<link type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/css/fileinput.css"
	media="all" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/js/fileinput.js" type="text/javascript">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.7/themes/fa/theme.js"
	type="text/javascript"></script>

<script>
	ckeditor('pro_content');
	ckeditor('pro_description');
	ckeditor('pro_specifications');
</script>
<?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/admin/product/form.blade.php ENDPATH**/ ?>