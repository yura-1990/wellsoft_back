<!-- Footer section start -->
<section class="bg11-color footer_section">
    <div class="pt-120 pb-120">
        <div class="container">
            <div class="row g-6">
                <div class="col-12 col-xl-3">
                    <div class="mb-3 mb-lg-6">
                        <img src="./images/logodark.png" alt="logo" width="150" />
                    </div>
                    <p class="p6-color   ">{{ __("experiences") }}</p>
{{--                    <div class="my-3 my-sm-5 my-md-10">--}}
{{--                        <button class="btn2">--}}
{{--                            <span class="btn-text-0">{{ __('request_demo') }}</span>--}}
{{--                            <span class="btn-text-1">{{ __('request_demo') }}</span>--}}
{{--                        </button>--}}
{{--                    </div>--}}

                </div>

                <div class="col-sm-6 col-xl-3">
                    @php
                        $filteredMenu = $menus->filter(fn($m) => $m->url == null);
                    @endphp

                    <h4 class="fs-five p6-color mb-3 mb-md-5">
                        @foreach($filteredMenu as $item)
                            {{ $item->getTranslatedAttribute('name', session('locale')) }} <!-- Assuming you want to display the 'name' of the item -->
                        @endforeach
                    </h4>

                    @foreach($menus as $menuItem)
                        @if($menuItem->url && $menuItem->url !== 'services' && $menuItem->url !== 'blog' && $menuItem->url !== 'contact' && $menuItem->url !== 'team')
                            <a
                                href="{{ $menuItem->url }}"
                                class="d-flex align-items-center flex-shrink-0 gap-2 mb-2 mb-md-3"
                            >
                                <div>
                                    <img src="./images/point.webp" alt="point" />
                                </div>
                                <span class="fs-ten p6-color fw-medium footer_tag">{{ $menuItem->getTranslatedAttribute('name', session('locale')) }}</span>
                            </a>
                        @endif

                    @endforeach
                </div>
                <div class="col-sm-6 col-xl-3">
                    @foreach($services as $service)
                        @php
                            $wordArray = explode(' ', $service->getTranslatedAttribute('title', session('locale')))[0]
                        @endphp
                        <h5 class="fs-five p6-color mb-3 mb-md-5">{{ str_replace(',', '', $wordArray) }}</h5>

                        @foreach($service->serviceItems as $serviceItem)
                            <a href="{{ url('/services') }}" class="d-flex align-items-center flex-shrink-0 gap-2 mb-2 mb-md-3" >
                                <div> <img src="./images/point.webp" alt="point" /> </div>
                                <span class="fs-ten p6-color fw-medium footer_tag" >{{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}</span
                                >
                            </a>
                        @endforeach

                    @endforeach
                </div>
                <div class="col-12 col-xl-3">
                    <h4 class="fs-five p6-color mb-3 mb-md-5">{{ __('contacts') }}</h4>
                    <div
                        class="d-flex gap-2 gap-md-4 align-items-center mb-3 mb-md-5"
                    >
                        <i class="ph-fill ph-map-pin fs-six p6-color"></i>
                        <span>Tashkent, Uzbekistan</span>
                    </div>
                    <div
                        class="d-flex gap-2 gap-md-4 align-items-center mb-3 mb-md-5"
                    >
                        <i class="ph-fill ph-phone-incoming fs-six p6-color"></i>
                        <a href="tel:+1-847-555-5555">+998 (90) 183-22-33</a>
                    </div>
                    <div class="d-flex gap-2 gap-md-4 align-items-center">
                        <i class="ph-fill ph-envelope fs-six p6-color"></i>
                        <a href="mailto:yurayur1990@gmail.com">support@support.com</a>
                    </div>
                    <div class="d-flex gap-2 gap-md-4 align-items-center mt-5">
                        <div class="d-flex flex-wrap gap-3">
                            <a
                                href="https://t.me/WellSoftOfficial"
                                class="footer_icon d-flex justify-content-center align-items-center"
                            >
                                <i class="fa-brands fa-telegram fs-six"></i>
                            </a>

                            <a
                                href="#"
                                class="footer_icon d-flex justify-content-center align-items-center"
                            >
                                <i class="ph ph-instagram-logo fs-six"></i>
                            </a>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <hr class="border cus-border border-four my-0" />
    <div
        class="container d-flex sm:gap-3 flex-wrap justify-content-md-between justify-content-center py-3 py-md-6"
    >
        <span class="p6-color sm:fs-ten" >{{ __('copyright') }}</span
        >
        <div class="d-flex gap-4">
            <a href="{{ url('/terms') }}" class="p6-color sm:fs-ten">{{ __('terms_conditions') }}</a>
            <span class="p6-color sm:fs-ten">|</span>
            <a href="{{ url('/privacy') }}" class="p6-color sm:fs-ten">{{ __('privacy_policy') }}</a>
        </div>
    </div>
</section>
<!-- Footer section end -->
