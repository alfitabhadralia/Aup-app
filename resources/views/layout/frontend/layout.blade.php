<!doctype html>
<html lang="en" class="no-focus">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    @yield('title')

    <meta name="description" content="Aup-Sistem">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">

    <!-- Open Graph Meta -->
    <meta property="og:title" content="Aup-Sistem">
    <meta property="og:site_name" content="Codebase">
    <meta property="og:description" content="Aup-Sistem">
    <meta property="og:type" content="website">
    <meta property="og:url" content="">
    <meta property="og:image" content="">

    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <!-- <link rel="shortcut icon" href="{{asset('assets/media/favicons/favicon.png')}}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{asset('assets/media/favicons/favicon-192x192.png')}}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{asset('assets/media/favicons/apple-touch-icon-180x180.png')}}"> -->
    <!-- END Icons -->

    @include('include.frontend.style')
</head>

<body>
    @include('include.frontend.header')
    
    @yield('content')

    @include('include.frontend.footer')

    @include('include.frontend.script')
</body>

</html>
