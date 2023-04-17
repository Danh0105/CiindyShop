<div id="footer">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="<?php echo e(route('get.blog.home')); ?>">Bài viết</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.product.list')); ?>">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.register')); ?>">Đăng ký</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.login')); ?>">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        <?php if(isset($menus)): ?>
                            <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a title="<?php echo e($menu->mn_name); ?>"
                                        href="<?php echo e(route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id)); ?>">
                                        <?php echo e($menu->mn_name); ?>

                                    </a>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <li><a href="<?php echo e(route('get.contact')); ?>">Phản hồi</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Chính sách</div>
                    <ul>
                        <li><a href="<?php echo e(route('get.static.shopping_guide')); ?>">Hướng dẫn mua hàng</a></li>
                        <li><a href="<?php echo e(route('get.static.return_policy')); ?>">Chính sách đổi trả</a></li>
                        
                    </ul>
                </div>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>
                    <p>
                        <a href="" class="fa fa fa-youtube"></a>
                        <a href="" class="fa fa-facebook-official"></a>

                    </p>
                </div>
            </div>
        </div>
        <div class="footer__mid">
            <div class="title">Hệ thống cửa hàng</div>
            <div class="image">
                
            </div>
            <a href="he-thong-cua-hang/index.html" title="" class="more">Xem tất cả hệ thống cửa hàng</a>
        </div>
        <div class="footer__right">
            <div class="title">Fanpage của chúng tôi</div>
            <div class="image">
                <div class="fb-page"
                      data-href="https://www.facebook.com/profile.php?id=100091606824976"
                      data-width="400"
                      data-height="300"
                      data-hide-cover="false"
                      data-show-facepile="false" ></div>
            </div>
        </div>
    </div>
</div>
  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3205159929509308&autoLogAppEvents=1"></script> 

<?php /**PATH C:\xampp\htdocs\THE CIINDYS\resources\views/frontend/components/footer.blade.php ENDPATH**/ ?>