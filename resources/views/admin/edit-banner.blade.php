@extends('admin.layout.master')
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Edit Banner</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" action="{{route('update-banner')}}" enctype="multipart/form-data" method="post">
                                        {{csrf_field()}}
                                        @foreach($listBanner as $itemBanner)
                                        <div class="form-group">
                                            <label>File input</label>
                                            <input type="file">
                                            <br>
                                            <div>
                                                <img src="{{url('/') . "/assets/img/sliders/" . $itemBanner->image }}" width="100px" height="100px">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Description</label>
                                            <textarea class="form-control" rows="3">{{ $itemBanner->description }}</textarea>
                                        </div>
                                        @endforeach
                                        <button type="submit" class="btn btn-default">Update Banner</button>

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