@extends('layout.frontend.layout')
@section('title')
    <title>Home - SFV-AUP-Serang</title>
@endsection

@section('content')
    <div id="main-container">
        <div class="js-slider slick-nav-black slick-dotted-inner slick-dotted-white" data-dots="true" data-arrows="true">
            @foreach ($kegiatan as $kegiatans)
                <div class="bg-image" style="background-image: url('assets/media/kegiatan/{{$kegiatans->gambar}}');">
                    <div class="hero bg-primary-dark-op">
                        <div class="hero-inner">
                            <div class="content content-full text-center">
                                <h4 class="display-4 font-w700 text-white mb-10 invisible" data-toggle="appear"
                                    data-class="animated fadeInDown">{{$kegiatans->judul}}</h4>
                                <h5 class="font-w400 text-white-op mb-50 invisible" data-toggle="appear"
                                    data-class="animated fadeInUp" data-timeout="250">It’s Time to Create Your Next Amazing
                                    Experince</h5>
                                <a class="btn btn-hero btn-noborder btn-rounded btn-primary invisible" data-toggle="appear"
                                    data-class="animated bounceIn" data-timeout="750" href="#about">
                                    <i class="si si-rocket mr-10"></i> Get Started
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <div class="content">
        {{-- About --}}
        <div id="about" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">About <small>Us</small></h2>
        </div>
        <div class="block   block-fx-shadow">
            <div class="block-content block-content-full">
                <div class="row ml-4 mr-4">
                    <div class="col-md-6 order-md-1 py-20">
                        <h3>{{$setting->where('nama', 'title_about')->first()->value}}</h3>
                        <p>{!! $setting->where('nama', 'deskripsi_about')->first()->value !!}</p>
                    </div>
                    <div class="col-md-6 order-md-2">
                        <div class="row gutters-tiny js-gallery img-fluid-100">
                            <div class="col-12 text-center">
                                <a class="img-link img-link-simple img-thumb img-lightbox"
                                    href="{{asset('assets/media/setting/'.$setting->where('nama', 'gambar_about')->first()->value)}}">
                                    <img class="img-fluid" style="min-width: 300px" src="{{asset('assets/media/setting/'.$setting->where('nama', 'gambar_about')->first()->value)}}" alt="">
                                </a>
                            </div>
                        </div>
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
                    @foreach ($kegiatan as $item)    
                        <!-- Row -->
                        <div class="col-md-6 col-xl-3">
                            <div class="block">
                                <div class="block-content block-content-full text-center bg-image"
                                    style="background-image: url('assets/media/kegiatan/{{$item->gambar}}'); height: 200px;">
                                </div>
                                <div class="block-content block-content-full">
                                    <h5>{{substr($item->judul, 0, 50)}}..</h5>
                                    <p>{{substr($item->deskripsi, 0, 200)}}..</p>
                                </div>
                                <div class="block-content block-content-full text-center bg-body-light">
                                    <a class="btn btn-alt-secondary" href="javascript:void(0)">
                                        <i class="fa fa-eye mr-5"></i> Detail..
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        {{-- end Kegiatan --}}
        {{-- Kegiatan --}}
        <div id="kegiatan" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">Berita</h2>
        </div>
        <div class="col-12 ">
            <div class="d-flex justify-content-center">
                <div class="row">
                    @foreach ($berita as $beritas)    
                        <!-- Row #1 -->
                        <div class="col-md-6 col-xl-4">
                            {{-- <div class="" style="min-height: 300px"> --}}
                                <a class="block block-transparent border-left border-5x border-primary bg-image" style="background-image: url('{{asset('assets/media/kegiatan/'.$beritas->gambar)}}');" href="{{route('kegiatan.detail', $beritas->id)}}">
                                    <div class="block-content block-content-full bg-black-op">
                                        <div class="pt-100">
                                            <h3 class="h4 text-white font-w700 mb-10">{{(strlen( $beritas->judul )>= 60) ? substr($beritas->judul, 0, 60).".." : $beritas->judul}}</h3>
                                            <h4 class="text-white-op font-size-default mb-0">
                                                <span class="mr-10">
                                                    <i class="fa fa-clock-o"></i> {{$beritas->created_at->diffForHumans()}}
                                                </span>
                                            </h4>
                                        </div>
                                    </div>
                                </a>
                            {{-- </div> --}}
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        {{-- end berita --}}
        {{-- galleri --}}
        <div id="galeri" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">Gallery</h2>
        </div>
        <div class="col-12 items-push js-gallery img-fluid-100">
            <div class="row">
                @foreach ($gallery as $key)
                    <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                        <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="{{asset('assets/media/kegiatan/'.$key->gambar)}}">
                            <img class="img-fluid" src="{{asset('assets/media/kegiatan/'.$key->gambar)}}" alt="">
                        </a>
                    </div>
                @endforeach
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
                    @foreach ($product as $value)
                        <!-- Row 4 -->
                        <div class="col-xl-3">
                            <div class="block  ">
                                <div class="block-content p-0 overflow-hidden">
                                    <a class="img-link" href="{{asset('assets/media/product/'.$value->gambar)}}">
                                        <img class="img-fluid" src="{{asset('assets/media/product/'.$value->gambar)}}" alt="" style="min-height: 200px; max-height: 210px;margin-left: auto;margin-right: auto;">
                                    </a>
                                </div>
                                <div class="block-content border-bottom">
                                    <h4 class="font-size-h5 mb-10">{{$value->nama}}</h4>
                                    <h5 class="font-size-h3 font-w300 mb-5">Rp. {{number_format($value->harga, 0,',','.')}}</h5>
                                </div>
                                <div class="block-content">
                                    <div class="row">
                                        <p>
                                            {{substr($value->deskripsi, 0, 200)}}
                                        </p>
                                    </div>
                                </div>
                                <div class="block-content block-content-full text-center bg-body-light">
                                    <a class="btn btn-alt-secondary" href="{{route('product.detail', $value->id)}}">
                                        <i class="fa fa-eye mr-5"></i> Detail ...
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        {{-- end Product --}}

        {{-- galleri --}}
        <div id="galeri" class="my-50 text-center content-heading">
            <h2 class="font-w700 text-black mb-10">Kerjasama</h2>
        </div>
        <div class="col-12 items-push js-gallery img-fluid-100">
            <div class="row">
                @foreach ($kerjasama as $kerja)
                    <div class="col-md-6 col-lg-4 col-xl-3 animated fadeIn mt-4">
                        <a class="img-link img-link-zoom-in img-thumb img-lightbox" href="{{asset('assets/media/kerjasama/'.$kerja->gambar)}}">
                            <img class="img-fluid" src="{{asset('assets/media/kerjasama/'.$kerja->gambar)}}" alt="">
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        {{-- end galleri --}}
    </div>
@endsection
