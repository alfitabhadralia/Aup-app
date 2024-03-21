@extends('layout.frontend.layout')
@section('title')
    <title>Product - SFV-AUP-Serang</title>
@endsection

@section('content')
    <div id="">
        <!-- Header Section -->
        <div class="bg-image" style="background-image: url('assets/media/home/gerbang.jpeg');">
            <div class="bg-primary-dark-op">
                <div class="content content-full content-top">
                    <h1 class="py-50 text-white text-center">Produk</h1>
                </div>
            </div>
        </div>
        <!-- END Header Section -->
    </div>

    <div class="content">
        <div class="col-12">
            <div class="d-flex justify-content-center">
                <div class="row">
                    @foreach ($product as $item)
                        <!-- Row 4 -->
                        <div class="col-xl-3">
                            <div class="block  ">
                                <div class="block-content p-0 overflow-hidden">
                                    <a class="img-link" href="{{route('product.detail', $item->id)}}">
                                        <img class="img-fluid" src="{{asset('assets/media/product/'.$item->gambar)}}" alt="" style="min-height: 200px; max-height: 210px;margin-left: auto;margin-right: auto;">
                                    </a>
                                </div>
                                <div class="block-content border-bottom">
                                    <h4 class="font-size-h5 mb-10">{{$item->nama}}</h4>
                                </div>
                                <div class="block-content">
                                    <div class="row">
                                        <p>
                                            {{substr($item->deskripsi, 0, 200)}}
                                        </p>
                                    </div>
                                </div>
                                <div class="block-content block-content-full text-center bg-body-light">
                                    <a class="btn btn-alt-secondary" href="{{route('product.detail', $item->id)}}">
                                        <i class="fa fa-eye mr-5"></i> Detail ...
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="d-flex justify-content-center">
            {!! $product->links() !!}
        </div>
        {{-- end Product --}}
    </div>
@endsection
