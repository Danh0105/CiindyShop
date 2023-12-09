<form role="form" action="" method="POST" enctype="multipart/form-data">
	@csrf
	<div class="col-sm-8">
		<div class="col-sm-12">
			<div class="form-group {{ $errors->first("d_code") ? "has-error" : "" }}">
				<label for="name">Mã Khuyến mãi <span class="text-danger">(*)</span></label>
				<input class="form-control" name="d_code" type="text"
					value="{{ old("d_code", isset($discount) ? $discount->d_code : "") }}" placeholder="Mã khuyến mãi ...">
				@if ($errors->first("d_code"))
					<span class="text-danger">{{ $errors->first("d_code") }}</span>
				@endif
			</div>
		</div>
		<div class="col-sm-12">
			<div class="form-group {{ $errors->first("d_number_code") ? "has-error" : "" }}">
				<label for="name">Số lượt sử dụng <span class="text-danger">(*)</span></label>
				<input class="form-control" name="d_number_code" type="number"
					value="{{ old("d_number_code", isset($discount) ? $discount->d_number_code : "") }}"
					placeholder="Số lượt sử dụng...">
				@if ($errors->first("d_number_code"))
					<span class="text-danger">{{ $errors->first("d_number_code") }}</span>
				@endif
			</div>
		</div>
		<div class="col-sm-12">
			<div class="form-group {{ $errors->first("d_percentage") ? "has-error" : "" }}">
				<label for="name">Phần trăm giảm giá <span class="text-danger">(*)</span></label>
				<input class="form-control" name="d_percentage" type="number"
					value="{{ old("d_number_code", isset($discount) ? $discount->d_percentage : "") }}"
					placeholder="Phần trăm giảm giá...">
				@if ($errors->first("d_percentage"))
					<span class="text-danger">{{ $errors->first("d_percentage") }}</span>
				@endif
			</div>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="col-sm-12">
			<div class="form-group {{ $errors->first("d_date_start") ? "has-error" : "" }}">
				<label for="name">Ngày bắt đầu</label>
				<input class="form-control" name="d_date_start" type="datetime-local"
					value="{{ old("d_date_start", isset($discount) ? date("Y-m-d\TH:i", strtotime($discount->d_date_start)) : "") }}">
				@if ($errors->first("d_date_start"))
					<span class="text-danger">{{ $errors->first("d_date_start") }}</span>
				@endif
			</div>
		</div>
		<div class="col-sm-12">
			<div class="form-group {{ $errors->first("d_date_end") ? "has-error" : "" }}">
				<label for="name">Ngày kết thúc </label>
				<input class="form-control" name="d_date_end" type="datetime-local"
					value="{{ old("d_date_end", isset($discount) ? date("Y-m-d\TH:i", strtotime($discount->d_date_end)) : "") }}">
				@if ($errors->first("d_date_end"))
					<span class="text-danger">{{ $errors->first("d_date_end") }}</span>
				@endif
			</div>
		</div>
	</div>
	<div class="col-sm-12">
		<div class="box-footer text-center">
			<a class="btn btn-danger" href="{{ route("admin.discount.code.index") }}">
				Đóng <i class="fa fa-close"></i></a>
			<button class="btn btn-success" name="submit" type="submit"
				value="{{ isset($discount) ? "update" : "create" }}">Lưu <i class="fa fa-save"></i></button>
		</div>
	</div>
</form>
