@extends('admin.layout.master')
@section('content')
<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Product</h1>
                        </div>
                        {{-- successful message --}}
            <?php $message = Session::get('message'); ?>
            @if( isset($message) )
                <div class="alert alert-success">{!! $message !!}</div>
            @endif
            @if($errors->any() )
                @foreach($errors->all() as $err)
                    <div class="alert alert-danger">{!! $err !!}</div>
                @endforeach
            @endif
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                       <form action="{{route('update-product')}}"  enctype="multipart/form-data" method="POST" role="form">
                                       
                                            <legend>Sửa Sản Phẩm</legend>
                                        
                                            <div class="form-group">
                                                <label for="">Tên Sản phẩm</label>
                                                <input type="text" class="form-control" id="nameproduct" name="nameproduct" placeholder="Nhập tên sản phẩm">
                                            </div>
                                        
                                             <div class="form-group">
                                                <label for="">Giá Sản phẩm</label>
                                                <input type="text" class="form-control" id="priceproduct" name="priceproduct" placeholder="Nhập giá sản phẩm">
                                            </div>
                                        
                                            
                                            <div class="form-group">
                                                <label for="">Hình ảnh </label>
                                                <input type="file" class="form-control" id="imageproduct" name="imageproduct">
                                            </div>

                                            <div class="form-group">
                                                <label for="">Mô tả sản phẩm</label>
                                                <input type="text" class="form-control" id="desproduct" name="desproduct" placeholder="Nhập mô tả sản phẩm">
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