<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Angleslash -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <link rel="stylesheet" href="/css/vendor/jquery.atwho.css">
    <style>
        [v-cloak] {
            display: none;
        }
    </style>
    <script>
        window.App = {!! json_encode([
            'user' => Auth::user(),
            'signedIn' => Auth::check()
        ]) !!};
    </script>

</head>
<body>
    <div id="app">
        <v-app>
            {{-- @include('layouts/navigation') --}}
            <sidebar sessionMessage="{{ session('flash') }}"></sidebar>
            {{-- @include('layouts.partials.flash') --}}
            @yield('content')
        </v-app>
    </div>
</body>
</html>
