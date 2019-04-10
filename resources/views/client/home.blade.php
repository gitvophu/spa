@extends('client.layout.master')
@section('script')
    <script src="{{asset('assets/js/pages/product_detail.js')}}"></script>
@endsection
@section('content')

<!-- End SlideShow -->
<section id="pricing" class="section-padding">
   <!-- Start: Header Slider
    ============================= -->
    <header>
        <div class="row">
            <div class="col-md-12">
                <div class="header-slider">
                    @foreach($bannerHome as $itemBanner)
                        <div class="header-single-slider">
                            <figure>
                                <img src="{{url('/') . "/uploads/banner/" . $itemBanner->image }}" alt="">
                                <figcaption>
                                    <div class="content">
                                        <div class="container inner-content text-center">
                                            <h3>Welcome To Hantus Spa</h3>
                                            <h1>{{ $itemBanner->title }}</h1>
                                            <p>{{ $itemBanner->description }}</p>
                                            {{--<a href="#" class="boxed-btn">Make an Appoinment</a>--}}
                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </header>

    <!-- End: Header Slider
    ============================= -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-12 text-center">
                <div class="section-title">
                    <h2>Product</h2>
                    <hr>
                    <p>You can select a package from the list below to save more</p>
                </div>
            </div>
        </div>
        <div class="row">
        @foreach($products as $product)
            <!-- product 1-->
            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                <div class="pricing-box text-center"
                    style="background: url(assets/img/pricing/pricing01.jpg) no-repeat center / cover;">  
                    <h3>{{$product->name}}</h3>
                    <hr>
                    <div class="product-img">
                        <img src="{{url('/') . "/uploads/product/" . $product->image }}" alt="">
                    </div>
                    <a href="{{route('product-detail', ['id' => $product->id])}}" class="boxed-btn">Detail</a>
                   
                </div>
            </div>
         @endforeach
            
        </div>
    </div>
</section>

<!-- End: Product
    ============================= -->
<!-- Start: Our Post
    ============================= -->

<section id="product" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-12 text-center">
                <div class="section-title">
                    <h2>Our Post</h2>
                    <hr>
                    <p>We are using only the high quality original product</p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="product-carousel">
                    @foreach($posts as $post)
                        <div class="single-product text-center">
                        <div class="product-img">
                            <img src="{{url('/') . "/uploads/post/" . $post->image }}" alt="">
                        </div>
                        <h5>{{ str_limit($post->content, 100, '[...]')}}</h5>

                        <div class="overlay">
                            <ul class="icons">
                                <li><a href="#" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<!-- End: Our Product
    ============================= -->
@endsection