<div class="blog-top">
	<div class="title"> Tin tức nổi bật</div>
	
	<div class="bot">
		<?php $__currentLoopData = $articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<div class="item">
				<a class="image cover" href="<?php echo e(route("get.blog.detail", $article->a_slug . "-" . $article->id)); ?>"
					title="<?php echo e($article->a_name); ?>">
					<img class="lazyload lazy" data-src="<?php echo e($article->a_avatar); ?>" src="<?php echo e(asset("images/preloader.gif")); ?>"
						alt="<?php echo e($article->a_name); ?>">
					<p><?php echo e($article->a_name); ?></p>
				</a>
			</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</div>
</div>
<?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/frontend/components/hot_article.blade.php ENDPATH**/ ?>