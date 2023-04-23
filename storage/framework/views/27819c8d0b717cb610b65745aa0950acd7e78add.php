<?php $__env->startSection('css'); ?>
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section>
        <div class="title">Cập nhật thông tin</div>
        <form action="" method="POST" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <div class="form-group">
                <label for="">Tên</label>
                <input type="text" name="name" class="form-control" value="<?php echo e(Auth::user()->name); ?>" placeholder="Nhập tên... ">
                
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="<?php echo e(Auth::user()->email); ?>" placeholder="Nhập email... ">
                
            </div>
            <div class="form-group">
                <label for="">Số điện thoại</label>
                <input type="number" name="phone" class="form-control" value="<?php echo e(Auth::user()->phone); ?>" placeholder="Nhập số điện thoại">
                
            </div>
            <div class="form-group">
                <label for="">Địa chỉ</label>
                <input type="text" name="address" class="form-control" value="<?php echo e(Auth::user()->address); ?>" placeholder="Nhập địa chỉ">
                
            </div>
            <div class="from-group">
                <div class="upload-btn-wrapper">
                    <button class="btn-upload">Tải hình ảnh</button>
                    <input type="file" name="avatar" />
                </div>
            </div>

            <button type="submit" class="btn btn-blue btn-md">Cập nhật</button>
        </form>

    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\THE CIINDYS\resources\views/user/update_info.blade.php ENDPATH**/ ?>