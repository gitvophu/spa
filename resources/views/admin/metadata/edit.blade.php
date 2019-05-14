@extends('admin.layout.master')
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Cập nhật Site name và App ID </h1>
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
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                        Site name va App ID
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="{{route('metadata.update')}}" enctype="multipart/form-data" method="post">
                                        {{csrf_field()}}
                                        <div class="form-group">
                                            <label>Site name</label>
                                            <input class="form-control" type="text" id="site_name" name="site_name" value="{{$site_name}}">
                                        </div>
                                        <div class="form-group">
                                            <label>App ID</label>
                                            <input type="text" class="form-control" id="app_id" name="app_id" value="{{$app_id}}">
                                            
                                        </div>
                                        
                                        <button type="submit" class="btn btn-default">Lưu</button>

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