
@extends('.layouts.app')
@section('title', __('terms_meta_title'))
@section('description', __('terms_meta_description'))
@section('keywords', __('terms_meta_keywords'))
@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div>
            <div class="particles_hero">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-6 h-100">
                            <div
                                class="d-flex align-items-start justify-content-center h-100"
                            >
                                @foreach($terms as $term)
                                    <div>
                                        <h2
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                            style="margin-top: 250px"
                                        >
                                            {{ $term->webMenu->getTranslatedAttribute('name', session('locale')) }}

                                        </h2>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $term->getTranslatedAttribute('description', session('locale')) }}
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
    @foreach($terms as $term)
    <section class="pt-120 pb-120">
        <div class="container">
            @foreach($term->termConditionItems as $termConditionItem)
                <div class="mb-5">
                    <h4 class="fs-three mb-8 mb-md-4 p4-color">
                        {{ $termConditionItem->getTranslatedAttribute('title', session('locale')) }}
                    </h4>
                    <div class="term-condition-items">
                        {!! $termConditionItem->getTranslatedAttribute('description', session('locale')) !!}
                    </div>
                </div>
            @endforeach
        </div>
    </section>
    @endforeach

@endsection
