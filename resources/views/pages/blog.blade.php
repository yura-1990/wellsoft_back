@extends('.layouts.app')
@section('title', __('blog_meta_title'))
@section('description', __('blog_meta_description'))
@section('keywords', __('blog_meta_keywords'))
@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div id="">
            <div class="particles_hero">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-8 h-100">
                            <div class="d-flex align-items-start justify-content-center h-100">
                                @foreach($blogs as $blog)
                                    <div>
                                        <h1 class="fs-three p6-color fw-bold mb-3" data-aos="fade-up"
                                            data-aos-duration="800" style="margin-top: calc(100vh / 2.5)">
                                            {{ __('blog_meta_title') }}
                                        </h1>
                                        <p class="p6-color home-sizing-five fs-six mb-3" data-aos="fade-up"
                                            data-aos-duration="800">
                                            {{ $blog->getTranslatedAttribute('description', session('locale')) }}
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

    @foreach($blogs as $blog)
        <section class="pt-120 pb-120">
            <div class="container">
                <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-up">
                    <span
                        class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $blog->getTranslatedAttribute('subtitle', session('locale')) }}</span>
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
                                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($blogItem->images) }}"
                                                alt="{{ $blogItem->getTranslatedAttribute('title', session('locale')) }}"
                                                width="400" height="304" loading="lazy" class="rounded-top w-full blog_image">
                                        </div>
                                        <div
                                            class="p-3 p-md-5 position-absolute bottom-0 w-100 blog-content z-2 d-flex gap-3 align-items-end justify-content-start">
                                            <img src="../images/logo.jpg" alt="WellSoft Logo" width="40" height="40" loading="lazy"
                                                class="rounded-pill">
                                            <div>
                                                <h4 class="p6-color fs-ten fw-semibold">WellSoft</h4>
                                                <span
                                                    class="p3-color fs-seven">{{ \Carbon\Carbon::parse($blogItem->created_at)->format('F Y') }}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-3 p-md-6">
                                        <div class="d-flex gap-3 gap-md-5 mb-3">
                                            <div>
                                                @foreach($blogItem->services as $key => $services)
                                                    @if($key < 1)
                                                        <button class="fs-seven p6-color bg1-color rounded-pill h-40px">
                                                            {{ $services->getTranslatedAttribute('title', session('locale')) }}
                                                        </button>
                                                    @endif
                                                @endforeach
                                            </div>
                                            <div class="d-flex align-items-center gap-1 flex-shrink-0">
                                                <img src="../images/point.webp" alt="point" width="12" height="12"
                                                    class="object-fit-cover">
                                                <span class="fs-ten p4-color">{{ __('10_min_read') }}</span>
                                            </div>
                                        </div>
                                        <a href="{{ url('/' . app()->getLocale() . '/blog-items/' . $blogItem->id) }}"
                                            class="fs-five fw-semibold p8-color mb-2 mb-md-4 d-block line-text">
                                            {{ $blogItem->getTranslatedAttribute('title', session('locale')) }}
                                        </a>
                                        <p class="fs-ten p4-color line-text">
                                            {{ $blogItem->getTranslatedAttribute('description', session('locale')) }}
                                        </p>
                                        <hr class="border cus-border my-3 my-lg-6">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="d-flex gap-3 gap-md-6">
                                                {{-- <button class="d-flex align-items-center gap-1 love_btn">--}}
                                                    {{-- <i class="ph ph-heart fs-five p4-color"></i>--}}
                                                    {{-- <span class="fs-ten p4-color">40</span>--}}
                                                    {{-- </button>--}}
                                                {{-- <button class="d-flex align-items-center gap-1 cmnt_btn">--}}
                                                    {{-- <i class="ph ph-chat-circle fs-five p4-color"></i>--}}
                                                    {{-- <span class="fs-ten p4-color">36</span>--}}
                                                    {{-- </button>--}}
                                            </div>

                                            <a href="{{ url('/' . app()->getLocale() . '/blog-items/' . $blogItem->id) }}"
                                                class="underline-hover-effect d-flex align-items-center gap-1"><span
                                                    class="fs-ten p4-color">{{ __('read_more') }}</span>
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


@endsection