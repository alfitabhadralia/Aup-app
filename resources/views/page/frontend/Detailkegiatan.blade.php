@extends('layout.frontend.layout')
@section('title')
    <title>Kegiatan - SFV-AUP-Serang</title>
@endsection

@section('content')
    <div id="">
        <!-- Header Section -->
        <div class="bg-image" style="background-image: url('{{asset('assets/media/photos/photo21@2x.jpg')}}');">
            <div class="bg-primary-dark-op">
                <div class="content content-full content-top">
                    <h1 class="py-50 text-white text-center">{{$kegiatan->judul}}</h1>
                </div>
            </div>
        </div>
        <!-- END Header Section -->
    </div>

    <div class="content">
        {{-- About --}}
        <div class="block block-fx-shadow">
            <div class="block-content block-content-full">
                <div class="col-xl-12 text-center mb-4">
                    <img class="img-fluid" style="max-width: 600px" src="{{asset('assets/media/kegiatan/'.$kegiatan->gambar)}}" alt="">
                </div>
                <div class="col-xl-12">
                    <p>{{$kegiatan->deskripsi}}</p>
                </div>
            </div>
        </div>
        {{-- end About --}}
        <!-- Image Cards Media Widgets -->
        <h2 class="content-heading">Berita <small>Hari ini</small></h2>
        <div class="row">
            @foreach ($kegiatanHeadline as $value)    
                <!-- Row #1 -->
                <div class="col-md-6 col-xl-4">
                    <a class="block block-transparent border-left border-5x border-primary bg-image" style="background-image: url('{{asset('assets/media/kegiatan/'.$value->gambar)}}');" href="javascript:void(0)">
                        <div class="block-content block-content-full bg-black-op">
                            <div class="pt-100">
                                <h3 class="h4 text-white font-w700 mb-10">{{$value->judul}}</h3>
                                <h4 class="text-white-op font-size-default mb-0">
                                    <span class="mr-10">
                                        <i class="fa fa-clock-o"></i> {{$value->created_at->diffForHumans()}}
                                    </span>
                                </h4>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
        <!-- END Image Cards Media Widgets -->
    </div>
@endsection
