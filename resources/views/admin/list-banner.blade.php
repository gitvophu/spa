@extends('admin.layout.master')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Banners</h1>
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
                                    <th>Image</th>
                                    <th>Description</th>
                                    <th>Delete</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach($listBanner as $itemBanner )
                                <tr class="">
                                    <td style="text-align: center;">{{ $itemBanner->id }}</td>
                                    <td><img src="{{url('/') . "/" . $itemBanner->image }}" width="100px" height="100px"></td>
                                    <td>{{ $itemBanner->description }}</td>
                                    <td style="text-align: center;"><i class="fa fa-trash-o fa-fw"></i></td>
                                    <td style="text-align: center;"><a href="{{route('edit-banner')}}"><i class="fa fa-pencil fa-fw"></i></a></td>
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