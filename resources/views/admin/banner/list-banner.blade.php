@extends('admin.layout.master')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Danh sách Banner</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    {{--<div class="panel-heading">--}}
                        {{--DataTables Advanced Tables--}}
                    {{--</div>--}}
            {{--<!-- /.panel-heading -->--}}
                    <div class="panel-body">
                        <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tiêu đề</th>
                                    <th>Hình ảnh</th>
                                    <th>Nội dung</th>
                                    <th>Xóa</th>
                                    <th>Sửa</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($listBanner as $itemBanner)
                                <tr class="">
                                    <td style="text-align: center;">{{ $loop->index + 1 }}</td>
                                    <td style="text-align: center;">{{ $itemBanner->title }}</td>
                                    <td><img src="{{url('/') . "/uploads/banner/" . $itemBanner->image }}" class="img-responsive"></td>
                                    <td>{{ $itemBanner->description }}</td>
                                    <td style="text-align: center;"><a href="{{route('delete-banner', ['id'=>$itemBanner->id])}}" onclick="return confirm('Bạn có chắc muốn xoá banner ?')"><i class="fa fa-trash-o fa-fw"></i></a></td>
                                    <td style="text-align: center;"><a href="{{route('edit-banner', ['id'=>$itemBanner->id])}}"><i class="fa fa-pencil fa-fw"></i></a></td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                </div>
                <!-- /.table-responsive -->

            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
        </div>
    </div>
</div>
@endsection