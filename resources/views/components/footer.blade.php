<!-- Footer section start -->
<section class="bg11-color footer_section">
    <div class="pt-120 pb-120">
        <div class="container">
            <div class="row g-6">
                <div class="col-12 col-xl-3">
                    <div class="mb-3 mb-lg-6">
                        <img src="{{ asset('/images/logodark.png') }}" alt="WELLSOFT Logo" width="150" height="40" loading="lazy" />
                    </div>
                    <p class="p6-color   ">{{ __("experiences") }}</p>

                </div>

                <div class="col-sm-6 col-xl-3">
                    @php
                        $filteredMenu = $menus->filter(fn($m) => $m->url == null);
                    @endphp

                    <h3 class="fs-five p6-color mb-3 mb-md-5">
                        @foreach($filteredMenu as $item)
                            {{ $item->getTranslatedAttribute('name', session('locale')) }}
                        @endforeach
                    </h3>

                    @foreach($menus as $menuItem)
                        @if($menuItem->url && $menuItem->url !== 'services' && $menuItem->url !== 'blog' && $menuItem->url !== 'contact' && $menuItem->url !== 'team')
                            <a
                                href="{{ $menuItem->url }}"
                                class="d-flex align-items-center flex-shrink-0 gap-2 mb-2 mb-md-3"
                            >
                                <div>
                                    <img src="{{asset('/images/point.webp')}}" alt="Bullet point" width="12" height="12" loading="lazy" />
                                </div>
                                <span class="fs-ten p6-color fw-medium footer_tag">{{ $menuItem->getTranslatedAttribute('name', session('locale')) }}</span>
                            </a>
                        @endif

                    @endforeach

                    <div class="d-xl-none d-block " style="margin-top: 35px;">
                        <div class="col-12 col-xl-3">
                            <h3 class="fs-five p6-color mb-3 mb-md-5">{{ __('contacts') }}</h3>
                            <div class="d-flex gap-2 gap-md-4 align-items-center mb-3 mb-md-2" >
                                <i class="ph-fill ph-map-pin fs-six p6-color ms-1" aria-hidden="true"></i>
                                <span>{{ __('address')  }}</span>
                            </div>
                            <div class="d-flex gap-2 gap-md-4 align-items-center mb-3 mb-md-2" >
                                <i class="ph-fill ph-phone-incoming fs-six p6-color ms-1" aria-hidden="true"></i>
                                <a href="tel:+998991832233">+998 (99) 183-22-33</a>
                            </div>
                            <div class="d-flex gap-2 gap-md-4 align-items-center">
                                <i class="ph-fill ph-envelope fs-six p6-color ms-1" aria-hidden="true"></i>
                                <a href="mailto:yurayur1990@gmail.com">support@support.com</a>
                            </div>
                            <div class="d-flex gap-2 gap-md-4 align-items-center pt-5">
                                <div class="d-flex flex-wrap gap-3 mt-3">
                                    <a
                                            href="https://t.me/WellSoftOfficial"
                                            class="footer_icon d-flex justify-content-center align-items-center"
                                            aria-label="Follow us on Telegram"
                                            rel="noopener noreferrer"
                                            target="_blank"
                                    >
                                        <i class="fa-brands fa-telegram fs-six"></i>
                                    </a>

                                    <a
                                            href="#"
                                            class="footer_icon d-flex justify-content-center align-items-center"
                                            aria-label="Follow us on Instagram"
                                            rel="noopener noreferrer"
                                            target="_blank"
                                    >
                                        <i class="ph ph-instagram-logo fs-six"></i>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3 " >
                    @foreach($services as $service)
                        @php
                            $wordArray = explode(' ', $service->getTranslatedAttribute('title', session('locale')))[0]
                        @endphp
                        <h3 class="fs-five p6-color mb-3 mb-md-5">{{ str_replace(',', '', $wordArray) }}</h3>

                        @foreach($service->serviceItems as $serviceItem)
                            <a href="{{ url('/services') }}" class="d-flex align-items-center flex-shrink-0 gap-2 mb-2 mb-md-3">
                                <div> <img src="{{ asset('/images/point.webp') }}" alt="Bullet point" width="12" height="12" loading="lazy" /> </div>
                                <span class="fs-ten p6-color fw-medium footer_tag" >{{ $serviceItem->getTranslatedAttribute('title', session('locale')) }}</span
                                >
                            </a>
                        @endforeach

                    @endforeach
                </div>
                <div class="col-12 col-xl-3 d-xl-block d-none">
                    <h3 class="fs-five p6-color mb-3 mb-md-5">{{ __('contacts') }}</h3>
                    <div
                        class="d-flex gap-2 gap-md-4 align-items-center mb-3 mb-md-5"
                    >
                        <i class="ph-fill ph-map-pin fs-six p6-color" aria-hidden="true"></i>
                        <span>{{ __('address')  }}</span>
                    </div>
                    <div
                        class="d-flex gap-2 gap-md-4 align-items-center mb-3 mb-md-5"
                    >
                        <i class="ph-fill ph-phone-incoming fs-six p6-color" aria-hidden="true"></i>
                        <a href="tel:+998991832233">+998 (99) 183-22-33</a>
                    </div>
                    <div class="d-flex gap-2 gap-md-4 align-items-center">
                        <i class="ph-fill ph-envelope fs-six p6-color" aria-hidden="true"></i>
                        <a href="mailto:rasul_umarov@wellsoft.uz">rasul_umarov@wellsoft.uz</a>
                    </div>
                    <div class="d-flex gap-2 gap-md-4 align-items-center mt-5">
                        <div class="d-flex flex-wrap gap-3">
                            <a
                                href="https://t.me/WellSoftOfficial"
                                class="footer_icon d-flex justify-content-center align-items-center"
                                aria-label="Follow us on Telegram"
                                rel="noopener noreferrer"
                                target="_blank"
                            >
                                <i class="fa-brands fa-telegram fs-six"></i>
                            </a>

                            <a
                                href="#"
                                class="footer_icon d-flex justify-content-center align-items-center"
                                aria-label="Follow us on Instagram"
                                rel="noopener noreferrer"
                                target="_blank"
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
    <div class="container pb-4 text-center">
        <p class="p6-color fs-eleven">
            {{ __('meta_title') }} — {{ __('meta_description') }}
        </p>
    </div>
</section>
<!-- Footer section end -->
