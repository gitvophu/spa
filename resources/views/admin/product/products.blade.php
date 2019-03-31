
@extends('admin.layout.master')
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Banners</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        {{--<div class="panel-heading">--}}
                        {{--DataTables Advanced Tables--}}
                        {{--</div>--}}
                        {{--<!-- /.panel-heading -->--}}
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Giá</th>
                                        <th>Hình ảnh</th>
                                        <th>Mô tả</th>
                                        <th>Thao tác</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($products as $product)
                                        <tr class="gradeA">
                                            <td>{{$product['id']}}</td>
                                            <td>{{$product['name']}}</td>
                                            <td>{{$product['price']}}</td>

                                            <td><img src="{{asset('/assets/img/full-width/' . $product['image'])}}" alt=""
                                                     class="img-responsive"></td>
                                            <td class="center">{{$product['description']}}</td>
                                            <td><button><a href="{{route('delete-product',['id'=>$product['id']])}}">Xóa</a></button></td>
                                            <td><button><a href="{{route('update-product',['id'=>$product['id']])}}">Sửa</a></button></td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
    </div>
@endsection