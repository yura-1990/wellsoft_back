<!DOCTYPE html>
<html lang="{{ session('locale', 'ru') }}" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    @php
        $currentPath = Request::path();
        $seoData = \App\Models\Seo::where('url_path', $currentPath)->first();

        $siteName = 'WELLSOFT';
        $defaultTitle = 'Разработка сайтов и IT-решений любой сложности';
        $defaultDescription = 'Ищете гибкие IT-решения и первоклассные услуги? WELLSOFT — профессиональная разработка сайтов, интернет-магазинов и корпоративных порталов в Ташкенте и Узбекистане. Закажите разработку под ключ!';
        $defaultKeywords = 'гибкие IT-решения, первоклассные услуги, разработка сайтов, создание сайтов, Ташкент, Узбекистан, заказать сайт, веб-студия';
        $defaultImage = asset('images/logo.png');

        $seoTitle = $seoData && $seoData->title ? $seoData->title : trim($__env->yieldContent('title', $defaultTitle));
        $seoDescription = $seoData && $seoData->description ? $seoData->description : trim($__env->yieldContent('description', $defaultDescription));
        $seoKeywords = $seoData && $seoData->keywords ? $seoData->keywords : trim($__env->yieldContent('keywords', $defaultKeywords));
        $seoImage = $seoData && $seoData->image ? asset('storage/' . $seoData->image) : trim($__env->yieldContent('image', $defaultImage));
        $canonicalUrl = $seoData && $seoData->canonical_url ? $seoData->canonical_url : url()->current();

        $availableLocales = config('voyager.multilingual.locales', ['ru', 'en']);
        $currentLocale = app()->getLocale();
        $pathWithoutLocale = preg_replace('#^/?' . $currentLocale . '(/|$)#', '', '/' . $currentPath);
        $pathWithoutLocale = ltrim($pathWithoutLocale, '/');
    @endphp

    <title>{{ $seoTitle }} | WELLSOFT</title>
    <meta name="description" content="{{ $seoDescription }}">
    <meta name="keywords" content="{{ $seoKeywords }}">
    <meta name="author" content="WELLSOFT">
    <meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
    <meta name="googlebot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
    <meta name="rating" content="general">
    <meta name="revisit-after" content="7 days">
    <meta name="language" content="{{ $currentLocale === 'en' ? 'English' : 'Russian' }}">

    <!-- Canonical -->
    <link rel="canonical" href="{{ $canonicalUrl }}">

    <!-- Hreflang for multilingual SEO -->
    @foreach($availableLocales as $loc)
        <link rel="alternate" hreflang="{{ $loc }}" href="{{ url("/$loc/" . $pathWithoutLocale) }}">
        @if($loc === 'ru')
            <link rel="alternate" hreflang="ru-UZ" href="{{ url("/$loc/" . $pathWithoutLocale) }}">
            <link rel="alternate" hreflang="ru-RU" href="{{ url("/$loc/" . $pathWithoutLocale) }}">
            <link rel="alternate" hreflang="ru-KZ" href="{{ url("/$loc/" . $pathWithoutLocale) }}">
            <link rel="alternate" hreflang="ru-TJ" href="{{ url("/$loc/" . $pathWithoutLocale) }}">
        @endif
    @endforeach
    <link rel="alternate" hreflang="x-default" href="{{ url("/ru/" . $pathWithoutLocale) }}">

    <!-- Favicon -->
    <link rel="icon" href="{{ asset('images/logo.png') }}" type="image/png">
    <link rel="apple-touch-icon" href="{{ asset('images/logo.png') }}">

    <!-- Open Graph -->
    <meta property="og:locale" content="{{ session('locale', 'ru') === 'en' ? 'en_US' : 'ru_RU' }}">
    <meta property="og:locale:alternate" content="{{ session('locale', 'ru') === 'en' ? 'ru_RU' : 'en_US' }}">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="{{ $siteName }}">
    <meta property="og:url" content="{{ $canonicalUrl }}">
    <meta property="og:title" content="{{ $seoTitle }}">
    <meta property="og:description" content="{{ $seoDescription }}">
    <meta property="og:image" content="{{ $seoImage }}">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <meta property="og:image:alt" content="{{ $siteName }} - {{ $seoTitle }}">

    <!-- Twitter Card -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@WellSoftUZ">
    <meta name="twitter:creator" content="@WellSoftUZ">
    <meta name="twitter:title" content="{{ $seoTitle }}">
    <meta name="twitter:description" content="{{ $seoDescription }}">
    <meta name="twitter:image" content="{{ $seoImage }}">
    <meta name="twitter:image:alt" content="{{ $siteName }}">

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
    @if($seoData && $seoData->json_ld)
    <script type="application/ld+json">
        {!! $seoData->json_ld !!}
    </script>
    @else
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "ProfessionalService",
            "name": "WELLSOFT",
            "alternateName": "WellSoft IT Solutions",
            "url": "{{ url('/') }}",
            "logo": {
                "@type": "ImageObject",
                "url": "{{ asset('images/logo.png') }}",
                "width": 200,
                "height": 60
            },
            "image": "{{ $seoImage }}",
            "description": "{{ $defaultDescription }}",
            "telephone": "+998991832233",
            "email": "info@wellsoft.uz",
            "priceRange": "$$",
            "currenciesAccepted": "USD, UZS",
            "paymentAccepted": "Cash, Credit Card, Bank Transfer",
            "foundingDate": "2020",
            "numberOfEmployees": { "@type": "QuantitativeValue", "value": 15 },
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
            "openingHoursSpecification": [
                {
                    "@type": "OpeningHoursSpecification",
                    "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"],
                    "opens": "09:00",
                    "closes": "18:00"
                }
            ],
            "areaServed": [
                { "@type": "City", "name": "Tashkent" },
                { "@type": "Country", "name": "Uzbekistan" },
                { "@type": "Country", "name": "Russia" },
                { "@type": "Country", "name": "Kazakhstan" },
                { "@type": "Country", "name": "Tajikistan" }
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
    @endif

    <!-- WebSite Schema with SearchAction (enables Google Sitelinks Search Box) -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "WebSite",
        "name": "WELLSOFT",
        "url": "{{ url('/') }}",
        "inLanguage": ["ru", "en"],
        "potentialAction": {
            "@type": "SearchAction",
            "target": {
                "@type": "EntryPoint",
                "urlTemplate": "{{ url('/ru/blog') }}?q={search_term_string}"
            },
            "query-input": "required name=search_term_string"
        }
    }
    </script>

    <!-- BreadcrumbList Schema -->
    @php
        $breadcrumbs = [
            ['name' => 'WELLSOFT', 'url' => url('/' . $currentLocale)]
        ];
        $segments = explode('/', $pathWithoutLocale);
        $built = '/' . $currentLocale;
        foreach(array_filter($segments) as $seg) {
            $built .= '/' . $seg;
            $breadcrumbs[] = ['name' => ucfirst(str_replace(['-', '_'], ' ', $seg)), 'url' => url($built)];
        }
    @endphp
    @if(count($breadcrumbs) > 1)
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "BreadcrumbList",
        "itemListElement": [
            @foreach($breadcrumbs as $i => $crumb)
            {
                "@type": "ListItem",
                "position": {{ $i + 1 }},
                "name": "{{ $crumb['name'] }}",
                "item": "{{ $crumb['url'] }}"
            }{{ !$loop->last ? ',' : '' }}
            @endforeach
        ]
    }
    </script>
    @endif

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
