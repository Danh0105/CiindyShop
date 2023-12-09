<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới danh mục sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.category.index')); ?>"> Danh mục</a></li>
            <li class="active"> Tạo </li>
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
                                <div class="form-group <?php echo e($errors->first('c_name') ? 'has-error' : ''); ?>">
                                    <label for="name">Tên danh mục <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" name="c_name"  placeholder="Tên danh mục...">
                                    <?php if($errors->first('c_name')): ?>
                                        <span class="text-danger"><?php echo e($errors->first('c_name')); ?></span>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="name">Danh mục cha <span class="text-danger">(*)</span></label>
                                    <select name="c_parent_id" class="form-control" id="">
                                        <option value="0">__Gốc__</option>
                                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($category->id); ?>">
                                                <?php $str = '' ;for($i = 0; $i < $category->level; $i ++){ echo $str; $str .= '-- '; }?>
                                                <?php echo e($category->c_name); ?>

                                            </option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
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
                                        <img src="<?php echo e(pare_url_file($category->c_avatar ?? '') ?? '/images/no-image.jpg'); ?>" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                                    </div>
                                
                                    <input name="pro_avatar" size="40" class="custom-file-input" type="file"     >
                                    </div>
                            </div>
                        </div>


                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <a href="<?php echo e(route('admin.category.index')); ?>" class="btn btn-danger">
                                 Đóng <i class="fa fa-close"></i></a>
                                <button type="submit" class="btn btn-success">Lưu   <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\THE CIINDYS\resources\views/admin/category/create.blade.php ENDPATH**/ ?>