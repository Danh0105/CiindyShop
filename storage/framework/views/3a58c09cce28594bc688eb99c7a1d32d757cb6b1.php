<div class="blog-item">
	<div class="avatar">
		<a class="image cover" href="<?php echo e(route("get.blog.detail", $article->a_slug . "-" . $article->id)); ?>"
			title="<?php echo e($article->a_name); ?>">
			<img class="lazyload lazy" data-src="<?php echo e($article->a_avatar); ?>" src="<?php echo e(asset("images/preloader.gif")); ?>" alt="">
		</a>
	</div>
	<div class="info">
		<a href="<?php echo e(route("get.blog.detail", $article->a_slug . "-" . $article->id)); ?>"
			title="<?php echo e($article->a_name); ?>"><?php echo e($article->a_name); ?></a>
		<p><?php echo e($article->a_description); ?></p>
	</div>
</div>
<?php /**PATH C:\laragon\www\THE CIINDYS\THE CIINDYS\resources\views/frontend/pages/article/include/_inc_blog_item.blade.php ENDPATH**/ ?>