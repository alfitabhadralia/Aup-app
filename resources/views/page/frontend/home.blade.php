@extends('layout.frontend.layout')
@section('title')
    <title>Home - SFV-AUP-Serang</title>
@endsection

@section('content')
    <div id="main-container">
        <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
            <div class="bg-image" style="background-image: url('assets/media/photos/photo2@2x.jpg');">
                <div class="hero bg-primary-dark-op">
                    <div class="hero-inner">
                        <div class="content content-full text-center">
                            <h1 class="display-4 font-w700 text-white mb-10 invisible" data-toggle="appear"
                                data-class="animated fadeInDown">Codebase</h1>
                            <h2 class="font-w400 text-white-op mb-50 invisible" data-toggle="appear"
                                data-class="animated fadeInUp" data-timeout="250">It’s Time to Create Your Next Amazing
                                Project</h2>
                            <a class="btn btn-hero btn-noborder btn-rounded btn-primary invisible" data-toggle="appear"
                                data-class="animated bounceIn" data-timeout="750" href="#about">
                                <i class="si si-rocket mr-10"></i> Get Started
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-image" style="background-image: url('assets/media/photos/photo3@2x.jpg');">
                <div class="hero bg-primary-dark-op">
                    <div class="hero-inner">
                        <div class="content content-full text-center">
                            <h1 class="display-4 font-w700 text-white mb-10 invisible" data-toggle="appear"
                                data-class="animated fadeInDown">Codebase</h1>
                            <h2 class="font-w400 text-white-op mb-50 invisible" data-toggle="appear"
                                data-class="animated fadeInUp" data-timeout="250">It’s Time to Create Your Next
                                Amazing Project</h2>
                            <a class="btn btn-hero btn-noborder btn-rounded btn-primary invisible" data-toggle="appear"
                                data-class="animated bounceIn" data-timeout="750" href="#about">
                                <i class="si si-rocket mr-10"></i> Get Started
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        {{-- About --}}
        <div id="about" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">About <small>Us</small></h2>
        </div>
        <div class="block   block-fx-shadow">
            <div class="block-content block-content-full">
                <div class="row">
                    <div class="col-md-6 order-md-2 py-20">
                        <div class="row gutters-tiny js-gallery img-fluid-100">
                            <div class="col-12">
                                <a class="img-link img-link-simple img-thumb img-lightbox"
                                    href="assets/media/photos/photo35@2x.jpg">
                                    <img class="img-fluid" src="assets/media/photos/photo35.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 order-md-1 py-20">
                        <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                            adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut
                            metus lobortis tortor tincidunt himenaeos habitant quis dictumst proin odio sagittis
                            purus mi, nec taciti vestibulum quis in sit varius lorem sit metus mi.</p>
                        <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                            adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut
                            metus lobortis tortor tincidunt himenaeos habitant quis dictumst proin odio sagittis
                            purus mi, nec taciti vestibulum quis in sit varius lorem sit metus mi.</p>
                        <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                            adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut
                            metus lobortis tortor tincidunt himenaeos habitant quis dictumst proin odio sagittis
                            purus mi, nec taciti vestibulum quis in sit varius lorem sit metus mi.</p>
                        <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                            adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut
                            metus lobortis tortor tincidunt himenaeos habitant quis dictumst proin odio sagittis
                            purus mi, nec taciti vestibulum quis in sit varius lorem sit metus mi.</p>
                    </div>
                </div>
            </div>
        </div>
        {{-- end About --}}

        {{-- Kegiatan --}}
        <div id="kegiatan" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">Kegiatan</h2>
        </div>
        <div class="col-12 ">
            <div class="d-flex justify-content-center">
                <div class="row">
                    <!-- Row 1 -->
                    <div class="col-xl-3">
                        <div class="block">
                            <div class="block-content block-content-full text-center bg-image"
                                style="background-image: url('assets/media/photos/photo5@2x.jpg'); height: 200px;">
                            </div>
                            <div class="block-content block-content-full">
                                <h4>Menanam benih udang</h4>
                                <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                                    adipiscing luctus mauris adipiscing pretium eget
                                    fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos
                                    habitant .</p>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail..
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Row 2 -->
                    <div class="col-xl-3">
                        <div class="block">
                            <div class="block-content block-content-full text-center bg-image"
                                style="background-image: url('assets/media/photos/photo2@2x.jpg'); height: 200px;">
                            </div>
                            <div class="block-content block-content-full">
                                <h4>Menanam benih udang</h4>
                                <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                                    adipiscing luctus mauris adipiscing pretium eget
                                    fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos
                                    habitant .</p>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail..
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Row 3 -->
                    <div class="col-xl-3">
                        <div class="block">
                            <div class="block-content block-content-full text-center bg-image"
                                style="background-image: url('assets/media/photos/photo3@2x.jpg'); height: 200px;">
                            </div>
                            <div class="block-content block-content-full">
                                <h4>Menanam benih udang</h4>
                                <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                                    adipiscing luctus mauris adipiscing pretium eget
                                    fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos
                                    habitant .</p>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail..
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Row 4 -->
                    <div class="col-xl-3">
                        <div class="block">
                            <div class="block-content block-content-full text-center bg-image"
                                style="background-image: url('assets/media/photos/photo4@2x.jpg'); height: 200px;">
                            </div>
                            <div class="block-content block-content-full">
                                <h4>Menanam benih udang</h4>
                                <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet
                                    adipiscing luctus mauris adipiscing pretium eget
                                    fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos
                                    habitant .</p>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail..
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- end Kegiatan --}}
        {{-- galleri --}}
        <div id="galeri" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">Gallery <small>kegiatan</small></h2>
        </div>
        <div class="col-12 items-push js-gallery img-fluid-100">
            <div class="row">
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo17@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo17.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo18@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo18.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo19@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo19.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo20@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo20.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo21@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo21.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo22@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo22.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo21@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo21.jpg" alt="">
                    </a>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                    <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="assets/media/photos/photo22@2x.jpg">
                        <img class="img-fluid" src="assets/media/photos/photo22.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
        {{-- end galleri --}}
        {{-- Product --}}
        <div id="product" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">Product</h2>
        </div>
        <div class="col-12">
            <div class="d-flex justify-content-center">
                <div class="row">
                    <!-- Row 4 -->
                    <div class="col-xl-3">
                        <div class="block  ">
                            <div class="block-content p-0 overflow-hidden">
                                <a class="img-link" href="be_pages_real_estate_listing.html">
                                    <img class="img-fluid  " src="assets/media/photos/photo35.jpg" alt="">
                                </a>
                            </div>
                            <div class="block-content border-bottom">
                                <h4 class="font-size-h5 mb-10">Downtown Apartment</h4>
                                <h5 class="font-size-h1 font-w300 mb-5">$350,000</h5>
                                <p class="text-muted">
                                    <i class="fa fa-map-pin mr-5"></i> 965 Westwood Avenue, NY
                                </p>
                            </div>
                            <div class="block-content">
                                <div class="row">
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bed text-muted mr-5"></i> <strong>2</strong>
                                            Bedrooms
                                        </p>
                                    </div>
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bath text-muted mr-5"></i> <strong>1</strong>
                                            Bathroom
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail ...
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Row 4 -->
                    <div class="col-xl-3">
                        <div class="block  ">
                            <div class="block-content p-0 overflow-hidden">
                                <a class="img-link" href="be_pages_real_estate_listing.html">
                                    <img class="img-fluid  " src="assets/media/photos/photo35.jpg" alt="">
                                </a>
                            </div>
                            <div class="block-content border-bottom">
                                <h4 class="font-size-h5 mb-10">Downtown Apartment</h4>
                                <h5 class="font-size-h1 font-w300 mb-5">$350,000</h5>
                                <p class="text-muted">
                                    <i class="fa fa-map-pin mr-5"></i> 965 Westwood Avenue, NY
                                </p>
                            </div>
                            <div class="block-content">
                                <div class="row">
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bed text-muted mr-5"></i> <strong>2</strong>
                                            Bedrooms
                                        </p>
                                    </div>
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bath text-muted mr-5"></i> <strong>1</strong>
                                            Bathroom
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail ...
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Row 4 -->
                    <div class="col-xl-3">
                        <div class="block  ">
                            <div class="block-content p-0 overflow-hidden">
                                <a class="img-link" href="be_pages_real_estate_listing.html">
                                    <img class="img-fluid  " src="assets/media/photos/photo35.jpg" alt="">
                                </a>
                            </div>
                            <div class="block-content border-bottom">
                                <h4 class="font-size-h5 mb-10">Downtown Apartment</h4>
                                <h5 class="font-size-h1 font-w300 mb-5">$350,000</h5>
                                <p class="text-muted">
                                    <i class="fa fa-map-pin mr-5"></i> 965 Westwood Avenue, NY
                                </p>
                            </div>
                            <div class="block-content">
                                <div class="row">
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bed text-muted mr-5"></i> <strong>2</strong>
                                            Bedrooms
                                        </p>
                                    </div>
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bath text-muted mr-5"></i> <strong>1</strong>
                                            Bathroom
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail ...
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Row 4 -->
                    <div class="col-xl-3">
                        <div class="block  ">
                            <div class="block-content p-0 overflow-hidden">
                                <a class="img-link" href="be_pages_real_estate_listing.html">
                                    <img class="img-fluid  " src="assets/media/photos/photo35.jpg" alt="">
                                </a>
                            </div>
                            <div class="block-content border-bottom">
                                <h4 class="font-size-h5 mb-10">Downtown Apartment</h4>
                                <h5 class="font-size-h1 font-w300 mb-5">$350,000</h5>
                                <p class="text-muted">
                                    <i class="fa fa-map-pin mr-5"></i> 965 Westwood Avenue, NY
                                </p>
                            </div>
                            <div class="block-content">
                                <div class="row">
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bed text-muted mr-5"></i> <strong>2</strong>
                                            Bedrooms
                                        </p>
                                    </div>
                                    <div class="col-6">
                                        <p>
                                            <i class="fa fa-fw fa-bath text-muted mr-5"></i> <strong>1</strong>
                                            Bathroom
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="block-content block-content-full text-center bg-body-light">
                                <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                    <i class="fa fa-eye mr-5"></i> Detail ...
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {{-- end Product --}}
    </div>
@endsection
