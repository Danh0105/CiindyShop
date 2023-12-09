<div class="blog-item">
	<div class="avatar">
		<a class="image cover" href="{{ route("get.blog.detail", $article->a_slug . "-" . $article->id) }}"
			title="{{ $article->a_name }}">
			<img class="lazyload lazy" data-src="{{ $article->a_avatar }}" src="{{ asset("images/preloader.gif") }}" alt="">
		</a>
	</div>
	<div class="info">
		<a href="{{ route("get.blog.detail", $article->a_slug . "-" . $article->id) }}"
			title="{{ $article->a_name }}">{{ $article->a_name }}</a>
		<p>{{ $article->a_description }}</p>
	</div>
</div>
