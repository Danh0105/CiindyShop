<div class="blog-top">
	<div class="title"> Tin tức nổi bật</div>
	{{-- <div class="top">
        <div class="top__avatar">
            <a href="" title="" class="image cover">
                <img data-src="" class="lazyload" alt="" src="{{ url('images/banner/dongho.jpg') }}">
            </a>
        </div>
        <a href="" title="" class="top__title">DDây là tiêu đề bài viết</a>
    </div> --}}
	<div class="bot">
		@foreach ($articles as $article)
			<div class="item">
				<a class="image cover" href="{{ route("get.blog.detail", $article->a_slug . "-" . $article->id) }}"
					title="{{ $article->a_name }}">
					<img class="lazyload lazy" data-src="{{ $article->a_avatar }}" src="{{ asset("images/preloader.gif") }}"
						alt="{{ $article->a_name }}">
					<p>{{ $article->a_name }}</p>
				</a>
			</div>
		@endforeach
	</div>
</div>
