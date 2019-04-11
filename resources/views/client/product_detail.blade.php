@extends('client.layout.master')
@section('script')
<script src="{{asset('assets/js/pages/product_detail.js')}}"></script>
@endsection
@section('link')
<link rel="stylesheet" href="{{asset('')}}assets/css/font-awesome.min.css">
@endsection
@section('content')
    

    <!-- End: Navigation
    ============================= -->

    <!-- Start: Breadcrumb Area
    ============================= -->

    <section id="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Sản Phẩm</h2>
                    <ul class="breadcrumb-nav list-inline">
                        <li><a href="{{route('/')}}">Trang chủ</a></li>
                        <li>Sản phẩm</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Breadcrumb Area
    ============================= -->


    <!-- Start: Blog right Sidebar
    ============================= -->
        <section id="blog-content" class="section-padding single-post">
        <div class="container">

            <div class="row">
                <!-- Blog Content -->
                <div class="col-lg-8 col-md-12 mb-5 mb-lg-0">
                    <article class="blog-post">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 mb-5 mb-lg-0">
                                        <img src="{{url('assets/img/product/' . $product_->image)}}" alt="">
                            </div>
                            <div class="col-lg-6 col-md-6 mb-5 mb-lg-0">
                                <div>
                                    <h4><b>{{$product_->name}}</b></h4>
                                    <hr>
                                    <h4 style="color: #EC5598; font-size: 3em;">{{$product_->price}} <sup><u>đ</u></sup></h4>
                                </div>
                            </div>
                        </div>
                        <div class="post-content">
                        <div class="post-header">
                            
                        </div>
                            <h5 class="pb-3 pt-4">{{$product_->description}}</h5>
                        </div>
                        <hr>

                        <!-- Post Comment Area -->
                        <div class="post-comments-area">
                            <h4 class="pb-2">({{$total_cmt}}) Bình Luận</h4>
                            <ul class="media-list">
                                @foreach($comments as $comment)
                                <li class="media">
                                    <div class="media-left">
                                        <img alt="" src="{{url('assets/img/user.png')}}">
                                    </div>
                                    <div class="media-body">
                                        <h5 class="comment-author"><span>{{$comment['name']}}</span></h5>
                                        <p class="comment">{{$comment['description']}}. </p>
                                        <span class="comment-date">{{$comment['created_at']}}</span>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- Post New Comment Area -->
                        <div class="post-new-comment">
                            <h4>Hãy để lại nhận xét của bạn về sản phẩm của chúng tôi</h4>
                            <p>Email của bạn sẽ không được hiển thị công khai. Các trường bắt buộc được đánh dấu *</p>
                            <form action="#">
                                {{ csrf_field() }}
                                <input type="hidden" name="asset" id="asset" value="{{asset('')}}">
                                <input type="hidden" name="product_id" id="product_id" value="{{$product_->id}}">
                                <input type="hidden" name="type" id="type" value="2">
                                <div class="row">
                                    <div class="col-sm-12 form-group pt-4">
                                        <div class="form-group">
                                          <label for="">Nội dung</label>
                                          <textarea class="form-control" name="message" id="message" rows="3"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-6 form-group">
                                       <div class="form-group">
                                         <label for="">Tên</label>
                                         <input type="text"
                                           class="form-control" name="name" id="name" aria-describedby="helpId" placeholder="">                                        
                                       </div>
                                    </div>
                                </div>
                                <button id="btnSubmit_Product" type="submit" class="boxed-btn">Gửi đi</button>
                            </form>
                        </div>
                    </article>
                </div>

                <!-- Sidebar -->
                <div class="col-lg-4 col-md-12">
                    <section class="sidebar">
                        <aside class="widget widdget-recent-post">
                            <h5 class="widget-title">Sản phẩm mới</h5>
                            <div class="recent-post">
                                <div class="row">
                                    <div class="col-md-12">
                                            @foreach($product_news as $key)
                                                <div class="pricing-box text-center">  
                                                    <h3>{{$key['name']}}</h3>
                                                    <hr>
                                                    <div class="product-img">
                                                        <img src="{{url('assets/img/product/' . $key['image'])}}" alt="">
                                                    </div>
                                                    <a href="{{route('product-detail', ['id' => $key['id']])}}" class="boxed-btn">Detail</a>
                                                
                                                </div>
                                            @endforeach
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </section>
                </div>
            </div>

        </div>
    </section>

    <!-- End: Blog right Sidebar
    ============================= -->

    <!-- Start: Footer Sidebar
    ============================= -->
    @endsection