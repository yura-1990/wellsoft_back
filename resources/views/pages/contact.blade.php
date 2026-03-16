
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
                                @foreach($contacts as $contact)
                                    <div>
                                        <h2
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                        >
                                            {{ $contact->webMenu->getTranslatedAttribute('name', session('locale')) }}
                                        </h2>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $contact->getTranslatedAttribute('description', session('locale')) }}
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
{{--                                @if(count($contactInfo->children)>0)--}}
{{--                                    <div class="d-flex flex-wrap gap-3">--}}
{{--                                        @foreach($contactInfo->children as $children)--}}
{{--                                            <a href="{{ $children->url }}" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                                @if($children->icon)--}}
{{--                                                    <i class="{{ $children->icon }}"></i>--}}
{{--                                                @endif--}}
{{--                                                {{ $children->info }}--}}
{{--                                            </a>--}}
{{--                                        @endforeach--}}
{{--                                    </div>--}}
{{--                                @else--}}
{{--                                    <span class="p11-color fs-eleven">{{ $contactInfo->info }}</span>--}}
{{--                                @endif--}}

                            </div>
                        @endforeach
{{--                        <div class="mb-5 mb-md-6 mb-xxl-11">--}}
{{--                            <h4 class="fs-five p6-color mb-2">Our address info</h4>--}}
{{--                            <span class="p11-color fs-eleven">Tashkent, Uzbekistan</span>--}}
{{--                        </div>--}}
{{--                        <div class="mb-5 mb-md-6 mb-xxl-11">--}}
{{--                            <h4 class="fs-five p6-color mb-2">Phone:</h4>--}}
{{--                            <span class="p11-color fs-eleven d-block mb-2">+998 (90) 183-22-33</span>--}}
{{--                        </div>--}}
{{--                        <div class="mb-5 mb-md-6 mb-xxl-11">--}}
{{--                            <h4 class="fs-five p6-color mb-2">Email:</h4>--}}
{{--                            <span class="p11-color fs-eleven d-block mb-2">support@domain.com</span>--}}
{{--                            <span class="p11-color fs-eleven d-block">info@example.com</span>--}}
{{--                        </div>--}}
{{--                        <div class="social_info">--}}
{{--                            <h4 class="fs-five p6-color mb-2 mb-md-4">Our Social info</h4>--}}
{{--                            <div class="d-flex flex-wrap gap-3">--}}
{{--                                <a href="javascriopt:void(0)" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                    <i class="ph ph-facebook-logo fs-six p6-color"></i>--}}
{{--                                </a>--}}
{{--                                <a href="javascriopt:void(0)" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                    <i class="ph ph-x-logo fs-six p6-color"></i>--}}
{{--                                </a>--}}
{{--                                <a href="javascriopt:void(0)" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                    <i class="ph ph-linkedin-logo fs-six p6-color"></i>--}}
{{--                                </a>--}}
{{--                                <a href="javascriopt:void(0)" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                    <i class="ph ph-instagram-logo fs-six p6-color"></i>--}}
{{--                                </a>--}}
{{--                                <a href="javascriopt:void(0)" class="contact_icon d-flex justify-content-center align-items-center">--}}
{{--                                    <i class="ph ph-youtube-logo fs-six p6-color"></i>--}}
{{--                                </a>--}}
{{--                            </div>--}}
{{--                        </div>--}}
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
