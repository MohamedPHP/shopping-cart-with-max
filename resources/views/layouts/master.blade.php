<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>@yield('title')</title>
        <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" media="screen">
        <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" media="screen">
        <link rel="stylesheet" href="{{asset('css/backend.css')}}" media="screen">
        @yield('styles')
    </head>
    <body>
        @include('partials.header')
        <div class="container">
            @yield('content')
        </div>

        <script src="{{asset('js/jquery-1.12.3.min.js')}}"></script>
        <script src="{{asset('js/bootstrap.min.js')}}"></script>
        @yield('scripts')
        <script src="{{asset('js/backend.js')}}"></script>
    </body>
</html>
