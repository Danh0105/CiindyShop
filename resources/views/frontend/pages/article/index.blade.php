@extends("layouts.app_master_frontend")
@section("css")
	<link href="{{ asset("css/blog.min.css") }}" rel="stylesheet">
	<style type="text/css">
		.pagination {
			margin: 10px auto;
			display: flex;
			margin-left: 9px;
		}

		.pagination li {
			padding: 5px;
			margin: 0 2px;
			border: 1px solid #dedede;
		}

		.pagination li a,
		.pagination li span {
			line-height: 25px;
			display: block;
			text-align: center;
			width: 25px;
			height: 25px;
		}
	</style>
@stop
@section("content")
	<div class="container">
		<div class="breadcrumb">
			<ul>
				<li>
					<a href="/" title="Home"><span itemprop="title">Trang chủ</span></a>
				</li>
				<li>
					<a href="{{ route("get.blog.home") }}" title=""><span itemprop="title">Bài viết</span></a>
				</li>
				@if (isset($menu))
					<li>
						<a href="" title="{{ $menu->mn_name }}"><span itemprop="title">{{ $menu->mn_name }}</span></a>
					</li>
				@endif
			</ul>
		</div>
		<div class="blog-main">
			<div class="left">
				@if (isset($articleTop))
					<div class="post-hot">
						@if ($articleTop = $articlesHotTop->first())
							<div class="hot-left">
								<div class="avatar">
									<a class="image cover" href="{{ route("get.blog.detail", $articleTop->a_slug . "-" . $articleTop->id) }}"
										title="">
										<img class="lazyload" src="https://i.ytimg.com/vi/kBsUOeeSKXg/maxresdefault.jpg" alt="">
									</a>
								</div>
								<a class="title" href="" title="">{{ $articleTop->a_name }}</a>
								<p class="intro-short">{{ $articleTop->a_description }}</p>
							</div>
						@endif
						<div class="hot-right">
							@foreach ($articlesHotTop as $i => $item)
								@if ($i == 0)
									<div class="top">
										<div class="avatar">
											<a class="image cover" href="{{ route("get.blog.detail", $item->a_slug . "-" . $item->id) }}" title="">
												<img class="lazyload" src="{{ $item->a_avatar }}">
											</a>
										</div>
										<a class="title" href="{{ route("get.blog.detail", $item->a_slug . "-" . $item->id) }}"
											title="">{{ $item->a_name }}</a>
									</div>
								@else
									<div class="bot">
										<a class="" href="{{ route("get.blog.detail", $item->a_slug . "-" . $item->id) }}"
											title="">{{ $item->a_name }}</a>
									</div>
								@endif
							@endforeach
						</div>
					</div>
				@endif
				<div class="post-list">
					@foreach ($articles as $article)
						@include("frontend.pages.article.include._inc_blog_item", ["article" => $article])
					@endforeach
					<div style="display: block;">
						{!! $articles->appends([])->links() !!}
					</div>
				</div>
			</div>
			<div class="right">
				@include("frontend.components.articles_hot_sidebar_top", ["articles" => $articlesHotSidebarTop])
				@include("frontend.components.top_product", ["products" => $productTopPay])
				@include("frontend.components.hot_article", ["articles" => $articlesHot])
			</div>
		</div>
	</div>
@stop
@section("script")
	<script src="{{ asset("js/blog.js") }}" type="text/javascript"></script>
@stop
