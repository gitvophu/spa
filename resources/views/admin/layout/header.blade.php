
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        
        <meta name="author" content="">
        <link rel="shortcut icon" href="{{asset('')}}assets/img/favicon.png" type="image/x-icon" />
        <title> Admin - Spa</title>

        <!-- Bootstrap Core CSS -->
        <link href="{{url('/assets/admin/css/bootstrap.min.css')}}" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="{{url('/assets/admin/css/metisMenu.min.css')}}" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="{{url('/assets/admin/css/dataTables/dataTables.bootstrap.css')}}" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="{{url('/assets/admin/css/dataTables/dataTables.responsive.css')}}" rel="stylesheet">

        <!-- Timeline CSS -->
        <link href="{{url('/assets/admin/css/timeline.css')}}" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="{{url('/assets/admin/css/startmin.css')}}" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="{{url('/assets/admin/css/morris.css')}}" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="{{url('/assets/admin/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        <style>
            .page-header{
                margin: 75px 0 20px !important;
            }
        </style>
    </head>
    <body>

        <div id="wrapper">
        <div id="base-url" data-content="{{url('')}}"></div>
            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="{{route('admin-index')}}">Trang admin</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-nav navbar-left navbar-top-links">
                <li><a href="{{route('/')}}"><i class="fa fa-home fa-fw"></i> Trang chủ</a></li>
                </ul>

                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown">
                        @if(Auth::check())
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-user fa-fw"></i> {{Session::get('name')}} <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="{{route('change-password', ['id' => session()->get('id')])}}"><i class="fa fa-user fa-fw"></i> Change password</a>
                                </li>
                                <li><a href="{{route('logout')}}"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                                </li>
                            </ul>
                        @endif
                    </li>
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            {{--<li class="sidebar-search">--}}
                                {{--<div class="input-group custom-search-form">--}}
                                    {{--<input type="text" class="form-control" placeholder="Search...">--}}
                                    {{--<span class="input-group-btn">--}}
                                        {{--<button class="btn btn-primary" type="button">--}}
                                            {{--<i class="fa fa-search"></i>--}}
                                        {{--</button>--}}
                                    {{--</span>--}}
                                {{--</div>--}}
                                {{--<!-- /input-group -->--}}
                            {{--</li>--}}
                            <li>
                                <a href="{{route('admin-index')}}" class="active"><i class="fa fa-dashboard fa-fw"></i> Thống kê</a>
                            </li>
                            <li>
                                <a href="{{route('list-comment')}}"><i class="fa fa-comments fa-fw"></i> Bình luận </a>
                                <!-- <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Create </a>
                                    </li>
                                    <li>
                                        <a href="#">Morris.js Charts</a>
                                    </li>
                                </ul> -->
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="{{route('list-message')}}"><i class="fa fa-edit fa-fw"></i>Lời nhắn</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-table fa-fw"></i> Bài viết<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{route('create-post')}}">Tạo bài viết</a>
                                    </li>
                                    <li>
                                        <a href="{{route('list-post')}}">Danh sách bài viết</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i> Banners<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{route('create-banner')}}">Tạo banner</a>
                                    </li>
                                    <li>
                                        <a href="{{route('list-banner')}}">Danh sách banner</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-product-hunt fa-fw"></i> Sản phẩm<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{route('create')}}">Tạo sản phẩm</a>
                                    </li>
                                    <li>
                                        <a href="{{route('list-product')}}">Danh sách sản phẩm</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="{{route('metadata.edit')}}"><i class="fa fa-wrench fa-fw"></i>Cấu hình</a>
                                
                                <!-- /.nav-second-level -->
                            </li>
                            {{--<li>--}}
                                {{--<a href="#"><i class="fa fa-user-o fa-fw"></i> Users<span class="fa arrow"></span></a>--}}
                                {{--<ul class="nav nav-second-level">--}}
                                    {{--<li>--}}
                                        {{--<a href="#">Create user</a>--}}
                                    {{--</li>--}}
                                    {{--<li>--}}
                                        {{--<a href="#">List user</a>--}}
                                    {{--</li>--}}
                                {{--</ul>--}}
                                {{--<!-- /.nav-second-level -->--}}
                            {{--</li>--}}
                        </ul>
                    </div>
                </div>
            </nav>