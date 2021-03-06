@extends('admin.layout.master')
@section('script')

@endsection
@section('content')
<script src="{{asset('assets/js/ckeditor/ckeditor.js')}}"></script>
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">TẠO BÀI VIẾT</h1>
                    @if (session()->has('success'))
                        <p class="alert alert-success"><strong>{{session('success')}}</strong></p>
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
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            {{-- Form tạo bài viết --}}
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <form role="form" method="POST" action="{{route('store-post')}}" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                        <div class="form-group ">
                                            <label>Tiêu đề</label>
                                            <input class="form-control" name="title" value="<?php if (session()->has('title')) {
                                                echo session('title');
                                            }?>">
                                            
                                            {{-- <p class="help-block">Example block-level help text here.</p> --}}
                                        </div>

                                        <div class="form-group">
                                            <label>Nội dung</label>
                                            <textarea name="content" id="ckeditor1" class="form-control" rows="5">
                                                @if (session()->has('content'))
                                                    {{session('content')}}
                                                @endif
                                            </textarea>
                                            <script>
                                                CKEDITOR.replace('ckeditor1')
                                            </script>
                                        </div>
                                    <div class="form-group">
                                        <label for="">Slug bài viết</label>
                                        <input type="text" class="form-control" id="slug" name="slug" placeholder="Slug">
                                        <small id="helpId" class="text-muted">Nếu bỏ trống thì hệ thống sẽ dùng tên bài viết làm slug</small>
                                    </div>
                                    <div>
                                        <h2>Thông tin SEO</h2>
                                    </div>
                                        <div class="form-group">
                                            <label for="">SEO Title</label>
                                            <input type="text" class="form-control" id="seoTitle" name="seoTitle">
                                        </div>
                                        <div class="form-group">
                                            <label for="">SEO Desciption</label>
                                            <input type="text" class="form-control" id="seoDescription" name="seoDescription">
                                        </div>
                                        <div class="form-group">
                                            <label for="">SEO Keyword</label>
                                            <input type="text" class="form-control" id="seoKeyword" name="seoKeyword">
                                        </div>
                                        <div class="form-group">
                                            <label for="">SEO Image</label>
                                            <input type="file" name="image">
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