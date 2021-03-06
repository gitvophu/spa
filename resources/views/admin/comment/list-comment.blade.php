@extends('admin.layout.master')
@section('script')
<script src="{{asset('assets/js/pages/comment.js')}}"></script>
@endsection
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Bình Luận</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Bảng Bình Luận
                    </div>
                    <!-- /.panel-heading -->
                    <form action="">
                        {{ csrf_field() }}
                    </form>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tên Khách Hàng</th>
                                        <th style="min-width: 100px;">Thời gian</th>
                                        <th>Mô Tả</th>
                                        <th>Bình Luận</th>
                                        <th>Tên Bài Viết</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Trạng Thái</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($list_comment as $comment)
                                    <tr class="odd gradeX">
                                        <td>{{$loop->index+1}}</td>
                                        <td>{{$comment->name}}</td>
                                        <td>{{$comment->created_at}}</td>
                                        <td>{{$comment->description}}</td>
                                        <td class="center">
                                            @if($comment->type == 1)
                                                Bài Viết
                                            @else
                                                Sản Phẩm
                                            @endif</td>
                                        <td class="center">{{$comment->title}}</td>
                                        <td class="center">{{$comment->product_name}}</td>
                                        <td class="center">
                                            @if($comment->status == 1)
                                            <span style="text-align: center">(Hiện)</span>
                                            <button data-content="{{$comment->id}}" type="submit" class="btnToggleStatus btn btn-danger">
                                                Ẩn
                                            </button>
                                            @else
                                                <span>(Ẩn)</span>
                                            <button type="submit" data-content="{{$comment->id}}" class="btnToggleStatus btn btn-success">
                                                Hiện
                                            </button>
                                            @endif

                                            
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
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
<!-- /#page-wrapper -->
@endsection