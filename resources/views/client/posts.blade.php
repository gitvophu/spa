@extends('client.layout.master')
@section('script')
    <script src="{{asset('assets/js/pages/product_detail.js')}}"></script>
@endsection
@section('content')

    <!-- Start: Posts Full Width
    ============================= -->
    <section id="blog-content" class="full-width section-padding">
        <div class="container-fluid">
            <div class="row full-width" id="grid">
                @foreach($posts as $post)
                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                        <article class="blog-post">
                            <div class="post-thumb">
                                <img src="{{url('/') . "/uploads/post/" . $post->image }}" alt="">
                            </div>

                            <div class="post-content">

                                <h4 class="post-title"><a href="{{route('post-detail', ['post_id' => $post->id])}}">Elements Massage Appoints First Ever "Chief Wellness Officer”</a></h4>
                                <p class="content">
                                    {{str_limit($post->content, 100, '[...]')}}
                                </p>
                                <a href="{{route('post-detail', ['post_id' => $post->id])}}" class="read-more">Read More <i class="fas fa-angle-double-right"></i></a>
                            </div>
                        </article>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- End: Posts Full Width
    ============================= -->

@endsection