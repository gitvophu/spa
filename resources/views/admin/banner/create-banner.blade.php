@extends('admin.layout.master')
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Banner</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
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
            @if(session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Tạo banner
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="{{route('store-banner')}}" enctype="multipart/form-data" method="post">
                                        {{csrf_field()}}
                                        <div class="form-group">
                                            <label>Tiêu đề</label>
                                            <input type="text" id="title" name="title">
                                        </div>
                                        <div class="form-group">
                                            <label>Hình ảnh</label>
                                            <input type="file" id="image" name="image">
                                        </div>
                                        <div class="form-group">
                                            <label>Nội dung</label>
                                            <textarea id="description" name="description" class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-default">Tạo Banner</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>

@endsection