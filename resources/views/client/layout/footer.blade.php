
 <!-- Start: Footer Sidebar
    ============================= -->
 <footer id="footer-widgets">
     <div class="container">
         <div class="col-xs-12">
             {{-- <button type="submit" class="boxed-btn" id="contact-btn">Contact</button> --}}
             <!-- Button trigger modal -->
             {{-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modelId">
               Launch
             </button> --}}
             
             <!-- Modal -->
             <div class="modal fade" id="contact-modal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                 <div class="modal-dialog" role="document">
                     <div class="modal-content">
                         <div class="modal-header">
                             <h5 class="modal-title">Thông tin liên hệ</h5>
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                     <span aria-hidden="true">&times;</span>
                                 </button>
                         </div>
                         <div class="modal-body">
                                <div class="col-lg-12 contact-form">
                                    @if(session('success'))
                                        <div class="alert alert-success">
                                            {{ session('success') }}
                                        </div>
                                    @endif
                                    {{-- {{route('create-message')}} --}}
                                        <form action="#" method="post">
                                            {{csrf_field()}}
                                        <input type="hidden" id="create-message-url" value="{{route('create-message')}}">
                                           <div class="form-group">
                                             <label for="">Họ tên</label>
                                             <input required type="text" name="ten" id="ten" class="form-control" placeholder="" aria-describedby="helpId">
                                            
                                           </div>
                                          
                                          <div class="form-group">
                                            <label for="">Email</label>
                                            <input required  type="email" name="email" id="email" class="form-control" placeholder="" aria-describedby="helpId">
                                           
                                          </div>
                                          <div class="form-group">
                                            <label for="">Số điện thoại</label>
                                            <input type="tel" name="phone" id="phone" class="form-control" placeholder="" aria-describedby="helpId">
                                           
                                          </div>
                                          <div class="form-group">
                                            <label for="">Lời nhắn</label>
                                            <textarea required class="form-control" name="loinhan" id="loinhan" rows="3"></textarea>
                                          </div>
                                          
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                                <button id="btnContact" type="submit" class="btn btn-primary">Gửi</button>
                                                {{-- <button class="boxed-btn"></button> --}}
                                            </div>
                                        </form>
                                </div>
                         </div>

                     </div>
                 </div>
             </div>
         </div>
         <div class="clearfix"></div>
         <div class="row">

             <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-4">
                 <aside class="widget widget_about">
                     <div class="footer-logo"><img src="{{asset('')}}assets/img/logo.png" alt=""></div>
                     <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been.
                     </p>
                     <ul class="widget-info">
                         <li><i class="fas fa-map-marker"></i>198 Collins St, Melbourne, NY</li>
                         <li><i class="fas fa-phone"></i>12) 345 678 910</li>
                         <li><i class="fas fa-envelope"></i>email@companyname.com</li>
                     </ul>
                 </aside>
             </div>

             <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-md-0 mb-4">
                 <aside class="widget widget_recent">
                     <h4 class="widget-title"><img src="{{asset('')}}assets/img/section-icon.png" alt="">Latest News</h4>

                     <ul>
                         <li class="latest-news">
                             <a href="#">
                                 <h6>F&O cues: Nifty 11100 Put adds 4.6 lakh shares in</h6>
                                 <p>Thurday, 25th January 2018</p>
                             </a>
                         </li>
                         <li class="latest-news">
                             <a href="#">
                                 <h6>Bharat Bijlee touched 52-week high on strong Q3</h6>
                                 <p>Thurday, 25th January 2018</p>
                             </a>
                         </li>
                     </ul>
                 </aside>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 mb-lg-0 mb-4">
                 <aside class="widget widget_links">
                     <h4 class="widget-title"><img src="{{asset('')}}assets/img/section-icon.png" alt="">Quick Link</h4>
                     <ul>
                         <li><a href="#">Home</a></li>
                         <li><a href="#">About</a></li>
                         <li><a href="#">Service</a></li>
                         <li><a href="#">Blog</a></li>
                         <li><a href="#">Project</a></li>
                     </ul>
                     <ul>
                         <li><a href="#">Nail Care</a></li>
                         <li><a href="#">Massage</a></li>
                         <li><a href="#">Hair Cut</a></li>
                         <li><a href="#">Waxing</a></li>
                         <li><a href="#">Make Up</a></li>
                     </ul>
                 </aside>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6">
                 <aside class="widget widdget-instagram">
                     <h4 class="widget-title"><img src="{{asset('')}}assets/img/section-icon.png" alt="">Instagram</h4>
                     <ul class="instagram-photos">
                         <li>
                             <img src="{{asset('')}}assets/img/instagram/instagram01.jpg" alt="">
                             <div class="instagram-overlay">
                                 <a href="#">+</a>
                             </div>
                         </li>
                         <li>
                             <img src="{{asset('')}}assets/img/instagram/instagram02.jpg" alt="">
                             <div class="instagram-overlay">
                                 <a href="#">+</a>
                             </div>

                         </li>
                         <li>
                             <img src="{{asset('')}}assets/img/instagram/instagram03.jpg" alt="">
                             <div class="instagram-overlay">
                                 <a href="#">+</a>
                             </div>
                         </li>
                         <li>
                             <img src="{{asset('')}}assets/img/instagram/instagram04.jpg" alt="">
                             <div class="instagram-overlay">
                                 <a href="#">+</a>
                             </div>
                         </li>
                         <li>
                             <img src="{{asset('')}}assets/img/instagram/instagram05.jpg" alt="">
                             <div class="instagram-overlay">
                                 <a href="#">+</a>
                             </div>

                         </li>
                         <li>
                             <img src="{{asset('')}}assets/img/instagram/instagram06.jpg" alt="">
                             <div class="instagram-overlay">
                                 <a href="#">+</a>
                             </div>
                         </li>
                     </ul>
                 </aside>
             </div>
         </div>

     </div>
 </footer>
 <!-- End: Footer Sidebar
    ============================= -->

 <!-- Start: Footer Copyright
    ============================= -->

 <section id="footer-copyright">
     <div class="container">
         <div class="row">
             <div class="col-lg-6 col-12 text-lg-left text-center mb-lg-0 mb-3 copyright-text">
                 <ul>
                     <li><a href="#">&copy; 2018 Nayra Themes </a></li>
                     <li><a href="#">Terms & Conditions</a></li>
                     <li><a href="#">Privacy Policy</a></li>
                     <li><a class="contact-btn" href="#">Contact</a></li>
                 </ul>
             </div>
             <div class="col-lg-6 col-12">
                 <ul class="text-lg-right text-center payment-method">
                     <li><a href="#"><img src="{{asset('')}}assets/img/payment-icon/mastercard.png" alt=""></a></li>
                     <li><a href="#"><img src="{{asset('')}}assets/img/payment-icon/shopify.png" alt=""></a></li>
                     <li><a href="#"><i class="fab fa-paypal"></i></a></li>
                     <li><a href="#"><i class="fab fa-cc-visa"></i></a></li>
                 </ul>
                 <a href="#" class="scrollup"><i class="fas fa-arrow-up"></i></a>
             </div>
         </div>
     </div>
 </section>

 <!-- End: Footer Copyright
    ============================= -->



 <!-- Scripts -->
 <script src="{{asset('')}}assets/js/jquery-3.2.1.min.js"></script>
 <script src="{{asset('')}}assets/js/popper.min.js"></script>
 <script src="{{asset('')}}assets/js/bootstrap.min.js"></script>
 <script src="{{asset('')}}assets/js/jquery.sticky.js"></script>
 <script src="{{asset('')}}assets/js/owl.carousel.min.js"></script>
 <script src="{{asset('')}}assets/js/jquery.shuffle.min.js"></script>
 <script src="{{asset('')}}assets/js/jquery.counterup.min.js"></script>
 <script src="{{asset('')}}assets/js/wow.min.js"></script>
 <script src="{{asset('')}}assets/js/jquery.meanmenu.min.js"></script>
 <script src="{{asset('')}}assets/js/jquery.magnific-popup.min.js"></script>
 <script src="{{asset('')}}assets/js/sweetalert.min.js"></script>


 <!-- Custom Script -->
 <script src="{{asset('')}}assets/js/custom.js"></script>
 <script src="{{asset('assets/js/pages/ajax_contact_form.js')}}"></script>
 @yield('script')    
 </body>

 </html>
