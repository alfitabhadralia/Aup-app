@extends('layout.frontend.layout')
@section('title')
    <title>Kegiatan - SFV-AUP-Serang</title>
@endsection

@section('content')
    <div id="">
        <!-- Header Section -->
        <div class="bg-image" style="background-image: url('assets/media/photos/photo21@2x.jpg');">
            <div class="bg-primary-dark-op">
                <div class="content content-full content-top">
                    <h1 class="py-50 text-white text-center">Kegiatan</h1>
                </div>
            </div>
        </div>
        <!-- END Header Section -->
    </div>

    <div class="content">
        <!-- Image Cards Media Widgets -->
        <h2 class="content-heading">Berita Hari ini</h2>
        <div class="row">
            @foreach ($kegiatanHeadline as $value)    
                <!-- Row #1 -->
                <div class="col-md-6 col-xl-4">
                    <a class="block block-transparent border-left border-5x border-primary bg-image" style="background-image: url('{{asset('assets/media/kegiatan/'.$value->gambar)}}');" href="{{route('kegiatan.detail', $value->id)}}">
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
            {{-- <div class="col-md-6 col-xl-4">
                <a class="block block-transparent border-left border-5x border-success bg-image" style="background-image: url('assets/media/photos/photo26.jpg');" href="javascript:void(0)">
                    <div class="block-content block-content-full bg-black-op">
                        <div class="pt-100">
                            <h3 class="h4 text-white font-w700 mb-10">The most happy cities in the world</h3>
                            <h4 class="text-white-op font-size-default mb-0">
                                <span class="mr-10">
                                    <i class="fa fa-clock-o"></i> 12 min
                                </span>
                                <span>
                                    <i class="fa fa-comments-o"></i> 132
                                </span>
                            </h4>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="block block-transparent border-left border-5x border-danger bg-image" style="background-image: url('assets/media/photos/photo28.jpg');" href="javascript:void(0)">
                    <div class="block-content block-content-full bg-black-op">
                        <div class="pt-100">
                            <h3 class="h4 text-white font-w700 mb-10">Learn Laravel in one week the easy way</h3>
                            <h4 class="text-white-op font-size-default mb-0">
                                <span class="mr-10">
                                    <i class="fa fa-clock-o"></i> 20 min
                                </span>
                                <span>
                                    <i class="fa fa-comments-o"></i> 420
                                </span>
                            </h4>
                        </div>
                    </div>
                </a>
            </div> --}}
            <!-- END Row #1 -->
        </div>
        <!-- END Image Cards Media Widgets -->
        <!-- Hero -->
        <div class="bg-image mb-4" style="background-image: url('assets/media/photos/photo34@2x.jpg');">
            <div class="bg-black-op">
                <div class="content text-center mb-4">
                    <div class="py-20">
                        <h1 class="font-w700 text-white mb-10">Nikmati product dari SFV AUP SERANG</h1>
                        <h2 class="h4 font-w400 text-white-op">product mulai dari Rp.15.000</h2>
                        <a class="btn btn-hero btn-noborder btn-rounded btn-alt-success mb-10" href="{{route('product')}}">
                            <i class="fa fa-user-circle mr-5"></i> Lihat lebih banyak
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Hero -->
        {{-- Kegiatan --}}
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
                                    <a class="btn btn-alt-secondary" href="{{route('kegiatan.detail', $item->id)}}">
                                        <i class="fa fa-eye mr-5"></i> Detail..
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            {!! $kegiatan->links() !!}
        </div>
        {{-- end Kegiatan --}}
    </div>
@endsection
