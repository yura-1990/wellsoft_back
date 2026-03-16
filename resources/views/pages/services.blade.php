
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
                                    @foreach($services as $service)
                                    <div>
                                        <h2
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                        >
                                            {{ $service->webMenu->getTranslatedAttribute('name', session('locale')) }}
                                        </h2>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $service->getTranslatedAttribute('description', session('locale')) }}
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
{{--                <div>--}}
{{--                    <a href="{{ url('/services') }}" class="btn p6-color">--}}
{{--                        <span class="btn-text-0">{{ __('see_services') }}</span>--}}
{{--                        <span class="btn-text-1">{{ __('see_services') }}</span>--}}
{{--                    </a>--}}
{{--                </div>--}}
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
@endsection
