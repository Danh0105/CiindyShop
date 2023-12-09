<section id="box-news">
	<div class="top"><a class="main-title" href="#">Tin tức</a></div>
	<div class="bot">
		<?php $__currentLoopData = $articlesHot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="col">
				<div class="item">
					<div class="item__image">
						<a href="<?php echo e(route("get.blog.detail", $item->a_slug . "-" . $item->id)); ?>" title="<?php echo e($item->a_name); ?>">
							<img class="lazyload lazy" data-src="<?php echo e($item->a_avatar); ?>" src="<?php echo e($item->a_avatar); ?>"
								alt="<?php echo e($item->a_name); ?>">
						</a>
					</div>
					<div class="item__content">
						<div class="date-time"><i class="fa fa-calendar"></i> <span><?php echo e($item->created_at); ?></span></div>
						<h3><a class="title" href="<?php echo e(route("get.blog.detail", $item->a_slug . "-" . $item->id)); ?>"
								title="<?php echo e($item->a_name); ?>"><?php echo e($item->a_name); ?></a></h3>
						<p class="description"> <?php echo e($item->a_description); ?></p>
					</div>
				</div>
			</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</div>
</section>
<?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/frontend/pages/home/include/_inc_article.blade.php ENDPATH**/ ?>