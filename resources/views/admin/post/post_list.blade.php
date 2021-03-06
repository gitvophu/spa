@extends('admin.layout.master')
@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">DANH SÁCH BÀI VIẾT</h1>
                @if (session()->has('success'))
                <p class="alert alert-success"><strong>{{session('success')}}</strong></p>    
                    @endif
                    @if ($errors->any())
                        @foreach ($errors->all() as $err)
                        <p class="alert alert-danger"><strong>{{$err}}</strong></p>    
                        @endforeach
                    @endif
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Bài viết
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Tiêu đề</th>
                                        <th>Hình ảnh</th>
                                        <th>Tóm tắt</th>
                                        <th>Slug</th>
                                        <th>Seo Title</th>
                                        <th>Seo Descripption</th>
                                        <th>Seo Keyword</th>
                                        <th>Xóa</th>
                                        <th>Sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($list_post as $post)
                                   
                                    <tr class="gradeU">
                                        <td width='5%'>{{$loop->index+1}}</td>
                                        <td width='30%'>{{$post->title}}</td>
                                        <td width='30%'>
                                            <img src="{{asset('/uploads/post/'.$post->image)}}" alt="" class="img-responsive">
                                        </td>
                                        <td width='20%' class="center" >{{strip_tags($post->getExcerpt())}}</td>
                                        <td class="center">{{$post['slug']}}</td>
                                        <td class="center">{{$post['seoTitle']}}</td>
                                        <td class="center">{{$post['seoDescription']}}</td>
                                        <td class="center">{{$post['seoKeyword']}}</td>
                                        <td style="text-align: center;"><a href="{{route('delete-post',['id'=>$post->id])}}" onclick="return confirm('Bạn có chắc muốn xoá bài viết ?')"><i class="fa fa-trash-o fa-fw"></i></a></td>
                                        <td style="text-align: center;"><a href="{{route('edit-post',['post_id'=>$post->id])}}"><i class="fa fa-pencil fa-fw"></i></a></td>
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
        <!-- /.row -->
        <!--<div class="row">-->
        <!--<div class="col-lg-6">-->
        <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">-->
        <!--Kitchen Sink-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-heading &ndash;&gt;-->
        <!--<div class="panel-body">-->
        <!--<div class="table-responsive">-->
        <!--<table class="table table-striped table-bordered table-hover">-->
        <!--<thead>-->
        <!--<tr>-->
        <!--<th>#</th>-->
        <!--<th>First Name</th>-->
        <!--<th>Last Name</th>-->
        <!--<th>Username</th>-->
        <!--</tr>-->
        <!--</thead>-->
        <!--<tbody>-->
        <!--<tr>-->
        <!--<td>1</td>-->
        <!--<td>Mark</td>-->
        <!--<td>Otto</td>-->
        <!--<td>@mdo</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>2</td>-->
        <!--<td>Jacob</td>-->
        <!--<td>Thornton</td>-->
        <!--<td>@fat</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>3</td>-->
        <!--<td>Larry</td>-->
        <!--<td>the Bird</td>-->
        <!--<td>@twitter</td>-->
        <!--</tr>-->
        <!--</tbody>-->
        <!--</table>-->
        <!--</div>-->
        <!--&lt;!&ndash; /.table-responsive &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-body &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.col-lg-6 &ndash;&gt;-->
        <!--<div class="col-lg-6">-->
        <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">-->
        <!--Basic Table-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-heading &ndash;&gt;-->
        <!--<div class="panel-body">-->
        <!--<div class="table-responsive">-->
        <!--<table class="table">-->
        <!--<thead>-->
        <!--<tr>-->
        <!--<th>#</th>-->
        <!--<th>First Name</th>-->
        <!--<th>Last Name</th>-->
        <!--<th>Username</th>-->
        <!--</tr>-->
        <!--</thead>-->
        <!--<tbody>-->
        <!--<tr>-->
        <!--<td>1</td>-->
        <!--<td>Mark</td>-->
        <!--<td>Otto</td>-->
        <!--<td>@mdo</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>2</td>-->
        <!--<td>Jacob</td>-->
        <!--<td>Thornton</td>-->
        <!--<td>@fat</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>3</td>-->
        <!--<td>Larry</td>-->
        <!--<td>the Bird</td>-->
        <!--<td>@twitter</td>-->
        <!--</tr>-->
        <!--</tbody>-->
        <!--</table>-->
        <!--</div>-->
        <!--&lt;!&ndash; /.table-responsive &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-body &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.col-lg-6 &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.row &ndash;&gt;-->
        <!--<div class="row">-->
        <!--<div class="col-lg-6">-->
        <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">-->
        <!--Striped Rows-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-heading &ndash;&gt;-->
        <!--<div class="panel-body">-->
        <!--<div class="table-responsive">-->
        <!--<table class="table table-striped">-->
        <!--<thead>-->
        <!--<tr>-->
        <!--<th>#</th>-->
        <!--<th>First Name</th>-->
        <!--<th>Last Name</th>-->
        <!--<th>Username</th>-->
        <!--</tr>-->
        <!--</thead>-->
        <!--<tbody>-->
        <!--<tr>-->
        <!--<td>1</td>-->
        <!--<td>Mark</td>-->
        <!--<td>Otto</td>-->
        <!--<td>@mdo</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>2</td>-->
        <!--<td>Jacob</td>-->
        <!--<td>Thornton</td>-->
        <!--<td>@fat</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>3</td>-->
        <!--<td>Larry</td>-->
        <!--<td>the Bird</td>-->
        <!--<td>@twitter</td>-->
        <!--</tr>-->
        <!--</tbody>-->
        <!--</table>-->
        <!--</div>-->
        <!--&lt;!&ndash; /.table-responsive &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-body &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.col-lg-6 &ndash;&gt;-->
        <!--<div class="col-lg-6">-->
        <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">-->
        <!--Bordered Table-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-heading &ndash;&gt;-->
        <!--<div class="panel-body">-->
        <!--<div class="table-responsive table-bordered">-->
        <!--<table class="table">-->
        <!--<thead>-->
        <!--<tr>-->
        <!--<th>#</th>-->
        <!--<th>First Name</th>-->
        <!--<th>Last Name</th>-->
        <!--<th>Username</th>-->
        <!--</tr>-->
        <!--</thead>-->
        <!--<tbody>-->
        <!--<tr>-->
        <!--<td>1</td>-->
        <!--<td>Mark</td>-->
        <!--<td>Otto</td>-->
        <!--<td>@mdo</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>2</td>-->
        <!--<td>Jacob</td>-->
        <!--<td>Thornton</td>-->
        <!--<td>@fat</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>3</td>-->
        <!--<td>Larry</td>-->
        <!--<td>the Bird</td>-->
        <!--<td>@twitter</td>-->
        <!--</tr>-->
        <!--</tbody>-->
        <!--</table>-->
        <!--</div>-->
        <!--&lt;!&ndash; /.table-responsive &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-body &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.col-lg-6 &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.row &ndash;&gt;-->
        <!--<div class="row">-->
        <!--<div class="col-lg-6">-->
        <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">-->
        <!--Hover Rows-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-heading &ndash;&gt;-->
        <!--<div class="panel-body">-->
        <!--<div class="table-responsive">-->
        <!--<table class="table table-hover">-->
        <!--<thead>-->
        <!--<tr>-->
        <!--<th>#</th>-->
        <!--<th>First Name</th>-->
        <!--<th>Last Name</th>-->
        <!--<th>Username</th>-->
        <!--</tr>-->
        <!--</thead>-->
        <!--<tbody>-->
        <!--<tr>-->
        <!--<td>1</td>-->
        <!--<td>Mark</td>-->
        <!--<td>Otto</td>-->
        <!--<td>@mdo</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>2</td>-->
        <!--<td>Jacob</td>-->
        <!--<td>Thornton</td>-->
        <!--<td>@fat</td>-->
        <!--</tr>-->
        <!--<tr>-->
        <!--<td>3</td>-->
        <!--<td>Larry</td>-->
        <!--<td>the Bird</td>-->
        <!--<td>@twitter</td>-->
        <!--</tr>-->
        <!--</tbody>-->
        <!--</table>-->
        <!--</div>-->
        <!--&lt;!&ndash; /.table-responsive &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-body &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.col-lg-6 &ndash;&gt;-->
        <!--<div class="col-lg-6">-->
        <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">-->
        <!--Context Classes-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-heading &ndash;&gt;-->
        <!--<div class="panel-body">-->
        <!--<div class="table-responsive">-->
        <!--<table class="table">-->
        <!--<thead>-->
        <!--<tr>-->
        <!--<th>#</th>-->
        <!--<th>First Name</th>-->
        <!--<th>Last Name</th>-->
        <!--<th>Username</th>-->
        <!--</tr>-->
        <!--</thead>-->
        <!--<tbody>-->
        <!--<tr class="success">-->
        <!--<td>1</td>-->
        <!--<td>Mark</td>-->
        <!--<td>Otto</td>-->
        <!--<td>@mdo</td>-->
        <!--</tr>-->
        <!--<tr class="info">-->
        <!--<td>2</td>-->
        <!--<td>Jacob</td>-->
        <!--<td>Thornton</td>-->
        <!--<td>@fat</td>-->
        <!--</tr>-->
        <!--<tr class="warning">-->
        <!--<td>3</td>-->
        <!--<td>Larry</td>-->
        <!--<td>the Bird</td>-->
        <!--<td>@twitter</td>-->
        <!--</tr>-->
        <!--<tr class="danger">-->
        <!--<td>4</td>-->
        <!--<td>John</td>-->
        <!--<td>Smith</td>-->
        <!--<td>@jsmith</td>-->
        <!--</tr>-->
        <!--</tbody>-->
        <!--</table>-->
        <!--</div>-->
        <!--&lt;!&ndash; /.table-responsive &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel-body &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.panel &ndash;&gt;-->
        <!--</div>-->
        <!--&lt;!&ndash; /.col-lg-6 &ndash;&gt;-->
        <!--</div>-->
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
@endsection