<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>TRANG ADMIN</title>
		<META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
		<!-- Tell the browser to be responsive to screen width -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<!-- Bootstrap 3.3.7 -->
		<link href="{{ asset("admin/bower_components/bootstrap/dist/css/bootstrap.min.css") }}" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="{{ asset("admin/bower_components/font-awesome/css/font-awesome.min.css") }}" rel="stylesheet">
		<!-- Ionicons -->
		<link href="{{ asset("admin/bower_components/Ionicons/css/ionicons.min.css") }}" rel="stylesheet">
		<!-- Theme style -->
		<link href="{{ asset("admin/dist/css/AdminLTE.min.css") }}" rel="stylesheet">
		<!-- AdminLTE Skins. Choose a skin from the css/skins
												folder instead of downloading all of them to reduce the load. -->
		<link href="{{ asset("admin/dist/css/skins/_all-skins.min.css") }}" rel="stylesheet">
		<!-- Pace style -->
		<link href="{{ asset("admin/plugins/pace/pace.min.css") }}" rel="stylesheet">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

		<link href="{{ asset("admin/bower_components/select2/dist/css/select2.min.css") }}" rel="stylesheet">
		<script src="{!! asset("admin/ckeditor/ckeditor.js") !!}"></script>
		<script src="{!! asset("admin/ckfinder/ckfinder.js") !!}"></script>
		<script src="{!! asset("admin/dist/js/func_ckfinder.js") !!}"></script>
		<script>
			var baseURL = "{!! url("/") !!}"
		</script>
		<!-- Google Font -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"
			rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.min.js"
			integrity="sha512-7U4rRB8aGAHGVad3u2jiC7GA5/1YhQcQjxKeaVms/bT66i3LVBMRcBI9KwABNWnxOSwulkuSXxZLGuyfvo7V1A=="
			crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	</head>

	<body class="hold-transition skin-blue sidebar-mini">
		<!-- Site wrapper -->
		<div class="wrapper">
			<header class="main-header">
				<!-- Logo -->
				<a class="logo" href="{{ route("get.admin.index") }}">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>THE</b>CIINDYS</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><b>{{ get_data_user("admins", "name") }}</b></span>
				</a>
				<!-- Header Navbar: style can be found in header.less -->
				<nav class="navbar navbar-static-top">
					<!-- Sidebar toggle button-->

					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">

							<li class="dropdown user user-menu">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<span class="hidden-xs">{{ get_data_user("admins", "name") }}</span>
								</a>
								<ul class="dropdown-menu">
									<!-- User image -->
									<li class="user-header">

									</li>
									<!-- Menu Footer-->
									<li class="user-footer">
										<div class="pull-left">
											<a class="btn btn-default btn-flat" href="{{ route("admin.profile.index") }}">Thông tin</a>
										</div>

										<div class="pull-right">
											<a class="btn btn-default btn-flat" href="{{ route("get.logout.admin") }}">Đăng xuất</a>
										</div>
									</li>
								</ul>
							</li>
							<!-- Control Sidebar Toggle Button -->
							{{--                            <li> --}}
							{{--                                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a> --}}
							{{--                            </li> --}}
						</ul>
					</div>
				</nav>
			</header>
			<!-- =============================================== -->
			<!-- Left side column. contains the sidebar -->
			<aside class="main-sidebar">
				<!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
					<!-- Sidebar user panel -->

					<!-- sidebar menu: : style can be found in sidebar.less -->
					<ul class="sidebar-menu" data-widget="tree">
						<li class="header"></li>

						@foreach (config("sidebar") as $item)
							@if (isset($item["label"]))
								<li class="header">{{ $item["name"] }}</li>
								@continue;
							@endif
							<li
								class="{{ isset($item["sub"]) ? "treeview" : "" }} {{ in_array(Request::segment(2), $item["list-check"]) ? " active menu-open" : "" }}">
								<a href="{{ isset($item["sub"]) ? "#" : route($item["route"]) }}">
									<i class="fa {{ $item["icon"] }}"></i>
									{{ $item["name"] }}
									@if (isset($item["sub"]))
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									@endif
								</a>
								@if (isset($item["sub"]))
									<ul class="treeview-menu">
										@foreach ($item["sub"] as $li)
											<li class="{{ Request::segment(2) == $li["namespace"] ? "active" : "" }}">
												<a href="{{ route($li["route"]) }}">
													<i class="fa {{ $li["icon"] }}"></i>
													{{ $li["name"] }}
												</a>
											</li>
										@endforeach
									</ul>
								@endif
							</li>
						@endforeach

						<li><a href="{{ route("admin.event.index") }}"><i class="fa fa-calendar" aria-hidden="true"></i><span>Quản lý sự
									kiện</span></a></li>
						<li><a href="{{ route("admin.slide.index") }}"><i class="fa fa-calendar-minus-o"
									aria-hidden="true"></i><span>Quản lý banner</span></a></li>
						<li><a href="{{ route("admin.static.index") }}"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
								<span>Quản lý trang</span></a></li>

					</ul>
				</section>
				<!-- /.sidebar -->
			</aside>
			<!-- =============================================== -->
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				@yield("content")
			</div>
			<!-- /.content-wrapper -->
			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					<b>THE</b>CIINDYS
				</div>
			</footer>
			<!-- Control Sidebar -->
			<aside class="control-sidebar control-sidebar-dark">
				<!-- Create the tabs -->
				<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
					<li><a data-toggle="tab" href="#control-sidebar-home-tab"><i class="fa fa-home"></i></a></li>
					<li><a data-toggle="tab" href="#control-sidebar-settings-tab"><i class="fa fa-gears"></i></a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<!-- Home tab content -->
					<div class="tab-pane" id="control-sidebar-home-tab">
						<h3 class="control-sidebar-heading"> Hoạt động gần đây</h3>
						<ul class="control-sidebar-menu">
							<li>
								<a href="javascript:void(0)">
									<i class="menu-icon fa fa-birthday-cake bg-red"></i>
									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Sinh nhật của Langdon</h4>
										<p>Sẽ là 23 vào ngày 24 tháng 4</p>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<i class="menu-icon fa fa-user bg-yellow"></i>
									<div class="menu-info">
										<h4 class="control-sidebar-subheading">đã cập nhật hồ sơ của anh ấy</h4>
										<p>Số điện thoại </p>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Danh sách gửi thư đã tham gia</h4>
										<p>THECIINDYS@gmail.com</p>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<i class="menu-icon fa fa-file-code-o bg-green"></i>
									<div class="menu-info">
										<h4 class="control-sidebar-subheading">Công việc định kỳ 254 đã được thực hiện</h4>
										<p>Thời gian thực hiện 5 giây</p>
									</div>
								</a>
							</li>
						</ul>
						<!-- /.control-sidebar-menu -->
						<h3 class="control-sidebar-heading">tiến độ nhiệm vụ</h3>
						<ul class="control-sidebar-menu">
							<li>
								<a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Thiết kế mẫu tùy chỉnh
										<span class="label label-danger pull-right">70%</span>
									</h4>
									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Cập nhật sơ yếu lý lịch
										<span class="label label-success pull-right">95%</span>
									</h4>
									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-success" style="width: 95%"></div>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Tích hợp Laravel
										<span class="label label-warning pull-right">50%</span>
									</h4>
									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
									</div>
								</a>
							</li>
							<li>
								<a href="javascript:void(0)">
									<h4 class="control-sidebar-subheading">
										Kết thúc Framework
										<span class="label label-primary pull-right">68%</span>
									</h4>
									<div class="progress progress-xxs">
										<div class="progress-bar progress-bar-primary" style="width: 68%"></div>
									</div>
								</a>
							</li>
						</ul>
						<!-- /.control-sidebar-menu -->
					</div>
					<!-- /.tab-pane -->
					<!-- Stats tab content -->
					<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
					<!-- /.tab-pane -->
					<!-- Settings tab content -->
					<div class="tab-pane" id="control-sidebar-settings-tab">
						<form method="post">
							<h3 class="control-sidebar-heading">General Settings</h3>
							<div class="form-group">
								<label class="control-sidebar-subheading">
									Report panel usage
									<input class="pull-right" type="checkbox" checked>
								</label>
								<p>
									Some information about this general settings option
								</p>
							</div>
							<!-- /.form-group -->
							<div class="form-group">
								<label class="control-sidebar-subheading">
									Allow mail redirect
									<input class="pull-right" type="checkbox" checked>
								</label>
								<p>
									Other sets of options are available
								</p>
							</div>
							<!-- /.form-group -->
							<div class="form-group">
								<label class="control-sidebar-subheading">
									Expose author name in posts
									<input class="pull-right" type="checkbox" checked>
								</label>
								<p>
									Allow the user to show his name in blog posts
								</p>
							</div>
							<!-- /.form-group -->
							<h3 class="control-sidebar-heading">Chat Settings</h3>
							<div class="form-group">
								<label class="control-sidebar-subheading">
									Show me as online
									<input class="pull-right" type="checkbox" checked>
								</label>
							</div>
							<!-- /.form-group -->
							<div class="form-group">
								<label class="control-sidebar-subheading">
									Turn off notifications
									<input class="pull-right" type="checkbox">
								</label>
							</div>
							<!-- /.form-group -->
							<div class="form-group">
								<label class="control-sidebar-subheading">
									Delete chat history
									<a class="text-red pull-right" href="javascript:void(0)"><i class="fa fa-trash-o"></i></a>
								</label>
							</div>
							<!-- /.form-group -->
						</form>
					</div>
					<!-- /.tab-pane -->
				</div>
			</aside>
			<!-- /.control-sidebar -->
			<!-- Add the sidebar's background. This div must be placed
																immediately after the control sidebar -->
			<div class="control-sidebar-bg"></div>
		</div>
		<!-- ./wrapper -->
		<!-- jQuery 3 -->
		<script src="{{ asset("admin/bower_components/jquery/dist/jquery.min.js") }}"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="{{ asset("admin/bower_components/bootstrap/dist/js/bootstrap.min.js") }}"></script>
		<!-- PACE -->
		<script src="{{ asset("admin/bower_components/PACE/pace.min.js") }}"></script>
		<!-- SlimScroll -->
		<script src="{{ asset("admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js") }}"></script>
		<!-- FastClick -->
		<script src="{{ asset("admin/bower_components/fastclick/lib/fastclick.js") }}"></script>
		<script src="{{ asset("admin/bower_components/select2/dist/js/select2.min.js") }}"></script>

		<!-- AdminLTE App -->
		<script src="{{ asset("admin/dist/js/adminlte.min.js") }}"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="{{ asset("admin/dist/js/demo.js") }}"></script>
		<link href="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css" rel="stylesheet">
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>

		@yield("script")
		<!-- page script -->
		<script type="text/javascript">
			// To make Pace works on Ajax calls
			$(document).ajaxStart(function() {
				Pace.restart()
			})
			$('.ajax').click(function() {
				$.ajax({
					url: '#',
					success: function(result) {
						$('.ajax-content').html('<hr>Ajax Request Completed !')
					}
				})
			})
			$(function() {
				// run select2
				if ($(".js-select2-keyword").length > 0) {
					$(".js-select2-keyword").select2({
						placeholder: 'Chọn keyword',
						maximumSelectionLength: 3
					});
				}

				// preview  hình ảnh
				$(".js-upload").change(function() {
					let $this = $(this);
					if (this.files && this.files[0]) {
						var reader = new FileReader();
						reader.onload = function(e) {
							$this.parents('.block-images').find('img').attr('src', e.target.result);
						};
						reader.readAsDataURL(this.files[0]);
					}
				});
				var temp = "ădwa"
				$(".js-preview-transaction").click(function(event) {
					event.preventDefault();
					let $this = $(this);
					let URL = $this.attr('href');
					let ID = $this.attr('data-id');
					temp = ID
					$("#idTransaction").html("#" + ID);
					$.ajax({
						url: URL
					}).done(function(results) {
						$("#modal-preview-transaction .content").html(results.html)
						$("#modal-preview-transaction").modal({
							show: true
						})
					});
				});
				/* $(".print").click(function(event) {
				    

				    event.preventDefault();
				    let URL   = `http://127.0.0.1:8000/api-admin/transaction/get-bill/${temp}`;
				    $.ajax({
				    type:"GET",
				    cache:false,
				    url: URL,   
				    success: function (html) {
				        console.log(html)
				    }
				});
				}); */
				$('body').on("click", '.js-delete-order-item', function(event) {
					event.preventDefault();
					let URL = $(this).attr('href');
					let $this = $(this);
					$.ajax({
						url: URL
					}).done(function(results) {
						if (results.code == 200) {
							$this.parents("tr").remove();
						}
					});
				})

				$(".js-delete-confirm").click(function(event) {
					event.preventDefault();
					let URL = $(this).attr('href');
					$.confirm({
						title: 'Bạn có muốn xoá dữ liệu không?',
						content: 'Dữ liệu xoá đi không thể khôi phục',
						type: 'red',
						buttons: {
							ok: {
								text: "ok!",
								btnClass: 'btn-primary',
								keys: ['enter'],
								action: function() {
									window.location.href = URL;
								}
							},
							cancel: function() {

							}
						}
					});
				})
			})
		</script>
	</body>

</html>
