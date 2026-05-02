<!DOCTYPE html>
<html lang="{{ session('locale', 'ru') }}" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    @php
        $siteName = 'WELLSOFT';
        $defaultTitle = 'Разработка сайтов и IT-решений любой сложности';
        $defaultDescription = 'Ищете гибкие IT-решения и первоклассные услуги? WELLSOFT — профессиональная разработка сайтов, интернет-магазинов и корпоративных порталов в Ташкенте и Узбекистане. Закажите разработку под ключ!';
        $defaultKeywords = 'гибкие IT-решения, первоклассные услуги, разработка сайтов, создание сайтов, Ташкент, Узбекистан, заказать сайт, веб-студия';
        $defaultImage = asset('images/logo.png');

        $seoTitle = trim($__env->yieldContent('title', $defaultTitle));
        $seoDescription = trim($__env->yieldContent('description', $defaultDescription));
        $seoKeywords = trim($__env->yieldContent('keywords', $defaultKeywords));
        $seoImage = trim($__env->yieldContent('image', $defaultImage));
        $canonicalUrl = url()->current();
    @endphp

    <title>{{ $seoTitle }}</title>
    <meta name="description" content="{{ $seoDescription }}">
    <meta name="keywords" content="{{ $seoKeywords }}">
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">

    <!-- Canonical -->
    <link rel="canonical" href="{{ $canonicalUrl }}">

    <!-- Hreflang for multilingual SEO -->
    <link rel="alternate" hreflang="ru" href="{{ url('/locales/ru') }}">
    <link rel="alternate" hreflang="en" href="{{ url('/locales/en') }}">
    <link rel="alternate" hreflang="x-default" href="{{ url('/') }}">

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('images/logo.png') }}" type="image/png">
    <link rel="apple-touch-icon" href="{{ asset('images/logo.png') }}">

    <!-- Open Graph -->
    <meta property="og:locale" content="{{ session('locale', 'ru') === 'en' ? 'en_US' : 'ru_RU' }}">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="{{ $siteName }}">
    <meta property="og:url" content="{{ $canonicalUrl }}">
    <meta property="og:title" content="{{ $seoTitle }}">
    <meta property="og:description" content="{{ $seoDescription }}">
    <meta property="og:image" content="{{ $seoImage }}">
    <meta property="og:image:alt" content="{{ $siteName }}">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $seoTitle }}">
    <meta name="twitter:description" content="{{ $seoDescription }}">
    <meta name="twitter:image" content="{{ $seoImage }}">

    <!-- Theme -->
    <meta name="theme-color" content="#ffffff">

    <!-- Styles -->
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin>
    <link rel="preconnect" href="https://www.googletagmanager.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css">
    <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.min.css') }}">

    <!-- Icons -->
    <script defer src="https://cdn.jsdelivr.net/npm/@phosphor-icons/web@2.0.3"></script>

    <!-- Mode -->
    <script>
        (() => {
            try {
                const mode = localStorage.getItem('mode') || 'light';
                document.documentElement.setAttribute('data-mode', mode);
            } catch (e) {}
        })();
    </script>

    <!-- Structured Data: Organization -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "ProfessionalService",
            "name": "WELLSOFT",
            "alternateName": "WellSoft IT Solutions",
            "url": "{{ url('/') }}",
            "logo": "{{ asset('images/logo.png') }}",
            "image": "{{ $seoImage }}",
            "description": "{{ $defaultDescription }}",
            "telephone": "+998991832233",
            "priceRange": "$$",
            "address": {
                "@type": "PostalAddress",
                "streetAddress": "10/48 UzumBog ko'chasi",
                "addressLocality": "Tashkent",
                "addressRegion": "Tashkent",
                "postalCode": "100000",
                "addressCountry": "UZ"
            },
            "geo": {
                "@type": "GeoCoordinates",
                "latitude": "41.2995",
                "longitude": "69.2401"
            },
            "areaServed": [
                { "@type": "City", "name": "Tashkent" },
                { "@type": "Country", "name": "Uzbekistan" }
            ],
            "hasOfferCatalog": {
                "@type": "OfferCatalog",
                "name": "IT Services",
                "itemListElement": [
                    { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Website Development" } },
                    { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Landing Page Creation" } },
                    { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "E-commerce Development" } },
                    { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Mobile App Development" } },
                    { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "SEO Optimization" } }
                ]
            },
            "sameAs": [
                "https://www.facebook.com/wellsoft",
                "https://www.instagram.com/wellsoft",
                "https://t.me/WellSoftOfficial",
                "https://wellsoft.uz"
            ]
        }
    </script>

    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-5G0KT1KDQK"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'G-5G0KT1KDQK');
    </script>
</head>

<body>

    @include('components.header')
    @yield('main')
    @include('components.footer')


    {{-- Libraries loaded synchronously so they are available when deferred custom scripts execute --}}
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"></script>

    {{-- Custom scripts (defer is safe now — libraries above are already parsed) --}}
    <script defer src="{{ asset('/js/main.min.js') }}"></script>
    <script defer src="{{ asset('/js/plugins.min.js') }}"></script>
    <script defer src="{{ asset('/js/particles.min.js') }}"></script>
    <script defer src="{{ '/js/custom-plugin.min.js' }}"></script>
    <script defer src="{{ asset('/js/animation.min.js') }}"></script>

    {{-- AOS init: runs after everything is loaded --}}
    <script>
        window.addEventListener('load', function () {
            AOS.init({
                offset: 80,
                duration: 800,
                easing: 'ease-in-out',
                once: false,
                mirror: true
            });
        });
    </script>
</body>
</html>
