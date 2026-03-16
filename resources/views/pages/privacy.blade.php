
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
                                @foreach($privacies as $privacy)
                                    <div>
                                        <h2
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                        >
                                            {{ $privacy->webMenu->getTranslatedAttribute('name', session('locale')) }}
                                        </h2>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $privacy->getTranslatedAttribute('description', session('locale')) }}
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

    @foreach($privacies as $privacy)
        <section class="pt-120 pb-120">
            <div class="container">
                @foreach($privacy->privacyPolicyItems as $privacyPolicyItems)
                    <div class="mb-5">
                        <h4 class="fs-three mb-8 mb-md-4 p4-color">
                            {{ $privacyPolicyItems->getTranslatedAttribute('title', session('locale')) }}
                        </h4>
                        <div class="term-condition-items">
                            {!! $privacyPolicyItems->getTranslatedAttribute('description', session('locale')) !!}
                        </div>
                    </div>
                @endforeach
            </div>
        </section>
    @endforeach
@endsection
