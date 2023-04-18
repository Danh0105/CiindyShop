<a style="margin-left: 270px; margin-bottom:400px;"id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button">
    <i class="fa fa-chevron-up" aria-hidden="true"></i>
  </a>
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
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d6607.5725666351755!2d105.77607703739011!3d10.026252571005086!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1681757653748!5m2!1svi!2s" width="300" height="160" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            
        </div>
        
        <div class="footer__right">
            <div class="title">Fanpage của chúng tôi</div>
            <div class="image">
                <div class="fb-page"
                      data-href="https://www.facebook.com/profile.php?id=100091606824976"
                      data-width="500"
                      data-height="1500"
                      data-hide-cover="false"
                      data-show-facepile="false" ></div>
            </div> 
        </div>
         
          
    </div>
</div>
  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3205159929509308&autoLogAppEvents=1"></script> 

$(window).scroll(function() {
    if ($(this).scrollTop() > 50) {
        $('#back-to-top').fadeIn();
    } else {
        $('#back-to-top').fadeOut();
    }
});

$('#back-to-top').click(function() {
    $('body,html').animate({
        scrollTop: 0
    }, 1000);
    return false;
});
<?php /**PATH C:\xampp\htdocs\THE CIINDYS\resources\views/frontend/components/footer.blade.php ENDPATH**/ ?>