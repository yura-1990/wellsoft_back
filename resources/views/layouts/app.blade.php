<!DOCTYPE html>
<html lang="ru" dir="ltr">
<head>
    <!-- required meta -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Dynamic Meta Keywords -->
    <meta name="keywords" content="{{ $metaKeywords ?? __('meta_keywords') }}" />
    <!-- #description -->
    <meta name="description" content="{{ $metaDescription ?? __('meta_description') }}" />
    <!-- #title -->
    <title>{{ $metaTitle ?? __('meta_title') }}</title>
    <!-- #favicon -->
    <link rel="shortcut icon" href="{{ asset('/images/logo.png') }}" type="image/x-icon" />
    <!-- AOS  -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <!-- ==== css dependencies start ==== -->
    <link rel="stylesheet" href="{{ asset('/css/style.css') }}" />
    <link rel="stylesheet" href="{{ asset('/css/all.min.css') }}" />
    <link rel="alternate" hreflang="ru" href="https://wellsoft.uz/" />

    <!-- ICON  -->
    <script src="https://unpkg.com/@phosphor-icons/web"></script>

</head>

<body>

@extends('components.header')
{{--<canvas id="snowfallCanvas"></canvas>--}}
@yield('main')
@extends('components.footer')


<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>
<script src="{{ asset('/js/main.js') }}"></script>
<script src="{{ asset('/js/plugins.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="{{ asset('/js/particles.js') }}"></script>
<script src="{{ '/js/custom-plugin.js' }}"></script>
<script>AOS.init({offset: 120,duration: 800,easing: "ease-in-out",});</script>
<script src="{{ asset('/js/animation.js') }}"></script></body>
</html>
