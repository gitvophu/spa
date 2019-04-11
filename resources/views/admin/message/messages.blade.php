@extends('admin.layout.master')
@section('content')
<div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Message</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    DataTables Advanced Tables
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Người gửi</th>
                                                    <th>Số điện thoại</th>
                                                    <th>Email</th>
                                                    <th>Nội dung</th>
                                                    <th>Xóa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($message as $mess)
                                                <tr class="odd gradeX">
                                                    <td>{{$mess->id}}</td>
                                                    <td>{{$mess->name}}</td>
                                                    <td>{{$mess->phone}}</td>
                                                    <td>{{$mess->email}}</td>
                                                    <td>{{$mess->message}}</td>
                                                    <td style="text-align: center;"><a href="{{route('delete-message', ['id'=>$mess->id])}}" onclick="return confirm('Bạn có chắc muốn xoá tin nhắn ?')"><i class="fa fa-trash-o fa-fw"></i></a></td>
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
@endsection