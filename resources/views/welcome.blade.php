
@extends('layouts.app')
@section('metaTitle', __('meta_title'))
@section('metaDescription', __('meta_description'))
@section('metaKeywords', __('meta_keywords'))
@section('main')
<!-- Hero section start -->
<section class="particial-bg">

    <div id="particles-js">
        <div class="particles_hero">
            <div class="container h-100">
                <div class="row pt-20 h-100">
                    <div class="col-lg-6 h-100">
                        <div
                            class="d-flex align-items-center justify-content-center h-100"
                        >
                            <div>
                                <div
                                    data-aos="fade-up"
                                    data-aos-duration="800"
                                    class="w-100 d-flex gap-3 align-items-center px-3 px-lg-5 py-2 py-lg-3 border cus-border second rounded-pill hero_hot mb-3 mb-lg-6"
                                >
                                    <button class="px-3 px-lg-5 py-2 rounded-pill p5-color bg3-color" >
                                        Hot
                                    </button>
                                    <span class="p6-color" >{{ __('delivering_superior_services_it_solutions') }}</span>
                                </div>
                                <h2
                                    class="fs-one p6-color fw-bold mb-3 mb-lg-5"
                                    data-aos="fade-up"
                                    data-aos-duration="800"
                                >
                                    {{ __('providing_best_services_it_solutions') }}
                                </h2>
                                <p
                                    class="p6-color fs-ten"
                                    data-aos="fade-down"
                                    data-aos-duration="800"
                                >
                                    {{ __('customize_template') }}
                                </p>
                                <div data-aos="fade-down" data-aos-duration="800">
                                    <div
                                        class="d-flex flex-wrap gap-3 gap-md-6 my-5 my-md-10"
                                        data-aos="fade-down"
                                    >
                                        <a href="{{ url('/contact') }}" class="btn p6-color">
                                            <span class="btn-text-0">{{ __('get_quotes') }}</span>
                                            <span class="btn-text-1">{{ __('get_quotes') }}</span>
                                        </a>
                                        <a href="{{ url('/services') }}" class="btn p6-color">
                                            <span class="btn-text-0">{{ __('get_started') }}</span>
                                            <span class="btn-text-1">{{ __('get_started') }}</span>
                                        </a>
                                    </div>
                                    <div class="d-flex flex-wrap gap-3">
                                        <a
                                            href="http://t.me/WellSoftOfficial" target="_blank"
                                            class="footer_icon d-flex justify-content-center align-items-center"
                                        >
                                            <i class="fa-brands fa-telegram"></i>
                                        </a>
                                        <a
                                            href="http://t.me/WellSoftOfficial" target="_blank"
                                            class="footer_icon d-flex justify-content-center align-items-center"
                                        >
                                            <i class="fa-brands fa-instagram"></i>
                                        </a>
                                        <a
                                            href="javascriopt:void(0)"
                                            class="footer_icon d-flex justify-content-center align-items-center"
                                        >
                                            <i class="fa-brands fa-facebook"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero section end -->

@foreach($services as $service)
    <!-- service section start  -->
    <section class="container pt-120 pb-120">
        <div
            class="d-flex flex-wrap gap-5 justify-content-between align-items-end"
            data-aos="fade-down"
            data-aos-duration="800"
        >
            <div class="service_heading">
                <span class="fs-ten fw-semibold p2-color mb-2">{{ $service->getTranslatedAttribute('subtitle', session('locale')) }}</span>
                <h2 class="fs-two fw-semibold p8-color mb-6">{{ $service->getTranslatedAttribute('title', session('locale')) }} </h2>
                <p class="fs-ten p4-color">{{ $service->getTranslatedAttribute('description', session('locale')) }}</p>
            </div>
            <div>
                <a href="{{ url('/services') }}" class="btn p6-color">
                    <span class="btn-text-0">{{ __('see_services') }}</span>
                    <span class="btn-text-1">{{ __('see_services') }}</span>
                </a>
            </div>
        </div>
        <div class="row g-2 g-lg-5 mt-7 mt-lg-15">
            @foreach($service->serviceItems as $serviceItem)
                <div
                    class="col-12 col-sm-6 col-xl-4"
                    data-aos="fade-up"
                    data-aos-duration="700"
                >
                    <div
                        class="text-center px-10 py-8 hover:bg6-color service_card_hover"
                    >
                        <img
                            src="{{ \TCG\Voyager\Facades\Voyager::image($serviceItem->icon) }}"
                            alt="{{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}"
                            width="80"
                            height="80"
                        />
                        <h4 class="fs-five fw-semibold p8-color mt-8 mb-4">
                            {{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}
                        </h4>
                        <p class="p4-color fs-ten">
                            {{ $serviceItem->getTranslatedAttribute('description', session('locale')) }}
                        </p>
                    </div>
                </div>
            @endforeach

        </div>
    </section>
    <!-- service section end  -->
@endforeach

<!-- Our Process Flow start -->
{{--<section class="pt-120 pb-120 bg7-color">--}}
{{--    <div class="container">--}}
{{--        <div--}}
{{--            class="process_heading w-100 text-center"--}}
{{--            data-aos="fade-down"--}}
{{--            data-aos-duration="800"--}}
{{--        >--}}
{{--          <span class="fs-ten fw-semibold p2-color mb-2 text-center"--}}
{{--          >Our Process Flow</span--}}
{{--          >--}}
{{--            <h2 class="fs-two fw-semibold p8-color mb-6">--}}
{{--                How we help of your business Grow and successful--}}
{{--            </h2>--}}
{{--        </div>--}}
{{--        <div class="row g-5 mt-7 mt-lg-15">--}}
{{--            <div--}}
{{--                class="col-12 col-sm-6 col-xl-4"--}}
{{--                data-aos="fade-up"--}}
{{--                data-aos-duration="700"--}}
{{--            >--}}
{{--                <div class="text-center px-5 px-lg-15 service_card_hover">--}}
{{--                    <div--}}
{{--                        class="process_icon_bg d-flex justify-content-center align-items-center mx-auto position-relative"--}}
{{--                    >--}}
{{--                        <img--}}
{{--                            src="./images/service.webp"--}}
{{--                            alt="apps"--}}
{{--                            width="60"--}}
{{--                            height="60"--}}
{{--                        />--}}
{{--                        <div--}}
{{--                            class="process_icon_num d-flex justify-content-center align-items-center position-absolute"--}}
{{--                        >--}}
{{--                            01--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <h4 class="fs-five fw-semibold p8-color mt-8 mb-4">--}}
{{--                        Choose a Service--}}
{{--                    </h4>--}}
{{--                    <p class="p4-color fs-ten">--}}
{{--                        We focus on the best practices for it solutions and services.--}}
{{--                    </p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div--}}
{{--                class="col-12 col-sm-6 col-xl-4"--}}
{{--                data-aos="fade-up"--}}
{{--                data-aos-duration="800"--}}
{{--            >--}}
{{--                <div class="text-center px-5 px-lg-15">--}}
{{--                    <div--}}
{{--                        class="process_icon_bg d-flex justify-content-center align-items-center mx-auto position-relative"--}}
{{--                    >--}}
{{--                        <img--}}
{{--                            src="./images/metting.webp"--}}
{{--                            alt="apps"--}}
{{--                            width="60"--}}
{{--                            height="60"--}}
{{--                        />--}}
{{--                        <div--}}
{{--                            class="process_icon_num d-flex justify-content-center align-items-center position-absolute"--}}
{{--                        >--}}
{{--                            02--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <h4 class="fs-five fw-semibold p8-color mt-8 mb-4">--}}
{{--                        Request a Meeting--}}
{{--                    </h4>--}}
{{--                    <p class="p4-color fs-ten">--}}
{{--                        We focus on the best practices for it solutions and services.--}}
{{--                    </p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div--}}
{{--                class="col-12 col-sm-6 col-xl-4"--}}
{{--                data-aos="fade-up"--}}
{{--                data-aos-duration="900"--}}
{{--            >--}}
{{--                <div class="text-center px-5 px-lg-15">--}}
{{--                    <div--}}
{{--                        class="process_icon_bg d-flex justify-content-center align-items-center mx-auto position-relative"--}}
{{--                    >--}}
{{--                        <img--}}
{{--                            src="./images/plan.webp"--}}
{{--                            alt="apps"--}}
{{--                            width="60"--}}
{{--                            height="60"--}}
{{--                        />--}}
{{--                        <div--}}
{{--                            class="process_icon_num d-flex justify-content-center align-items-center position-absolute"--}}
{{--                        >--}}
{{--                            03--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <h4 class="fs-five fw-semibold p8-color mt-8 mb-4">--}}
{{--                        Receive Custom Plan--}}
{{--                    </h4>--}}
{{--                    <p class="p4-color fs-ten">--}}
{{--                        We focus on the best practices for it solutions and services.--}}
{{--                    </p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
<!-- Our Process Flow End -->

<!--Service slider Section start  -->
<section class="pt-60 pb-60 bg4-color position-relative">
    <div class="swiper service_slider">
        <div class="swiper-wrapper d-flex align-items-center">
            @foreach($service->serviceItems as $serviceItem)
                <div class="swiper-slide">
                    <h1
                        class="display-three fw-bold p5-color text-center d-inline-flex align-items-center gap-8 gap-md-15"
                    >
                        {{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}<span class="slider_line p5-color"></span>
                    </h1>
                </div>
            @endforeach
        </div>
    </div>
</section>
<!--Service slider Section end  -->

@foreach($aboutUs as $about)
    <section class="pt-120 pb-120">
        <div class="container">
            @foreach($about->aboutItems as $aboutItem)
                <div class="row g-5">

                    <div class="col-xl-7">
                        <div class="h-100">
                            <div class="service_heading aos-init aos-animate" data-aos="fade-down" data-aos-duration="800">
                                <span class="fs-ten fw-semibold p2-color mb-2">{{ $about->getTranslatedAttribute('subtitle', session('locale')) }}</span>
                                <h2 class="fs-two fw-semibold p8-color mb-6 w-100">
                                    {{ $about->getTranslatedAttribute('title', session('locale')) }}
                                </h2>
                                <p class="fs-ten p4-color">
                                    {{ $about->getTranslatedAttribute('description', session('locale')) }}
                                </p>
                            </div>

                            <div class="mt-8 mt-lg-15">
                                <div class="row g-4 g-lg-8">
                                    @foreach($aboutItem->aboutUsItemChildren as $aboutUsItemChild)
                                        <div class="col-md-6 aos-init aos-animate" data-aos="fade-up" data-aos-duration="800">
                                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($aboutUsItemChild->icon) }}" alt="security" width="60" height="60">
                                            <h5 class="fs-five p8-color mt-3 mt-lg-6 mb-2 mb-lg-4">
                                                {{ $aboutUsItemChild->getTranslatedAttribute('title', session('locale')) }}
                                            </h5>
                                            <div class="fs-ten p4-color">
                                                {!! $aboutUsItemChild->getTranslatedAttribute('info', session('locale')) !!}
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>

                            <div class="mt-6 mt-lg-12 d-flex flex-wrap gap-4 gap-lg-8 align-items-center aos-init" data-aos="fade-up" data-aos-duration="800">
                                <a href="/contact" class="btn p6-color">
                                    <span class="btn-text-0">{{ __('get_quotes') }}</span>
                                    <span class="btn-text-1">{{ __('get_quotes') }}</span>
                                </a>
                                <div class="d-flex align-items-center gap-lg-5">
                                    <div class="d-flex">
                                        <div class="choose_icon_width bg1-color d-flex flex-shrink-0 justify-content-center align-items-center">
                                            <i class="ph ph-phone-call text-white fs-three"></i>
                                        </div>
                                        <div class="choose_icon_width choose_img">
                                            <img src="../images/chooseImg.webp" alt="...">
                                        </div>
                                    </div>
                                    <a href="tel:+998901832233" class="p4-color fw-semibold fs-six">+998 (90) 183 22 33</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-5 aos-init aos-animate" data-aos="zoom-in" data-aos-duration="800">
                        <div class="">
                            <img class="choose_us object-fit-cover" src="{{ \TCG\Voyager\Facades\Voyager::image($aboutItem->image) }}" alt="...">
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
@endforeach

<!-- Protfolio section start -->
@foreach($portfolios as $portfolio)
    <section class="pt-120 bg7-color pb-5">
        <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-down" data-aos-duration="800">
            <span class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $portfolio->getTranslatedAttribute('subtitle', session('locale')) }}</span>
            <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">{{ $portfolio->getTranslatedAttribute('title', session('locale')) }}</h2>
            <p class="fs-ten p4-color">
                {{ $portfolio->getTranslatedAttribute('description', session('locale')) }}
            </p>
        </div>
        <!-- tab  -->
        <div>
            <ul data-aos="zoom-in" data-aos-duration="800" class="tabs d-flex justify-content-center flex-wrap gap-2 gap-md-3 p-2 mt-8 mt-lg-15 mb-4 md:mb-8 aos-init">
                <li data-tab-target="#all" class="active cursor-pointer p4-color border cus-border border-six rounded-pill px-3 px-md-6 py-2 py-md-3 tab">
                    {{ __('all') }}
                </li>
                @foreach($portfolio->portfolioItems as $portfolioItem)
                    <li data-tab-target="#{{str_replace(" ", "_", $portfolioItem->type)}}" class="cursor-pointer p4-color border cus-border border-six rounded-pill px-3 px-md-6 py-2 py-md-3 tab">
                        {{ $portfolioItem->getTranslatedAttribute('type', session('locale'))  }}
                    </li>
                @endforeach
            </ul>
            <div id="all" data-tab-content="" class="active">
                <div class="row g-3">
                    @foreach($portfolio->portfolioItems as $portfolioItem)
                        <div class="col-sm-6 col-md-4 col-lg-3 aos-init" data-aos="fade-up" data-aos-duration="700">
                            <div class="single_project position-relative z-1">
                                <div>
                                    <img src="{{ \TCG\Voyager\Facades\Voyager::image($portfolioItem->photo) }}" class="w-full" alt="...">
                                </div>
                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">
                                    <h4 class="p1-color fs-five mb-2 mb-md-4">
                                        {{ $portfolioItem->getTranslatedAttribute('name', session('locale'))  }}
                                    </h4>
                                    <span class="p9-color fs-seven">{{ $portfolioItem->getTranslatedAttribute('description', session('locale'))  }} </span>
                                </div>
                            </div>
                        </div>
                        @foreach($portfolioItem->children as $child)
                            <div class="col-sm-6 col-md-4 col-lg-3 aos-init" data-aos="fade-up" data-aos-duration="700">
                                <div class="single_project position-relative z-1">
                                    <div>
                                        <img src="{{ \TCG\Voyager\Facades\Voyager::image($child->photo) }}" class="w-full" alt="...">
                                    </div>
                                    <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">
                                        <h4 class="p1-color fs-five mb-2 mb-md-4">
                                            {{ $child->getTranslatedAttribute('name', session('locale'))  }}
                                        </h4>
                                        <span class="p9-color fs-seven">{{ $child->getTranslatedAttribute('description', session('locale'))  }} </span>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endforeach
                </div>
            </div>
            <div class="tab-content position-relative">
                @foreach($portfolio->portfolioItems as $portfolioItem)
                    <div id="{{str_replace(" ", "_", $portfolioItem->type)}}" data-tab-content="" class="">
                        <div class="row g-3">
                            <div class="col-sm-6 col-md-4 col-lg-3 aos-init" data-aos="fade-up" data-aos-duration="700">
                                <div class="single_project position-relative z-1">
                                    <div>
                                        <img src="{{ \TCG\Voyager\Facades\Voyager::image($portfolioItem->photo) }}" class="w-full" alt="...">
                                    </div>
                                    <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">
                                        <h4 class="p1-color fs-five mb-2 mb-md-4">
                                            {{ $portfolioItem->getTranslatedAttribute('name', session('locale'))  }}
                                        </h4>
                                        <span class="p9-color fs-seven">{{ $portfolioItem->getTranslatedAttribute('description', session('locale'))  }} </span>
                                    </div>
                                </div>
                            </div>
                            @foreach($portfolioItem->children as $child)
                                <div class="col-sm-6 col-md-4 col-lg-3 aos-init" data-aos="fade-up" data-aos-duration="700">
                                    <div class="single_project position-relative z-1">
                                        <div>
                                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($child->photo) }}" class="w-full" alt="...">
                                        </div>
                                        <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">
                                            <h4 class="p1-color fs-five mb-2 mb-md-4">
                                                {{ $child->getTranslatedAttribute('name', session('locale'))  }}
                                            </h4>
                                            <span class="p9-color fs-seven">{{ $child->getTranslatedAttribute('description', session('locale'))  }} </span>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                @endforeach
                {{--                <!-- branding  -->--}}
                {{--                <div id="branding" data-tab-content="">--}}
                {{--                    <div class="row g-3">--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3 aos-init aos-animate" data-aos="fade-up" data-aos-duration="700">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio1.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3 aos-init aos-animate" data-aos="fade-up" data-aos-duration="800">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio6.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3 aos-init aos-animate" data-aos="fade-up" data-aos-duration="900">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio7.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3 aos-init aos-animate" data-aos="fade-up" data-aos-duration="1000">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio8.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}

                {{--                <!-- degine -->--}}
                {{--                <div id="design" data-tab-content="">--}}
                {{--                    <div class="row g-3">--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio3.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio4.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio5.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio6.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio7.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio8.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}
                {{--                <!-- development  -->--}}
                {{--                <div id="development" data-tab-content="">--}}
                {{--                    <div class="row g-3">--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio1.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio2.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio3.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio4.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio6.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio7.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio8.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}
                {{--                <!-- solution  -->--}}
                {{--                <div id="solution" data-tab-content="">--}}
                {{--                    <div class="row g-3">--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio6.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio7.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                        <div class="col-sm-6 col-md-4 col-lg-3">--}}
                {{--                            <div class="single_project position-relative z-1">--}}
                {{--                                <div>--}}
                {{--                                    <img src="../images/portfolio8.webp" class="w-full" alt="...">--}}
                {{--                                </div>--}}
                {{--                                <div class="p-3 p-md-5 position-absolute bottom-0 bg6-color w-100 project-content z-2">--}}
                {{--                                    <h4 class="p1-color fs-five mb-2 mb-md-4">--}}
                {{--                                        App for Virtual Reality--}}
                {{--                                    </h4>--}}
                {{--                                    <span class="p9-color fs-seven">App Development </span>--}}
                {{--                                </div>--}}
                {{--                            </div>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                {{--                </div>--}}
            </div>
        </div>
    </section>
@endforeach
<!-- Protfolio section end  -->

<!-- Counter section start  -->
{{--<section class="pt-120">--}}
{{--    <div class="parallax bg4-color">--}}
{{--        <div class="container">--}}
{{--            <div class="row py-10 py-md-20">--}}
{{--                <div class="col-lg-6">--}}
{{--                    <div class="h-100 d-flex align-items-center">--}}
{{--                        <div--}}
{{--                            class="d-flex align-items-center justify-content-lg-between w-100"--}}
{{--                        >--}}
{{--                            <div class="p-10">--}}
{{--                                <h1 class="p6-color display-nine counter">35</h1>--}}
{{--                                <span class="p6-color fs-four fw-semibold"--}}
{{--                                >Years Of Experience</span--}}
{{--                                >--}}
{{--                            </div>--}}
{{--                            <img--}}
{{--                                src="./images/arrow.webp"--}}
{{--                                alt="arrow"--}}
{{--                                class="object-fit-contain counter_arrow"--}}
{{--                            />--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-lg-6">--}}
{{--                    <div class="h-100 d-flex align-items-center">--}}
{{--                        <div class="counter_right_side bg9-color rounded-4">--}}
{{--                            <div class="row g-0">--}}
{{--                                <div class="col-sm-6">--}}
{{--                                    <div--}}
{{--                                        class="border-bottom border-end cus-border second py-10 py-lg-15"--}}
{{--                                    >--}}
{{--                                        <h2 class="display-two p3-color text-center">--}}
{{--                                            <span class="counter">1160</span>+--}}
{{--                                        </h2>--}}
{{--                                        <span class="p6-color d-block text-center"--}}
{{--                                        >Happy Clients</span--}}
{{--                                        >--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-sm-6">--}}
{{--                                    <div--}}
{{--                                        class="border-bottom border-start cus-border second py-10 py-lg-15"--}}
{{--                                    >--}}
{{--                                        <h2 class="display-two p3-color text-center">--}}
{{--                                            <span class="counter">1545</span>+--}}
{{--                                        </h2>--}}
{{--                                        <span class="p6-color d-block text-center"--}}
{{--                                        >Happy Clients</span--}}
{{--                                        >--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-sm-6">--}}
{{--                                    <div--}}
{{--                                        class="border-top border-end cus-border second py-10 py-lg-15"--}}
{{--                                    >--}}
{{--                                        <h2 class="display-two p3-color text-center">--}}
{{--                                            <span class="counter">50</span>+--}}
{{--                                        </h2>--}}
{{--                                        <span class="p6-color d-block text-center"--}}
{{--                                        >Happy Clients</span--}}
{{--                                        >--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="col-sm-6">--}}
{{--                                    <div--}}
{{--                                        class="border-top border-start cus-border second py-10 py-lg-15"--}}
{{--                                    >--}}
{{--                                        <h2 class="display-two p3-color text-center">--}}
{{--                                            <span class="counter">25</span>+--}}
{{--                                        </h2>--}}
{{--                                        <span class="p6-color d-block text-center"--}}
{{--                                        >Happy Clients</span--}}
{{--                                        >--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
<!-- Counter section end -->

<!-- Choose plan section start -->
{{--<section class="pt-120 pb-120">--}}
{{--    <div class="container">--}}
{{--        <div--}}
{{--            class="process_heading w-100 text-center"--}}
{{--            data-aos="fade-down"--}}
{{--            data-aos-duration="800"--}}
{{--        >--}}
{{--          <span class="fs-ten fw-semibold p2-color mb-2 text-center"--}}
{{--          >Choose Your Plan</span--}}
{{--          >--}}
{{--            <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">--}}
{{--                Choose the right plan for your business--}}
{{--            </h2>--}}
{{--            <p class="fs-ten p4-color">--}}
{{--                Build responsive, mobile-first projects on the web with the world's--}}
{{--                most popular front-end component library.--}}
{{--            </p>--}}
{{--        </div>--}}
{{--        <div class="mt-8 mt-lg-15">--}}
{{--            <div class="row g-6">--}}
{{--                <div--}}
{{--                    class="col-md-6 col-xl-4"--}}
{{--                    data-aos="fade-up"--}}
{{--                    data-aos-duration="800"--}}
{{--                >--}}
{{--                    <div class="position-relative pricing_section">--}}
{{--                        <div--}}
{{--                            class="px-4 px-lg-8 py-5 py-lg-10 border cus-border border-six rounded-4"--}}
{{--                        >--}}
{{--                            <div--}}
{{--                                class="price_icon bg7-color d-flex justify-content-center align-items-center mb-3 mb-md-6"--}}
{{--                            >--}}
{{--                                <i class="ph-fill ph-paper-plane-tilt fs-one p1-color"></i>--}}
{{--                            </div>--}}
{{--                            <h4 class="fs-five p8-color mb-5 mb-lg-10">Basic plan</h4>--}}
{{--                            <h3 class="fs-two fw-semibold p4-color mb-2">--}}
{{--                                $25<span class="fs-ten fw-normal">/Month</span>--}}
{{--                            </h3>--}}
{{--                            <span class="fs-ten fw-normal p4-color"--}}
{{--                            >Basic Plan feature for Per Project</span--}}
{{--                            >--}}
{{--                            <hr class="border cus-border my-4 my-lg-8" />--}}
{{--                            <h4 class="fs-five p4-color mb-4 mb-lg-8">--}}
{{--                                Quick look at all the features--}}
{{--                            </h4>--}}
{{--                            <ul class="mb-6 mb-md-12">--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Unlimited GB Space</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">30 Domain Names</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free SSL</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Daily Backup</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free Templates</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free Email</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">10 Databases</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color"--}}
{{--                                    >Unlimited Email Address</span--}}
{{--                                    >--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Live Support</span>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                            <button--}}
{{--                                class="bg15-color fs-ten p6-color w-100 rounded-pill py-2 py-md-4 price_btn"--}}
{{--                            >--}}
{{--                                Get Started--}}
{{--                            </button>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    class="col-md-6 col-xl-4"--}}
{{--                    data-aos="fade-up"--}}
{{--                    data-aos-duration="900"--}}
{{--                >--}}
{{--                    <div class="position-relative pricing_section">--}}
{{--                        <div--}}
{{--                            class="px-4 px-lg-8 py-5 py-lg-10 border cus-border border-six rounded-4"--}}
{{--                        >--}}
{{--                            <div--}}
{{--                                class="price_icon bg7-color d-flex justify-content-center align-items-center mb-3 mb-md-6"--}}
{{--                            >--}}
{{--                                <i class="ph-fill ph-rocket-launch fs-one p1-color"></i>--}}
{{--                            </div>--}}
{{--                            <h4 class="fs-five p8-color mb-5 mb-lg-10">--}}
{{--                                Professional Plan--}}
{{--                            </h4>--}}
{{--                            <h3 class="fs-two fw-semibold p4-color mb-2">--}}
{{--                                $59<span class="fs-ten fw-normal">/Month</span>--}}
{{--                            </h3>--}}
{{--                            <span class="fs-ten fw-normal p4-color"--}}
{{--                            >Basic Plan feature for Per Project</span--}}
{{--                            >--}}
{{--                            <hr class="border cus-border my-4 my-lg-8" />--}}
{{--                            <h4 class="fs-five p4-color mb-4 mb-lg-8">--}}
{{--                                Quick look at all the features--}}
{{--                            </h4>--}}
{{--                            <ul class="mb-6 mb-md-12">--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Unlimited GB Space</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">30 Domain Names</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free SSL</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Daily Backup</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free Templates</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free Email</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">10 Databases</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color"--}}
{{--                                    >Unlimited Email Address</span--}}
{{--                                    >--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Live Support</span>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                            <button--}}
{{--                                class="bg15-color p6-color fs-ten w-100 rounded-pill py-2 py-md-4 price_btn"--}}
{{--                            >--}}
{{--                                Get Started--}}
{{--                            </button>--}}
{{--                        </div>--}}
{{--                        <div--}}
{{--                            class="position-absolute top-5 end-0 bg2-color px-3 py-2 px-sm-5 py-sm-4 p5-color rounded popular_choices"--}}
{{--                        >--}}
{{--                            Popular Choice--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    class="col-md-6 col-xl-4"--}}
{{--                    data-aos="fade-up"--}}
{{--                    data-aos-duration="1000"--}}
{{--                >--}}
{{--                    <div class="position-relative pricing_section">--}}
{{--                        <div--}}
{{--                            class="px-4 px-lg-8 py-5 py-lg-10 border cus-border border-six rounded-4"--}}
{{--                        >--}}
{{--                            <div--}}
{{--                                class="price_icon bg7-color d-flex justify-content-center align-items-center mb-3 mb-md-6"--}}
{{--                            >--}}
{{--                                <i class="ph-fill ph-lightning fs-one p1-color"></i>--}}
{{--                            </div>--}}
{{--                            <h4 class="fs-five p8-color mb-5 mb-lg-10">--}}
{{--                                Enterprise Plan--}}
{{--                            </h4>--}}
{{--                            <h3 class="fs-two fw-semibold p4-color mb-2">--}}
{{--                                $199<span class="fs-ten fw-normal">/Month</span>--}}
{{--                            </h3>--}}
{{--                            <span class="fs-ten fw-normal p4-color"--}}
{{--                            >Basic Plan feature for Per Project</span--}}
{{--                            >--}}
{{--                            <hr class="border cus-border my-4 my-lg-8" />--}}
{{--                            <h4 class="fs-five p4-color mb-4 mb-lg-8">--}}
{{--                                Quick look at all the features--}}
{{--                            </h4>--}}
{{--                            <ul class="mb-6 mb-md-12">--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Unlimited GB Space</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">30 Domain Names</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free SSL</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Daily Backup</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free Templates</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Free Email</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">10 Databases</span>--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center mb-2 mb-md-3">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color"--}}
{{--                                    >Unlimited Email Address</span--}}
{{--                                    >--}}
{{--                                </li>--}}
{{--                                <li class="d-flex gap-3 align-items-center">--}}
{{--                                    <i class="ph ph-check p4-color fs-five"></i>--}}
{{--                                    <span class="fs-tex p4-color">Live Support</span>--}}
{{--                                </li>--}}
{{--                            </ul>--}}
{{--                            <button--}}
{{--                                class="bg15-color p6-color fs-ten w-100 rounded-pill py-2 py-md-4 price_btn"--}}
{{--                            >--}}
{{--                                Get Started--}}
{{--                            </button>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
<!-- Choose plan section end -->

<!-- Testimonials section start -->
{{--<section class="testimonial pt-120 pb-120">--}}
{{--    <div class="process_heading w-100 text-center">--}}
{{--        <span class="fs-ten fw-semibold p3-color mb-2 text-center"--}}
{{--        >Testimonials</span--}}
{{--        >--}}
{{--        <h2 class="fs-two fw-semibold p6-color mb-6">--}}
{{--            Our Client Recent Feedback--}}
{{--        </h2>--}}
{{--    </div>--}}
{{--    <div class="mt-8 mt-lg-15 container">--}}
{{--        <div class="swiper testimonial_slider">--}}
{{--            <div class="swiper-wrapper">--}}
{{--                <div class="swiper-slide">--}}
{{--                    <div--}}
{{--                        class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-4 gap-lg-8">--}}
{{--                            <div class="">--}}
{{--                                <img--}}
{{--                                    src="./images/team8.webp"--}}
{{--                                    alt="testimonial"--}}
{{--                                    class="testimonial_img"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <div>--}}
{{--                                <h4 class="fs-five p6-color">Jhone Doe</h4>--}}
{{--                                <span class="fs-eleven d-block mb-3">Freelancer</span>--}}
{{--                                <div class="d-flex gap-1">--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <p class="p6-color mt-4 mt-lg-8">--}}
{{--                            Technox is a HTML5 template based on Sass and Bootstrap 5 with--}}
{{--                            modern and creative multipurpose design you can use Best--}}
{{--                            services & IT solutions.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="swiper-slide">--}}
{{--                    <div--}}
{{--                        class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-4 gap-lg-8">--}}
{{--                            <div class="">--}}
{{--                                <img--}}
{{--                                    src="./images/team1.webp"--}}
{{--                                    alt="testimonial"--}}
{{--                                    class="testimonial_img"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <div>--}}
{{--                                <h4 class="fs-five p6-color">Olivia Jon</h4>--}}
{{--                                <span class="fs-eleven d-block mb-3"--}}
{{--                                >Digital Marketing</span--}}
{{--                                >--}}
{{--                                <div class="d-flex gap-1">--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <p class="p6-color mt-4 mt-lg-8">--}}
{{--                            Technox is a HTML5 template based on Sass and Bootstrap 5 with--}}
{{--                            modern and creative multipurpose design you can use Best--}}
{{--                            services & IT solutions.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="swiper-slide">--}}
{{--                    <div--}}
{{--                        class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-4 gap-lg-8">--}}
{{--                            <div class="">--}}
{{--                                <img--}}
{{--                                    src="./images/team7.webp"--}}
{{--                                    alt="testimonial"--}}
{{--                                    class="testimonial_img"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <div>--}}
{{--                                <h4 class="fs-five p6-color">Russel Doe</h4>--}}
{{--                                <span class="fs-eleven d-block mb-3">Web Designer</span>--}}
{{--                                <div class="d-flex gap-1">--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <p class="p6-color mt-4 mt-lg-8">--}}
{{--                            Technox is a HTML5 template based on Sass and Bootstrap 5 with--}}
{{--                            modern and creative multipurpose design you can use Best--}}
{{--                            services & IT solutions.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="swiper-slide">--}}
{{--                    <div--}}
{{--                        class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-4 gap-lg-8">--}}
{{--                            <div class="">--}}
{{--                                <img--}}
{{--                                    src="./images/team3.webp"--}}
{{--                                    alt="testimonial"--}}
{{--                                    class="testimonial_img"--}}
{{--                                />--}}
{{--                            </div>--}}
{{--                            <div>--}}
{{--                                <h4 class="fs-five p6-color">James Jon</h4>--}}
{{--                                <span class="fs-eleven d-block mb-3">Store Owner</span>--}}
{{--                                <div class="d-flex gap-1">--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                    <i class="ph-fill ph-star p3-color"></i>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <p class="p6-color mt-4 mt-lg-8">--}}
{{--                            Technox is a HTML5 template based on Sass and Bootstrap 5 with--}}
{{--                            modern and creative multipurpose design you can use Best--}}
{{--                            services & IT solutions.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
<!-- Testimonials section end -->

<!-- Our Team Section star -->
@foreach($teams as $team)
    <section class="pt-120 pb-120 bg7-color ">
        <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-up" data-aos-duration="800">
            <span class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $team->getTranslatedAttribute('subtitle', session('locale')) }}</span>
            <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">
                {{ $team->getTranslatedAttribute('title', session('locale')) }}
            </h2>
            <p class="fs-ten p4-color">
                {{ $team->getTranslatedAttribute('description', session('locale')) }}
            </p>
        </div>
        <div class="mt-8 mt-md-15 container">
            <div class="row justify-content-center g-1">
                @foreach($team->teamMembers as $key => $teamMember)
                    <div class="col-sm-6 col-md-4 col-xl-3 aos-init aos-animate" data-aos-delay="{{ ($key+10) * 10 }}" data-aos="fade-up">
                        <div class="single_team position-relative z-1 h-100">
                            <div>
                                <img src="{{ \TCG\Voyager\Facades\Voyager::image($teamMember->photo) }}" alt="team" height="480">
                            </div>
                            <div class="team-content p-3 p-md-5 position-absolute bottom-0 bg12-color">
                                <div class="position-absolute bottom-0 pb-6 pb-md-12">
                                    <span class="p3-color fs-ten fw-semibold mb-2">{{ $teamMember->getTranslatedAttribute('position', session('locale')) }}</span>
                                    <h4 class="p4-color fs-five mb-2 mb-md-3">{{ $teamMember->name }}</h4>
                                    <span class="p4-color fs-seven">{{ $teamMember->surname }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>
@endforeach
<!-- Our Team Section end -->

<!-- FAQs section start -->
{{--<section class="pt-120 pb-120">--}}
{{--    <div class="container">--}}
{{--        <div class="process_heading w-100 text-center" data-aos="fade-down">--}}
{{--          <span class="fs-ten fw-semibold p2-color mb-2 text-center"--}}
{{--          >FAQ's</span--}}
{{--          >--}}
{{--            <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">--}}
{{--                Frequently Asked Questions--}}
{{--            </h2>--}}
{{--            <p class="fs-ten p4-color">--}}
{{--                Build responsive, mobile-first projects on the web with the world's--}}
{{--                most popular front-end component library.--}}
{{--            </p>--}}
{{--        </div>--}}
{{--        <div class="row g-2 g-md-6 mt-5 mt-md-10">--}}
{{--            <div class="col-lg-6">--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center rounded-2"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                Can you provide of all IT Managenment services?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center rounded-2"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                Can I change plans later on?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center rounded-2 cursor-pointer"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                Can I try before I buy?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center rounded-2"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                Will I Receive Future Updates?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="col-lg-6">--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                Is this Servies work in my Country?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">How much I will pay?</h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                how can i sign up the contract?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div--}}
{{--                    data-aos="fade-up"--}}
{{--                    class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq"--}}
{{--                >--}}
{{--                    <div--}}
{{--                        class="question d-flex gap-3 justify-content-between align-items-center"--}}
{{--                    >--}}
{{--                        <div class="d-flex gap-2 align-items-center">--}}
{{--                            <div--}}
{{--                                class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center"--}}
{{--                            >--}}
{{--                                <i class="ph ph-arrow-right p5-color"></i>--}}
{{--                            </div>--}}
{{--                            <h3 class="p1-color fs-ten fw-bold">--}}
{{--                                Can you handle ongoing maintenance?--}}
{{--                            </h3>--}}
{{--                        </div>--}}
{{--                        <div class="position-relative">--}}
{{--                            <i class="ph ph-minus p1-color fs-five"></i>--}}
{{--                            <i--}}
{{--                                class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"--}}
{{--                            ></i>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="answer max-h-0 overflow-hidden">--}}
{{--                        <p--}}
{{--                            class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5"--}}
{{--                        >--}}
{{--                            This is the first item's accordion body. It is hidden by--}}
{{--                            default, until the collapse plugin adds the appropriate--}}
{{--                            classes that we use to style each element. These classes--}}
{{--                            control the overall appearance, as well as the showing and--}}
{{--                            hiding via CSS transitions. You can modify any of this with--}}
{{--                            custom CSS or overriding our default variables. It's also--}}
{{--                            worth noting that just about any HTML can go within--}}
{{--                            the .accordion-body, though the transition does limit--}}
{{--                            overflow.--}}
{{--                        </p>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
<!-- FAQs section end -->

<!-- Discuss project section start -->
<section class="dicscuss_projects parallax">
    <div class="pt-120 pb-120">
        <div class="row">
            <div class="col-xl-6"></div>
            <div class="col-xl-6">
                <div class="d-flex align-items-center justify-content-center px-5">
                    <div class="dicscuss-content">
                <span class="fs-ten fw-semibold p2-color mb-2" >{{ __('title') }}</span>
                        <h2 class="fs-two fw-semibold p6-color mb-3 mb-lg-6">
                            {{ __('subtitle') }}
                        </h2>
                        <p class="fs-ten p6-color">
                            {{ __('description') }}
                        </p>
                        <div
                            class="mt-5 mt-lg-10 d-flex flex-wrap gap-4 gap-lg-8 d-flex align-items-center"
                        >
                            <a href="{{ url('/contact') }}" class="btn p6-color">
                                <span class="btn-text-0">{{ __('get_quotes') }}</span>
                                <span class="btn-text-1">{{ __('get_quotes') }}</span>
                            </a>
                            <div class="d-flex align-items-center gap-3 gap-lg-5">
                                <div class="d-flex">
                                    <div
                                        class="choose_icon_width bg1-color d-flex justify-content-center align-items-center"
                                    >
                                        <i class="ph ph-phone-call text-white fs-three"></i>
                                    </div>
                                    <div class="choose_icon_width choose_img">
                                        <img src="./images/chooseImg.webp" alt="..." />
                                    </div>
                                </div>
                                <a
                                    href="tel:+998901832233"
                                    class="p5-color fw-semibold fs-six p6-color"
                                >+998 (90) 183-22-33</a
                                >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Discuss project section end -->

<!-- Blogs section star -->
@foreach($blogs as $blog)
    <section class="pt-120 pb-120">
        <div class="container">
            <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-up">
                <span class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $blog->getTranslatedAttribute('subtitle', session('locale')) }}</span>
                <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">
                    {{ $blog->getTranslatedAttribute('title', session('locale')) }}
                </h2>
                <p class="fs-ten p4-color">
                    {{ $blog->getTranslatedAttribute('description', session('locale')) }}
                </p>
            </div>
            <div class="mt-8 mt-md-15">
                <div class="row g-6">
                    @foreach($blog->blogItems as $blogItem)
                        <div class="col-sm-6 col-lg-4 aos-init" data-aos="fade-up" data-aos-duration="700">
                            <div class="rounded blog_card border cus-border border-six">
                                <div class="single_blog position-relative z-1">
                                    <div class="overflow-hidden">
                                        <img src="{{ \TCG\Voyager\Facades\Voyager::image($blogItem->images) }}" alt="{{ $blogItem->getTranslatedAttribute('title', session('locale')) }}" height="304" class="rounded-top w-full blog_image">
                                    </div>
                                    <div class="p-3 p-md-5 position-absolute bottom-0 w-100 blog-content z-2 d-flex gap-3 align-items-end justify-content-start">
                                        <img src="../images/logo.jpg" alt="{{ $blogItem->getTranslatedAttribute('title', session('locale')) }}" width="40" height="40" class="rounded-pill">
                                        <div>
                                            <h4 class="p6-color fs-ten fw-semibold">WellSoft</h4>
                                            <span class="p3-color fs-seven">{{ \Carbon\Carbon::parse($blogItem->created_at)->format('F Y') }}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="p-3 p-md-6">
                                    <div class="d-flex gap-3 gap-md-5 mb-3">
                                        <div>
                                            @foreach($blogItem->services as $key => $services)
                                                @if($key < 1 )
                                                    <button class="fs-seven p6-color bg1-color rounded-pill h-40px">
                                                        {{ $services->getTranslatedAttribute('title', session('locale')) }}
                                                    </button>
                                                @endif
                                            @endforeach
                                        </div>
                                        <div class="d-flex align-items-center gap-1 flex-shrink-0">
                                            <img src="../images/point.webp" alt="point" width="12" height="12" class="object-fit-cover">
                                            <span class="fs-ten p4-color">{{ __('10_min_read') }}</span>
                                        </div>
                                    </div>
                                    <a href="{{ url("blog-items/$blogItem->id") }}" class="fs-five fw-semibold p8-color mb-2 mb-md-4 d-block line-text">
                                        {{ $blogItem->getTranslatedAttribute('title', session('locale')) }}
                                    </a>
                                    <p class="fs-ten p4-color line-text">
                                        {{ $blogItem->getTranslatedAttribute('description', session('locale')) }}
                                    </p>
                                    <hr class="border cus-border my-3 my-lg-6">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="d-flex gap-3 gap-md-6">
                                            {{--                                                <button class="d-flex align-items-center gap-1 love_btn">--}}
                                            {{--                                                    <i class="ph ph-heart fs-five p4-color"></i>--}}
                                            {{--                                                    <span class="fs-ten p4-color">40</span>--}}
                                            {{--                                                </button>--}}
                                            {{--                                                <button class="d-flex align-items-center gap-1 cmnt_btn">--}}
                                            {{--                                                    <i class="ph ph-chat-circle fs-five p4-color"></i>--}}
                                            {{--                                                    <span class="fs-ten p4-color">36</span>--}}
                                            {{--                                                </button>--}}
                                        </div>

                                        <a href="{{ url("blog-items/$blogItem->id") }}" class="underline-hover-effect d-flex align-items-center gap-1"><span class="fs-ten p4-color">{{ __('read_more') }}</span>
                                            <i class="ph ph-caret-right p4-color"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
@endforeach
<!-- Blogs section end -->

<!-- Contact section start -->
<section class="pt-120 pb-120 bg7-color">
    <div class="container">
        @foreach($contacts as $contact)
            <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-down">
                <span class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $contact->getTranslatedAttribute('subtitle', session('locale')) }}</span>
                <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">
                    {{ $contact->getTranslatedAttribute('title', session('locale')) }} </h2>
                <p class="fs-ten p4-color">
                    {{ $contact->getTranslatedAttribute('description', session('locale')) }}
                </p>
            </div>
        @endforeach
        <div class="row g-3 g-md-6 mt-5 mt-md-10">
            <div class="col-lg-8">
                <form action="{{ url('/contact') }}" id="contact-form" class="bg14-color py-5 py-md-10 px-4 px-md-8 border cus-border border-six rounded-4" method="post">
                    @csrf
                    <div class="d-sm-flex gap-3 gap-lg-6 mb-4 mb-md-8">
                        <div class="w-100">
                            <label class="p4-color fs-ten mb-1">{{__('name')}}:</label>
                            <input type="text" name="name" class="p4-color border cus-border border-six px-3 px-md-6 py-2 py-md-4 rounded" placeholder="Habib Muslim" id="name">
                        </div>
                        <div class="w-100 mt-3 mt-sm-0">
                            <label class="p4-color fs-ten mb-1">{{ __('contactType') }}:</label>
                            <input type="text" name="contact" class="p4-color border cus-border border-six px-3 px-md-6 py-2 py-md-4 rounded" placeholder="{{ __('phoneOrEmailOrTelegram') }}" id="email">
                        </div>
                    </div>
                    {{--                        <div class="mb-4 mb-md-8">--}}
                    {{--                            <label class="p4-color fs-ten mb-1">Subject:</label>--}}
                    {{--                            <input type="text" class="p4-color border cus-border border-six px-3 px-md-6 py-2 py-md-4 rounded" placeholder="Write your Subject" id="subject" required="">--}}
                    {{--                        </div>--}}
                    <div class="mb-5 mb-md-10">
                        <label class="p4-color fs-ten mb-1">{{ __('message') }}:</label>
                        <textarea name="message" class="h-135 p4-color border cus-border border-six px-3 px-md-6 py-2 py-md-4 rounded" placeholder="ERP system" id="message"></textarea>
                    </div>
                    <button type="submit" class="btn2 p6-color" id="contact-submit-btn">
                        <span class="btn-text-0">{{ __('sendMessage') }}</span>
                        <span class="btn-text-1">{{ __('sendMessage') }}</span>
                    </button>
                </form>
            </div>
            <div class="col-lg-4">
                <div class="bg1-color px-5 px-lg-10 py-8 py-md-15 rounded-4">
                    @foreach($contactInfos as $contactInfo)
                        <div class="mb-5 mb-md-6 mb-xxl-11">
                            <h4 class="fs-five p6-color mb-2">{{ $contactInfo->getTranslatedAttribute('type', session('locale')) }}</h4>
                            @if($contactInfo->icon)
                                <a href="{{ $contactInfo->url }}" target="_blank" class="contact_icon d-flex justify-content-start gap-2 align-items-center">
                                    <i class="{{ $contactInfo->icon }}"></i>
                                    {{ $contactInfo->info }}
                                </a>
                            @endif
{{--                            @if(count($contactInfo->children)>0)--}}
{{--                                <div class="d-flex flex-wrap gap-3">--}}
{{--                                    @foreach($contactInfo->children as $children)--}}
{{--                                        <a href="{{ $children->url }}" target="_blank" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                            @if($children->icon)--}}
{{--                                                <i class="{{ $children->icon }}"></i>--}}
{{--                                            @endif--}}
{{--                                            {{ $children->info }}--}}
{{--                                        </a>--}}
{{--                                    @endforeach--}}
{{--                                </div>--}}
{{--                            @else--}}
{{--                                <span class="p11-color  fs-eleven">{{ $contactInfo->info }}</span>--}}
{{--                            @endif--}}

                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact section end -->

@foreach($partners as $partner)
    <!-- Our clients section start -->
    <section class="pt-120 pb-120 our_clients">
        <div class="process_heading w-100 text-center" data-aos="fade-down">
        <span class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $partner->getTranslatedAttribute('subtitle', session('locale')) }}</span
        >
            <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">{{ $partner->getTranslatedAttribute('title', session('locale')) }}</h2>
            <p class="fs-ten p4-color">
                {{ $partner->getTranslatedAttribute('description', session('locale')) }}
            </p>
        </div>
        <div class="mt-8 mt-md-15" data-aos="zoom-out-up">
            <div class="swiper clients_slider">
                <div class="swiper-wrapper d-flex align-items-center">
                    @foreach($partner->partnerInfo as $partnerInfo)
                        <div class="swiper-slide">
                            <div class="px-4 px-md-8 py-5 py-md-10 bg13-color d-flex align-items-center justify-content-center" >
                                <img src="{{ \TCG\Voyager\Facades\Voyager::image($partnerInfo->logo) }}" alt="logo" />
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <!-- Our clients section end -->
@endforeach


@endsection
