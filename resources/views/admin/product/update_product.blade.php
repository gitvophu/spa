@extends('admin.layout.master')
@section('content')
<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Product</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    {{-- successful message --}}
                    <?php $message = Session::get('message'); ?>
                    @if( isset($message) )
                        <div class="alert alert-success">{!! $message !!}</div>
                    @endif
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Lỗi!</strong><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                       <form action="{{route('update-product')}}"  enctype="multipart/form-data" method="POST" role="form">
                                       {{csrf_field()}}
                                            <legend>Sửa Sản Phẩm</legend>
                                            <input type="hidden" class="form-control" id="idproduct" value="{{$product['id']}}" name="idproduct" >
                                            <div class="form-group">
                                                <label for="">Tên Sản phẩm</label>
                                                <input type="text" class="form-control" id="nameproduct" value="{{$product->name}}" name="nameproduct" >
                                            </div>
                                        
                                             <div class="form-group">
                                                <label for="">Giá Sản phẩm</label>
                                                <input type="text" class="form-control" id="priceproduct" value="{{$product->price}}" name="priceproduct" >
                                            </div>
                                        
                                            
                                            <div class="form-group">
                                                <label for="">Hình ảnh </label>
                                                <input type="file" class="form-control" id="imageproduct" name="imageproduct">
                                                <img src="{{url('/') . "/uploads/product/" . $product->image }}" class="img-responsive">
                                            </div>

                                            <div class="form-group">
                                                <label for="">Mô tả sản phẩm</label>
                                                <input type="text" value="{{$product->description}}" class="form-control" id="desproduct" name="desproduct" >
                                            </div>

                                            <legend>Sửa Thông tin SEO</legend>

                                            <div class="form-group">
                                                <label for="">Seo title</label>
                                                <input type="text" value="{{$product->seotitle}}" class="form-control" id="title" name="title" >
                                            </div>

                                            <div class="form-group">
                                                <label for="">Seo description</label>
                                                <input type="text" value="{{$product->seodescription}}" class="form-control" id="des" name="des" >
                                            </div>

                                            <div class="form-group">
                                                <label for="">Seo keyword</label>
                                                <input type="text" value="{{$product->seokeyword}}" class="form-control" id="key" name="key" >
                                            </div>
                                            <button type="submit" class="btn btn-primary" id="btnUpdate">Cập Nhật</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
@endsection