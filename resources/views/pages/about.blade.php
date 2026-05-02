
@extends('.layouts.app')
@section('title', __('about_meta_title'))
@section('description', __('about_meta_description'))
@section('keywords', __('about_meta_keywords'))

@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div>
            <div class="particles_hero">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-8 h-100">
                            <div
                                class="d-flex align-items-start justify-content-center h-100"
                            >
                                @foreach($aboutUs as $about)
                                    <div>

                                        <h1
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                            style="margin-top: 250px"
                                        >
                                            {{ __('about_meta_title') }}
                                        </h1>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $about->getTranslatedAttribute('description', session('locale')) }}
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
                                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($aboutUsItemChild->icon_dark) }}"
                                                 alt="{{ $aboutUsItemChild->getTranslatedAttribute('title', session('locale')) }}"
                                                 width="60"
                                                 height="60"
                                                 loading="lazy"
                                                 class="mode dark"
                                            >

                                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($aboutUsItemChild->icon_light) }}"
                                                 alt="{{ $aboutUsItemChild->getTranslatedAttribute('title', session('locale')) }}"
                                                 width="60"
                                                 height="60"
                                                 loading="lazy"
                                                 class="mode light"
                                            >
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

                            <div class="mt-5 d-flex flex-wrap gap-4 gap-lg-5 align-items-center aos-init" data-aos="fade-up" data-aos-duration="800">
                                            <a href="/contact" class="btn p6-color w-50" aria-label="Get Quotes">
                                                <span class="btn-text-0">{{ __('get_quotes') }}</span>
                                                <span class="btn-text-1">{{ __('get_quotes') }}</span>
                                            </a>
                                            <div class="d-flex align-items-center gap-lg-5">
                                                <div class="d-flex">
                                                    <div class="choose_icon_width bg1-color d-flex flex-shrink-0 justify-content-center align-items-center">
                                                        <i class="ph ph-phone-call text-white fs-three" aria-hidden="true"></i>
                                                    </div>
                                                    <div class="choose_icon_width choose_img">
                                                        <img src="../images/chooseImg.webp" alt="Client Support" width="60" height="60" loading="lazy">
                                                    </div>  
                                                </div>
                                                <a href="tel:+998991832233" class="p4-color fw-semibold fs-six" aria-label="Call us">+998 (99) 183 22 33</a>
                                            </div>
                                        </div>
                        </div>
                    </div>

                    <div class="col-xl-5 aos-init aos-animate" data-aos="zoom-in" data-aos-duration="800">
                        <div class="">
                            <img class="choose_us object-fit-cover" src="{{ \TCG\Voyager\Facades\Voyager::image($aboutItem->image) }}" alt="About WellSoft Team" width="500" height="500" loading="lazy">
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>
    @endforeach

@endsection
