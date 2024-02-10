{{-- contact --}}
<div class="block">
    <div class="block-content block-content-full">
        <div class="container">
            <div class="row">
                <div class="col-md-3 order-md-1 py-20">
                    <h4>Social Media</h4>
                    <div class="row">
                        <button type="button" class="btn btn-dual-secondary" data-toggle="layout"
                            data-action="header_search_on">
                            <a href="{{App\Models\Setting::where('nama','twitter')->first()->value}}">
                                <i class="fa fa-twitter"></i><span class="d-none d-sm-inline-block ml-2">Twitter</span>
                            </a>
                        </button>
                    </div>
                    <div class="row">
                        <button type="button" class="btn btn-dual-secondary" data-toggle="layout"
                            data-action="header_search_on">
                            <a href="{{App\Models\Setting::where('nama','instagram')->first()->value}}">
                                <i class="fa fa-instagram"></i><span class="d-none d-sm-inline-block ml-2">Instagram</span>
                            </a>
                        </button>
                    </div>
                    <div class="row">
                        <button type="button" class="btn btn-dual-secondary" data-toggle="layout"
                            data-action="header_search_on">
                            <a href="{{App\Models\Setting::where('nama','facebook')->first()->value}}">
                                <i class="fa fa-facebook"></i><span class="d-none d-sm-inline-block ml-2">Facebook</span>
                            </a>
                        </button>
                    </div>
                    <div class="row">
                        <button type="button" class="btn btn-dual-secondary" data-toggle="layout"
                            data-action="header_search_on">
                            <a href="{{App\Models\Setting::where('nama','website')->first()->value}}">
                                <i class="si si-anchor"></i><span class="d-none d-sm-inline-block ml-2">Politeknik AUP</span>
                            </a>
                        </button>
                    </div>
                </div>
                <div class="col-md-3 order-md-1 py-20">
                    <h4>Contact</h2>
                        <p>{{App\Models\Setting::where('nama','email_kontak')->first()->value}}</p>
                        <p>{{App\Models\Setting::where('nama','phone_kontak')->first()->value}}</p>
                        <p>{{App\Models\Setting::where('nama','alamat_kontak')->first()->value}}</p>
                </div>
                <div class="col-md-6 order-md-2 py-20">
                    <div class="row gutters-tiny">
                        <div class="col-12">
                                <div class="map-area" >
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.760430899526!2d106.15974047498874!3d-6.027584893957896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e41f317e72814b5%3A0x564b4aa9407bf867!2sPoliteknik%20Ahli%20Usaha%20Perikanan%20(AUP-STP)%20Kampus%20Banten!5e0!3m2!1sen!2sid!4v1704469203990!5m2!1sen!2sid" width="500" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            {{-- <a class="img-link img-link-simple img-thumb img-lightbox text-right"
                                href="assets/media/photos/photo35@2x.jpg">
                                <img class="img-fluid" src="{{asset('assets/media/photos/photo35.jpg')}}" style="width: 500px; height: 200px" alt="">
                            </a> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{{-- end contact --}}
<!-- Footer -->
{{-- <footer id="page-footer" class="opacity-1">
    <div class="content py-20 font-size-xs clearfix">
        <div class="float-right">
            Crafted with <i class="fa fa-heart text-pulse"></i> by <a class="font-w600"
                href="https://1.envato.market/ydb" target="_blank">panks</a>
        </div>
        <div class="float-left">
            <a class="font-w600" href="https://1.envato.market/95j" target="_blank">Sifor 1.0</a> &copy; <span
                class="js-year-copy"></span>
        </div>
    </div>
</footer> --}}
<!-- END Footer -->
