
@extends('admin.layout.master')
@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm</h1>
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
                                    <th>Xóa</th>
                                    <th>Sửa</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($products as $product)
                                <tr class="">
                                    <td style="text-align: center;">{{$product->id}}</td>
                                    <td style="text-align: center;">{{$product->name}}</td>
                                    <td style="text-align: center;">{{$product->price}}</td>
                                    <td><img src="{{url('/') . "/uploads/product/" . $product->image }}" class="img-responsive"></td>
                                    <td class="center">{{$product['description']}}</td>
                                    <td class="center">{{$product['seo-title']}}</td>
                                    <td class="center">{{$product['seo-description']}}</td>
                                    <td class="center">{{$product['seo-keyword']}}</td>
                                    <td class="center">{{$product['seo-image']}}</td>
                                    <td style="text-align: center;"><a href="{{route('delete-product',['id'=>$product['id']])}}" onclick="return confirm('Bạn có chắc muốn xoá sản phẩm ?')"><i class="fa fa-trash-o fa-fw"></i></a></td>
                                    <td style="text-align: center;"><a href="{{route('update',['id'=>$product['id']])}}"><i class="fa fa-pencil fa-fw"></i></a></td>
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