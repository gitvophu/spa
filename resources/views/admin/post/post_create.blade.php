@extends('admin.layout.master')
@section('script')

@endsection
@section('content')
<script src="{{asset('assets/js/ckeditor/ckeditor.js')}}"></script>
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Forms</h1>
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
                                <form role="form" method="POST" action="">
                                        <div class="form-group ">
                                            <label>Tiêu đề</label>
                                            <input class="form-control" name="title">
                                            {{-- <p class="help-block">Example block-level help text here.</p> --}}
                                        </div>
                                       
                                       <div class="clearfix"></div>
                                        <div class="form-group ">
                                            <label>File input</label>
                                            <input type="file" name="image">
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="form-group">
                                            <label>Nội dung</label>
                                            <textarea name="content" id="ckeditor1" class="form-control" rows="5"></textarea>
                                            <script>
                                                CKEDITOR.replace('ckeditor1')
                                            </script>
                                        </div>
                                       
                                        <button id="btnSave" type="submit" class="btn btn-primary">Lưu</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                               
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