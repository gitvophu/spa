@extends('client.layout.master')
@section('script')
    <script src="{{asset('assets/js/pages/product_detail.js')}}"></script>
@endsection

@section('content')

    <!-- Start: Breadcrumb Area
    ============================= -->

    <section id="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Sản Phẩm</h2>
                </div>
            </div>
        </div>
    </section>

    <!-- End: Breadcrumb Area
    ============================= -->
    <!-- Start: Product Full Width
    ============================= -->
    <section id="blog-content" class="full-width section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-12 mb-5 mb-lg-0">
                    <div class="row full-width" id="grid">
                        @foreach($products as $product)
                            <div class="col-xl-4 col-lg-3 col-md-6 col-sm-12">
                                <article class="blog-post">
                                    <div class="post-thumb">
                                        <img src="{{url('/') . "/uploads/product/" . $product->image }}" class="img-responsive" alt="">
                                    </div>

                                    <div class="post-content">
                                        <h4 class="post-title"><a href="{{route('product-detail', ['id' => $product->id])}}">{{$product->name}}</a></h4>
                                        <p class="content">
                                            {{ str_limit($product->description, 100, '[...]')}}
                                        </p>
                                        <a href="{{route('product-detail', ['id' => $product->id])}}" class="read-more">Read More <i class="fas fa-angle-double-right"></i></a>
                                    </div>
                                </article>
                            </div>
                        @endforeach
                    </div>
                    {{$products->links('vendor.pagination.bootstrap-4')}}

                </div>
                <div class="col-lg-3 col-md-12">
                    <section class="sidebar">
                        <aside class="widget widget-search">
                            <h5 class="widget-title"><img src="assets/img/section-icon.png" alt="">Search</h5>
                            <form class="search-form" action="#">
                                <span class="input input--hantus">
                                    <input class="input__field input__field--hantus" type="text" id="input-01" />
                                    <label class="input__label input__label--hantus" for="input-01">
                                        <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                        <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                        </svg>
                                        <span class="input__label-content input__label-content--hantus">Search product</span>
                                    </label>
                                </span>
                                <input type="button" class="search-btn" value="Go">
                            </form>
                        </aside>

                        <aside class="widget widdget-recent-post">
                            <h5 class="widget-title"><img src="assets/img/section-icon.png" alt="">Recent News</h5>
                            @foreach($products as $product)
                                <div class="recent-post">
                                    <a href="{{route('product-detail', ['id' => $product->id])}}"><h6>{{$product->name}}</h6></a>
                                </div>
                            @endforeach
                        </aside>
                    </section>
                </div>
            </div>

        </div>
    </section>

    <!-- End: Product Full Width
    ============================= -->

@endsection