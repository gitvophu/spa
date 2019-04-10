@extends('client.layout.master')
@section('content')

<!-- End SlideShow -->
<section id="pricing" class="section-padding">
   <!-- Start: Header Slider
    ============================= -->
    <header>
        <div class="row">
            <div class="col-md-12">
                <div class="header-slider">
                    <div class="header-single-slider">
                        <figure>
                            <img src="{{asset('assets/img/sliders/slider01.jpg')}}" alt="">
                            <figcaption>
                                <div class="content">
                                    <div class="container inner-content text-left">
                                        <h3>Welcome To Hantus Spa</h3>
                                        <h1>Beauty & Spa Wellness</h1>
                                        <p>The Spa at Sun Valley is a serene oasis amid all the exciting  activities our iconic valley has delivered for decades.</p>
                                        <a href="#" class="boxed-btn">Make an Appoinment</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="header-single-slider">
                        <figure>
                            <img src="{{asset('assets/img/sliders/slider02.jpg')}}" alt="">
                            <figcaption>
                                <div class="content">
                                    <div class="container inner-content text-center">
                                        <h3>Welcome To Hantus Spa</h3>
                                        <h1>Beauty & Spa Wellness</h1>
                                        <p>The Spa at Sun Valley is a serene oasis amid all the exciting  activities our iconic valley has delivered for decades.</p>
                                        <a href="#" class="boxed-btn">Make an Appoinment</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="header-single-slider">
                        <figure>
                            <img src="{{asset('assets/img/sliders/slider03.jpg')}}" alt="">
                            <figcaption>
                                <div class="content">
                                    <div class="container inner-content text-right">
                                        <h3>Welcome To Hantus Spa</h3>
                                        <h1>Beauty & Spa Wellness</h1>
                                        <p>The Spa at Sun Valley is a serene oasis amid all the exciting  activities our iconic valley has delivered for decades.</p>
                                        <a href="#" class="boxed-btn">Make an Appoinment</a>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
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
                        <img src="assets/img/full-width/fullwidth02.jpg" alt="">
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
                    <div class="single-product text-center">
                        <div class="product-img">
                            <img src="assets/img/full-width/fullwidth01.jpg" alt="">
                        </div>
                        <h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam perferendis voluptate
                            laboriosam veritatis blanditiis similique inventore recusandae deserunt ex culpa quia quas
                            molestiae delectus maiores, aut neque consequuntur, tempore quidem?</h5>

                        <div class="overlay">
                            <ul class="icons">
                                <li><a href="#" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single-product text-center">
                        <div class="product-img">
                            <img src="assets/img/full-width/fullwidth01.jpg" alt="">
                        </div>
                        <h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam perferendis voluptate
                            laboriosam veritatis blanditiis similique inventore recusandae deserunt ex culpa quia quas
                            molestiae delectus maiores, aut neque consequuntur, tempore quidem?</h5>

                        <div class="overlay">
                            <ul class="icons">
                                <li><a href="#" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single-product text-center">
                        <div class="product-img">
                            <img src="assets/img/full-width/fullwidth01.jpg" alt="">
                        </div>
                        <h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam perferendis voluptate
                            laboriosam veritatis blanditiis similique inventore recusandae deserunt ex culpa quia quas
                            molestiae delectus maiores, aut neque consequuntur, tempore quidem?</h5>

                        <div class="overlay">
                            <ul class="icons">
                                <li><a href="#" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="single-product text-center">
                        <div class="product-img">
                            <img src="assets/img/full-width/fullwidth01.jpg" alt="">
                        </div>
                        <h5>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam perferendis voluptate
                            laboriosam veritatis blanditiis similique inventore recusandae deserunt ex culpa quia quas
                            molestiae delectus maiores, aut neque consequuntur, tempore quidem?</h5>

                        <div class="overlay">
                            <ul class="icons">
                                <li><a href="#" class="mfp-popup"><i class="fas fa-eye"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- End: Our Product
    ============================= -->
@endsection