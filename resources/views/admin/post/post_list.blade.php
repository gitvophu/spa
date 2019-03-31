@extends('admin.layout.master')
@section('content')

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tables</h1>
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
                                        <th>Tiêu đề</th>
                                        <th>Hình ảnh</th>
                                        <th>Tóm tắt</th>
                                        <th>Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($list_post as $post)
                                        
                                    <tr class="gradeU">
                                    <td width='5%'>{{$loop->index+1}}</td>
                                    <td width='30%'>{{$post->title}}</td>
                                        <td width='30%'>
                                            <img src="{{asset('/assets/img/full-width/' . $post->image)}}" alt=""
                                            class="img-responsive">
                                        </td>
                                        <td width='20%' class="center" >{{$post->getExcerpt()}}</td>
                                        <td class="center">
                                            <a href="#">Xóa</a>
                                            <a href="#">Sửa</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                        <div class="well">
                            <h4>DataTables Usage Information</h4>
                            <p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are
                                using a specialized version of DataTables built for Bootstrap 3. We have also customized
                                the table headings to use Font Awesome icons in place of images. For complete
                                documentation on DataTables, visit their website at <a target="_blank"
                                    href="https://datatables.net/">https://datatables.net/</a>.</p>
                            <a class="btn btn-default btn-lg btn-block" target="_blank"
                                href="https://datatables.net/">View DataTables Documentation</a>
                        </div>
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