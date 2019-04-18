@extends('admin.layout.master')

@section('content')
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Thay đổi mật khẩu</h1>
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
            @if(\Session::has('alert-success'))
                <div class="alert alert-success">
                    <div>{{Session::get('alert-success')}}</div>
                </div>
            @endif
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="{{route('change-password_')}}" enctype="multipart/form-data" method="post">
                                        {{csrf_field()}}
                                        <input type="hidden" name="id" id="id" value="{{$user['id']}}">
                                        
                                        <div class="form-group">
                                           <label for="">Mật khẩu</label>
                                           <input type="text" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu mới">
                                        </div>
                                        <button type="submit" class="btn btn-default">Thay đổi mật khẩu</button>

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