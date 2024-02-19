@extends('layout.frontend.layout')
@section('title')
    <title>Product - SFV-AUP-Serang</title>
@endsection

@section('content')
    <!-- Header Section -->
    <div class="bg-image" style="background-image: url('{{asset('assets/media/home/gerbang.jpeg')}}');">
        <div class="bg-primary-dark-op">
            <div class="content content-full content-top">
                <div class="my-50 text-center">
                    <h2 class="font-w700 text-white mb-10">
                        {{$product->nama}}
                    </h2>
                    <h3 class="h5 mb-0 text-white">
                        <i class="fa fa-map-pin mr-5"></i> SFV - AUP
                    </h3>
                </div>
                {{-- <h1 class="py-50 text-white text-center">{{$product->nama}}</h1> --}}
            </div>
        </div>
    </div>
    <!-- END Header Section -->

    <!-- Page Content -->
    <div class="content">
        <div class="block block-rounded block-fx-shadow">
            <div class="block-content p-0 bg-image" style="background-image: url('{{asset('assets/media/product/'.$product->gambar)}}');">
                <div class="px-20 py-150 bg-black-op text-center rounded-top">
                    <span class="badge badge-primary text-uppercase font-w700 py-10 px-15">Beli Sekarang</span>
                </div>
            </div>
            <div class="block-content block-content-full">
                <div class="row">
                    <div class="col-md-6 order-md-2 py-20">
                        <div class="row gutters-tiny js-gallery img-fluid-100">
                            <div class="col-12">
                                <a class="img-link img-link-simple img-thumb img-lightbox" href="{{asset('assets/media/product/'.$product->gambar)}}">
                                    <img class="img-fluid" src="{{asset('assets/media/product/'.$product->gambar)}}" alt="">
                                </a>
                            </div>
                            {{-- <div class="col-6">
                                <a class="img-link img-link-simple img-thumb img-lightbox" href="assets/media/photos/photo41@2x.jpg">
                                    <img class="img-fluid" src="assets/media/photos/photo41.jpg" alt="">
                                </a>
                            </div>
                            <div class="col-6">
                                <a class="img-link img-link-simple img-thumb img-lightbox" href="assets/media/photos/photo42@2x.jpg">
                                    <img class="img-fluid" src="assets/media/photos/photo42.jpg" alt="">
                                </a>
                            </div>
                            <div class="col-6">
                                <a class="img-link img-link-simple img-thumb img-lightbox" href="assets/media/photos/photo43@2x.jpg">
                                    <img class="img-fluid" src="assets/media/photos/photo43.jpg" alt="">
                                </a>
                            </div> --}}
                        </div>
                    </div>
                    <div class="col-md-6 order-md-1 py-20">
                        <p>{{$product->deskripsi}}</p>
                    </div>
                </div>
            </div>
            {{-- <div class="block-content block-content-full border-top clearfix">
                <a class="btn btn-hero btn-alt-danger float-right" href="javascript:void(0)">
                    <i class="fa fa-heart"></i>
                </a>
                <a class="btn btn-hero btn-alt-primary" href="javascript:void(0)">
                    <i class="fa fa-envelope mr-5"></i> Kontak
                </a>
            </div> --}}
        </div>
    </div>
    <!-- END Page Content -->

    {{-- </div> --}}
@endsection
