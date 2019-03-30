@extends('client.layout.master')
@section('script')
<script src="{{asset('assets/js/pages/product_detail.js')}}"></script>
@endsection
@section('content')
<section id="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Blog</h2>
                    <ul class="breadcrumb-nav list-inline">
                        <li><a href="index.html">Home</a></li>
                        <li>Blog</li>
                        <li>Blog Single</li>
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
                        <div class="post-thumb">
                            <img src="assets/img/blog-sidebar/blog-full-post.jpg" alt="">
                        </div>
                        <div class="post-content">
                        <div class="post-header">
                            <h3 class="post-title"><a href="blog-single.html">Elements Massage Appoints First Ever "Chief Wellness Officer”</a></h3>
                            <ul class="meta-info text-left">
                                <li class="post-date"><a href="#">Gary Coleman-12 July 2017 </a></li>
                            </ul>
                            <ul class="text-right">
                                <li><a href="#"><i class="fas fa-tags"></i>Beauty</a></li>
                                <li><a href="#"><i class="fas fa-comments"></i>3 Comments</a></li>
                            </ul>
                        </div>
                            <h5 class="pb-3 pt-4">We are always looking for specific approach to each cases...</h5>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered that alteration in some form by injected humour or  the an  randomised words which don't look even evry slightly believable. If you are going to use a passage of Lorem Ipsum you need to be sure there isn't is anything aembarrassing hidden in the middle of text.Ipsum available but the majority have suffered alteration in some form by injected humour or randomised words.</p>
                            <br>
                            <p>Bontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                            <br>
                            <p>The face of the moon was in shadow.The spectacle before us was indeed sublime.All their equipment tha and instruments are alive.All their equipment and instruments are alive.I watched the storm, so beautiful yet terrific.Silver mist suffused the deck of the ship.The recorded voice scratched in the speaker.Almost is before we knew it, we had left the ground.ilver mist suffused the deck of the ship.</p>
                        </div>
                        
                        <div class="meta-data">
                            <ul>
                                <li class="pr-1">Tags:</li>
                                <li><a href="#">Massage,</a></li>
                                <li><a href="#">Skin Care,</a></li>
                                <li><a href="#">Stone,</a></li>
                                <li><a href="#">Oil,</a></li>
                                <li><a href="#">Relax,</a></li>
                                <li><a href="#">Clear,</a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#">Nature</a></li>
                            </ul>
                            <ul class="text-right share">
                                <li class="pr-1">Share:</li>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                <li><a href="#"><i class="fab fa-envelope"></i></a></li>
                            </ul>
                        </div>

                        <hr>

                        <!-- Post Comment Area -->
                        <div class="post-comments-area">
                            <h4 class="pb-2">(13) Comments</h4>
                            <ul class="media-list">
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#"><img alt="" src="assets/img/blog-sidebar/avatar01.png"> </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="comment-author"><a href="#">Jennifer Aniston</a></h5>
                                        <p class="comment">There are many variations of passages of Lorem Ipsum available, but the majority have  alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything barrassing hidden in the middle of text. </p>
                                        <a href="#" class="comment-date">October 19,2018</a>
                                        <ul>
                                            <li><i class="fas fa-thumbs-up"></i>108</li>
                                            <li class="comment-replay"><i class="fas fa-external-link-alt"></i>Reply</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="media-replay">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="" src="assets/img/blog-sidebar/avatar02.png"> </a>
                                        </div>
                                        <div class="media-body">
                                            <h5 class="comment-author"><a href="#">Tony Robbins</a></h5>
                                            <p class="comment">The face of the moon was in shadow.The spectacle before us  indeed  is sublime.All their equipment and instruments are alive.</p>
                                            <a href="#" class="comment-date">October 19,2018</a>
                                            <ul>
                                                <li><i class="fas fa-thumbs-up"></i>108</li>
                                                <li class="comment-replay"><i class="fas fa-external-link-alt"></i>Reply</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="media">
                                    <div class="media-left">
                                        <a href="#"><img alt="" src="assets/img/blog-sidebar/avatar03.png"> </a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="comment-author"><a href="#">Kayla Shriver</a></h5>
                                        <p class="comment">The face of the moon was in shadow.The spectacle before us was indeed sublime.All their dummy equipment and instruments are alive.All their equipment and instruments are alive.I watched the is storm, so beautiful yet terrific.</p>
                                        <a href="#" class="comment-date">October 19,2018</a>
                                        <ul>
                                            <li><i class="fas fa-thumbs-up"></i>108</li>
                                            <li class="comment-replay"><i class="fas fa-external-link-alt"></i>Reply</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Post New Comment Area -->
                        <div class="post-new-comment">
                            <h4>Write a Comment</h4>
                            <p>Your email address will not be published. Required fields are marked *</p>
                            <form action="#">
                                <div class="row">
                                    <div class="col-sm-12 form-group pt-4">
                                        <span class="input input--hantus textarea">
                                            <textarea class="input__field input__field--hantus" rows="5" id="input-05"></textarea>
                                            <label class="input__label input__label--hantus" for="input-05">
                                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                                </svg>
                                                <span class="input__label-content input__label-content--hantus">Message</span>
                                            </label>
                                        </span>
                                    </div>

                                    <div class="col-sm-6 form-group">
                                        <span class="input input--hantus">
                                            <input class="input__field input__field--hantus" type="text" id="input-06" />
                                            <label class="input__label input__label--hantus" for="input-06">
                                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                                </svg>
                                                <span class="input__label-content input__label-content--hantus">Name</span>
                                            </label>
                                        </span>
                                    </div>

                                    <div class="col-sm-6 form-group">
                                        <span class="input input--hantus">
                                            <input class="input__field input__field--hantus" type="text" id="input-07" />
                                            <label class="input__label input__label--hantus" for="input-07">
                                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
                                                </svg>
                                                <span class="input__label-content input__label-content--hantus">Email</span>
                                            </label>
                                        </span>
                                    </div>
                                </div>
                                <button type="submit" class="boxed-btn">Send Message</button>
                            </form>
                        </div>
                    </article>
                </div>

                <!-- Sidebar -->
                <div class="col-lg-4 col-md-12">
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
                                        <span class="input__label-content input__label-content--hantus">Search blog</span>
                                    </label>
                                </span>
                                <input type="button" class="search-btn" value="Go">
                            </form>
                        </aside>

                        <aside class="widget widdget-recent-post">
                            <h5 class="widget-title"><img src="assets/img/section-icon.png" alt="">Recent News</h5>
                            <div class="recent-post">
                                <a href="#"><h6>Stephenson will bring his trademark leadership approach to Elements Massage</h6></a>
                                <p>Jul 08, 2017</p>
                            </div>
                            <div class="recent-post">
                                <a href="#"><h6>In addition to Stephenson’s internal he will also serve as a spokesperson.</h6></a>
                                <p>Jul 08, 2017</p>
                            </div>
                            <div class="recent-post">
                                <a href="#"><h6>In addition to Stephenson’s internal he will also serve as a spokesperson.</h6></a>
                                <p>Jul 08, 2017</p>
                            </div>
                            <div class="recent-post">
                                <a href="#"><h6>To learn more about Elements Massage and franchise.</h6></a>
                                <p>Jul 08, 2017</p>
                            </div>
                        </aside>

                        <aside class="widget widdget-instagram">
                            <h4 class="widget-title"><img src="assets/img/section-icon.png" alt="">Instagram</h4>
                            <ul class="instagram-photos">                                
                                <li>
                                    <img src="assets/img/instagram/instagram01.jpg" alt="">
                                    <div class="instagram-overlay">
                                        <a href="#">+</a>
                                    </div>
                                </li>                                
                                <li>
                                    <img src="assets/img/instagram/instagram02.jpg" alt="">
                                    <div class="instagram-overlay">
                                        <a href="#">+</a>
                                    </div>
                                    
                                </li>                                
                                <li>
                                    <img src="assets/img/instagram/instagram03.jpg" alt="">
                                    <div class="instagram-overlay">
                                        <a href="#">+</a>
                                    </div>
                                </li>                               
                                <li>
                                    <img src="assets/img/instagram/instagram04.jpg" alt="">
                                    <div class="instagram-overlay">
                                        <a href="#">+</a>
                                    </div>
                                </li>                                
                                <li>
                                    <img src="assets/img/instagram/instagram05.jpg" alt="">
                                    <div class="instagram-overlay">
                                        <a href="#">+</a>
                                    </div>
                                    
                                </li>                                
                                <li>
                                    <img src="assets/img/instagram/instagram06.jpg" alt="">
                                    <div class="instagram-overlay">
                                        <a href="#">+</a>
                                    </div>
                                </li>
                            </ul>
                        </aside>

                        <aside class="widget widget-tag">
                            <h5 class="widget-title"><img src="assets/img/section-icon.png" alt="">Tags</h5>
                            <ul class="tags">
                                <li><a href="#">News</a></li>
                                <li><a href="#">Popular</a></li>
                                <li><a href="#">Hair</a></li>
                                <li><a href="#">Eyes</a></li>
                                <li><a href="#">Nail Design</a></li>
                                <li><a href="#"> Stone</a></li>
                                <li><a href="#"> Beautiful</a></li>
                                <li><a href="#">Body</a></li>
                                <li><a href="#">Skin Care</a></li>
                                <li><a href="#">Massage Body</a></li>
                            </ul>
                        </aside>

                        <aside class="widget widget-acrhives">
                            <h5 class="widget-title"><img src="assets/img/section-icon.png" alt="">Archives</h5>
                            <ul>
                                <li><a href="#">November 2017 <span>23</span></a></li>
                                <li><a href="#">November 2017 <span>23</span></a></li>
                                <li><a href="#">November 2017 <span>23</span></a></li>
                                <li><a href="#">November 2017 <span>23</span></a></li>
                                <li><a href="#">November 2017 <span>23</span></a></li>
                                <li><a href="#">November 2017 <span>23</span></a></li>
                            </ul>
                        </aside>

                        <aside class="widget widget-calender">
                            <div class="widget-title">
                                <ul>
                                    <li><i class="fas fa-angle-left left"></i>January 2017<i class="fas fa-angle-right right"></i></li>
                                </ul>
                            </div>
                            <div class="full-calender">
                                <ul class="weekdays">
                                    <li>Mo</li>
                                    <li>Tu</li>
                                    <li>We</li>
                                    <li>Th</li>
                                    <li>Fr</li>
                                    <li>Sa</li>
                                    <li>Su</li>
                                </ul>
                                <ul class="days">
                                    <li class="disable">27</li>
                                    <li class="disable">28</li>
                                    <li class="disable">29</li>
                                    <li class="disable">30</li>
                                    <li>1</li>
                                    <li>2</li>
                                    <li>3</li>
                                    <li>4</li>
                                    <li>5</li>
                                    <li>6</li>
                                    <li>7</li>
                                    <li>8</li>
                                    <li>9</li>
                                    <li><a href="#"><span class="active">10</span></a></li>
                                    <li>11</li>
                                    <li>12</li>
                                    <li>13</li>
                                    <li>14</li>
                                    <li>15</li>
                                    <li>16</li>
                                    <li>17</li>
                                    <li>18</li>
                                    <li>19</li>
                                    <li>20</li>
                                    <li>21</li>
                                    <li>22</li>
                                    <li>23</li>
                                    <li>24</li>
                                    <li>25</li>
                                    <li>26</li>
                                    <li>27</li>
                                    <li>28</li>
                                    <li>29</li>
                                    <li>30</li>
                                    <li>31</li>
                                </ul>
                            </div>
                        </aside>

                    </section>
                </div>
            </div>

        </div>
    </section>

    <!-- End: Blog right Sidebar
    ============================= -->
@endsection