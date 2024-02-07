@extends('layout.admin.layout')
@section('title')
    <title>berita - AUP</title>
@endsection
@section('breadcrumb')
    <a class="breadcrumb-item" href="{{route('dashboard')}}">Admin</a>
    <a class="breadcrumb-item" href="{{route('admin.berita')}}">berita</a>
    {{-- <span class="breadcrumb-item active">Create</span> --}}
@endsection
@section('content')
    <!-- Main Container -->
    <main id="main-container">

        <!-- Page Content -->
        <div class="content">
            <!-- Overview -->
            <div class="row invisible" data-toggle="appear">
                <div class="col-md-4">
                    <a class="block block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                        <div class="block-content block-content-full">
                            <div class="py-20 text-center">
                                <div class="mb-10">
                                    <i class="fa fa-user-circle-o fa-3x text-corporate"></i>
                                </div>
                                <div class="font-size-h4 font-w600">{{$berita->count()}} berita</div>
                                <div class="text-muted">{{$beritaToday->count()}} were added today!</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a class="block block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                        <div class="block-content block-content-full">
                            <div class="py-20 text-center">
                                <div class="mb-10">
                                    <i class="fa fa-calendar fa-3x text-elegance"></i>
                                </div>
                                <div class="font-size-h4 font-w600">{{$berita->where('headline', '1')->count()}} Headline</div>
                                <div class="text-muted">jumlah headline pada semua berita!</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a class="block block-rounded block-bordered block-link-shadow" href="javascript:void(0)">
                        <div class="block-content block-content-full">
                            <div class="py-20 text-center">
                                <div class="mb-10">
                                    <i class="fa fa-newspaper-o fa-3x text-primary"></i>
                                </div>
                                <div class="font-size-h4 font-w600">Rp. {{number_format($berita->max('harga'), 0,',','.')}}</div>
                                <div class="text-muted">Harga termahal dari semua berita!</div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <!-- END Overview -->

            <!-- berita -->
            <div id="berita" class="block block-rounded block-bordered invisible" data-toggle="appear">
                <div class="block-header block-header-default">
                    <h3 class="block-title">Current berita</h3>
                    <div class="block-options">
                        <button type="button" id="btn_refresh_berita" class="btn-block-option">
                            <i class="si si-refresh"></i>
                        </button>
                        <a href="{{route('admin.berita.create')}}" type="button" class="btn btn-block-option">
                            <i class="si si-plus"> Tambah berita</i>
                        </a>
                        {{-- <select class="js-select2" id="headline" name="headline" data-placeholder="Choose one..">
                            <option value="">ALL</option>
                            <option value="true">True</option>
                            <option value="false">False</option>
                        </select> --}}
                    </div>
                </div>
                <div class="block-content block-content-full">
                    <div class="table-responsive">
                        {{-- @error('title')
                            <div class="alert alert-danger">{{ $message }}</div>
                        @enderror --}}
                        <!-- Dynamic Table Full -->
                        <!-- DataTables functionality is initialized with .js-dataTable-full class in js/pages/be_tables_datatables.min.js which was auto compiled from _es6/pages/be_tables_datatables.js -->
                        <table id="table-berita" class="table table-borderless table-hover mb-0 table-striped table-vcenter">
                            <thead>
                                <tr>
                                    <th class="d-none d-sm-table-cell" style="width: 30px">No</th>
                                    <th class="d-none d-sm-table-cell" style="max-width: 300px;">judul</th>
                                    <th class="d-none d-sm-table-cell">headline</th>
                                    <th class="d-none d-sm-table-cell">gambar</th>
                                    <th class="d-none d-sm-table-cell">dibuat</th>
                                    <th class="d-none d-sm-table-cell" style="width: 250px;">Action</th>
                                </tr>
                            </thead>
                        </table>
                        <!-- END Dynamic Table Full -->
                    </div>
                </div>
            </div>
            <!-- END berita -->
        </div>
        <!-- END Page Content -->
        <!-- Large Modal -->
        <div class="modal" id="modal-large" tabindex="-1" role="dialog" aria-labelledby="modal-large" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="block block-themed block-transparent mb-0">
                        <div class="block-header bg-primary-dark">
                            <h3 class="block-title">Detail berita</h3>
                            <div class="block-options">
                                <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                    <i class="si si-close"></i>
                                </button>
                            </div>
                        </div>
                        <div class="block-content">
                            <div class="row">
                                <div class="col-6">
                                    <label class="col-6" for="judul">Judul</label>
                                    <div class="col">
                                        <input disabled type="text" class="form-control" id="judul" name="judul" placeholder="berita.." value="">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <label class="col-6" for="penulis">Penulis</label>
                                    <div class="col">
                                        <input disabled type="number" class="form-control" id="penulis" name="penulis" placeholder="penulis.." value="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-12" for="deskripsi">Deskripsi</label>
                                <div class="col-12">
                                    <textarea disabled class="form-control" id="deskripsi" name="deskripsi" rows="6" placeholder="Deskripsi.."></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-12">Gambar File</label>
                                <div class="col-12">
                                    <img id="img-preview" class=" border bg-secondary" style="max-width: 500px">
                                </div>
                            </div>
                            {{-- <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos habitant quis dictumst proin odio sagittis purus mi, nec taciti vestibulum quis in sit varius lorem sit metus mi.</p>
                            <p>Dolor posuere proin blandit accumsan senectus netus nullam curae, ornare laoreet adipiscing luctus mauris adipiscing pretium eget fermentum, tristique lobortis est ut metus lobortis tortor tincidunt himenaeos habitant quis dictumst proin odio sagittis purus mi, nec taciti vestibulum quis in sit varius lorem sit metus mi.</p> --}}
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-alt-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Large Modal -->
    </main>
    <!-- END Main Container -->
@endsection
@push('script')
    <script src="{{asset('assets/js/plugins/datatables/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/datatables/dataTables.bootstrap4.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        const Toast = Swal.mixin({
            toast: true,
            position: "top-end",
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.onmouseenter = Swal.stopTimer;
                toast.onmouseleave = Swal.resumeTimer;
            }
        });
        $(document).ready(function () {
            var table = $('#table-berita').DataTable({
                processing: true,
                serverSide: true,
                ajax: "{{ route('admin.berita') }}",
                columns: [
                    {
                        data: 'DT_RowIndex',
                        name: 'no',
                    }, 
                    {
                        data: 'judul',
                        name: 'judul'
                    }, 
                    {
                        data: 'headline',
                        name: 'headline'
                    },
                    {
                        data: 'gambar',
                        name: 'gambar'
                    },
                    {
                        data: 'created_at',
                        name: 'dibuat'
                    },  
                    {
                        data: 'action',
                        name: 'action',
                    }
                ],
                initComplete: function (setting, json) {
                    $('#headline').on('change', function() {
                        let hl = $(this).val();
                        table.columns(2).search(hl).draw();
                    })
                }
            });
            $('#btn_refresh_berita').on('click', function () {
                refreshberita();
            });
        });

        function refreshberita() {
            $.ajax({
                url: "{{route('admin.berita')}}",
                type: "GET",
                dataType: "JSON",
                beforeSend: function () {
                    $('#berita').addClass('block-mode-loading');
                    $('#table-berita').DataTable().ajax.reload();
                },
                success: function (res) {
                    $('#berita').removeClass('block-mode-loading');
                }, 
                error: function (err) {

                }
            })
        }
        function confirm(id) {
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, delete it!"
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: '/admin/berita/delete/'+id, 
                        type: "POST",
                        data: $('#form-delete-'+id).serialize(),
                        beforeSend: function () {
                            $('#berita').addClass('block-mode-loading');
                        },
                        success: function(data) {
                            if (data['code'] == 200) {
                                Toast.fire({
                                    icon: "success",
                                    title: "Delete is successfully"
                                });
                                $('#table-berita').DataTable().ajax.reload();
                                $('#berita').removeClass('block-mode-loading');
                            } else {
                                Toast.fire({
                                    icon: "error",
                                    title: "Delete is failed"
                                });
                                $('#table-berita').DataTable().ajax.reload();
                                $('#berita').removeClass('block-mode-loading');
                            }
                        }, 
                        error: function(data) {
                            console.log(data);
                        }
                    });
                }
            });
        }
        function edit(id) {
            $.ajax({
                url: "/admin/berita/show/"+id,
                type: "GET",
                dataType: "JSON",
                beforeSend: function () {
                    // $('#berita').addClass('block-mode-loading');
                    // $('#table-berita').DataTable().ajax.reload();
                },
                success: function (res) {
                    console.log(res);
                    $('#modal-large').modal('show');
                    $('#judul').val(res.judul);
                    $('#penulis').val(res.penulis);
                    $('#deskripsi').val(res.deskripsi);
                    $('#img-preview').attr("src",'/assets/media/berita/'+res.gambar);
                    // $('#berita').removeClass('block-mode-loading');
                }, 
                error: function (err) {
                    console.log(err);
                }
            })
        }

    </script>
@endpush