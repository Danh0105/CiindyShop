@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý danh mục sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.discount.code.index') }}"> Mã tài khoản</a></li>
            <li class="active">Danh sách</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.discount.code.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 70px">Thứ tự</th>
                                    <th>Mã </th>
                                    <th>Số lượt sử dụng</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Phần trăm giảm giá</th>
                                    <th>Hành động</th>
                                </tr>
                                @if ($discountCodes)
                                    @foreach($discountCodes as $key => $discount)
                                        <tr>
                                            <td>{{ $discount->id }}</td>
                                            <td>{{ $discount->d_code }}</td>
                                            <td>{{ $discount->d_number_code }}</td>
                                            <td>{{ $discount->d_date_start }}</td>
                                            <td>{{ $discount->d_date_end }}</td>
                                            <td>{{ $discount->d_percentage }} %</td>
                                            <td>
                                                <a href="{{ route('admin.discount.code.update', $discount->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Chỉnh sửa</a>
                                                <a href="{{  route('admin.discount.code.delete', $discount->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $discountCodes->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
