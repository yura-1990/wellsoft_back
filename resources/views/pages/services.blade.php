@extends('.layouts.app')
@section('title', __('services_meta_title'))
@section('description', __('services_meta_description'))
@section('keywords', __('services_meta_keywords'))
@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div id="particles-js">
            <div class="">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-6 h-100">
                            <div class="d-flex align-items-start justify-content-center h-100">
                                <div>
                                    @foreach($services as $service)

                                        <h1 class="fs-three p6-color fw-bold mb-3" data-aos="fade-up" data-aos-duration="800"
                                            style="margin-top: calc(100vh / 2.5)">
                                            {{ __('services_meta_title') }}
                                        </h1>
                                        <p class="p6-color fs-ten" data-aos="fade-down" data-aos-duration="800">
                                            {{ $service->getTranslatedAttribute('description', session('locale')) }}
                                        </p>

                                    @endforeach

                                    <div class="mt-5 d-flex flex-wrap gap-4 gap-lg-5 align-items-center aos-init"
                                        data-aos="fade-up" data-aos-duration="800">
                                        <a href="{{ url('/' . app()->getLocale() . '/contact') }}" class="btn p6-color"
                                            style="display:flex; width: 295px; " aria-label="Get Quotes">
                                            <span class="btn-text-0">{{ __('get_quotes') }}</span>
                                            <span class="btn-text-1">{{ __('get_quotes') }}</span>
                                        </a>
                                        <div class="d-flex align-items-center gap-lg-5">
                                            <div class="d-flex">
                                                <div
                                                    class="choose_icon_width bg1-color d-flex flex-shrink-0 justify-content-center align-items-center">
                                                    <i class="ph ph-phone-call text-white fs-three" aria-hidden="true"></i>
                                                </div>
                                                <div class="choose_icon_width choose_img">
                                                    <img src="../images/chooseImg.webp" alt="Service Representative"
                                                        width="60" height="60" loading="lazy">
                                                </div>
                                            </div>
                                            <a href="tel:+998991832233" class=" fw-semibold fs-six "
                                                aria-label="Call us">+998 (99) 183 22 33</a>
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
            <div class="d-flex flex-wrap gap-5 justify-content-between align-items-end" data-aos="fade-down"
                data-aos-duration="800">
                <div class="service_heading">
                    <span
                        class="fs-ten fw-semibold p2-color mb-2">{{ $service->getTranslatedAttribute('subtitle', session('locale')) }}</span>
                    <h2 class="fs-two fw-semibold p8-color mb-6">
                        {{ $service->getTranslatedAttribute('title', session('locale')) }} </h2>
                    <p class="fs-ten p4-color">{{ $service->getTranslatedAttribute('description', session('locale')) }}</p>
                </div>
                {{-- <div>--}}
                    {{-- <a href="{{ url('/' . app()->getLocale() . '/services') }}" class="btn p6-color">--}}
                        {{-- <span class="btn-text-0">{{ __('see_services') }}</span>--}}
                        {{-- <span class="btn-text-1">{{ __('see_services') }}</span>--}}
                        {{-- </a>--}}
                    {{-- </div>--}}
            </div>
            <div class="w-100" style="box-shadow: 0px 0px 3px #0A2E6B; background: #fff; height: 0.1px; margin: 25px 0;"></div>
            <div class="row g-2 g-lg-5">
                @foreach($service->serviceItems as $serviceItem)
                    <div class="col-12 col-sm-6 col-xl-4" data-aos="fade-up" data-aos-duration="700">
                        <div class="text-center px-10 py-8 hover:bg6-color service_card_hover">
                            <div class="d-flex justify-content-center">
                                <img src="{{ \TCG\Voyager\Facades\Voyager::image($serviceItem->icon_dark) }}"
                                    alt="{{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}" width="80"
                                    height="80" loading="lazy" class="mode dark" />

                                <img src="{{ \TCG\Voyager\Facades\Voyager::image($serviceItem->icon_light) }}"
                                    alt="{{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}" width="80"
                                    height="80" loading="lazy" class="mode light" />
                            </div>
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
@endsection