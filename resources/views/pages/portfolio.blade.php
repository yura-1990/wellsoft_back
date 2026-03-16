
@extends('.layouts.app')
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
                                @foreach($portfolios as $portfolio)
                                    <div>

                                        <h2
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                        >
                                            {{ $portfolio->webMenu->getTranslatedAttribute('name', session('locale')) }}
                                        </h2>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $portfolio->getTranslatedAttribute('description', session('locale')) }}
                                        </p>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero section end -->
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

@endsection
