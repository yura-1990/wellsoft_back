
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
                    <div class="row home-sizing" style="margin-top: 8.25rem;">
                        <div class="col-lg-6 h-100">
                            <div
                                class="d-flex align-items-center justify-content-center h-100"
                            >
                                @foreach($aboutUs as $about)
                                    <div>

                                        <h2
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                        >
                                            {{ $about->webMenu->getTranslatedAttribute('name', session('locale')) }}
                                        </h2>
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

@endsection
