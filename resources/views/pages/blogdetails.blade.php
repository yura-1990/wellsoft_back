
@extends('.layouts.app')
@section('title', $blogItem->getTranslatedAttribute('title', session('locale')) . ' | WELLSOFT')
@section('description', \Illuminate\Support\Str::limit(strip_tags($blogItem->getTranslatedAttribute('description', session('locale'))), 160))
@section('keywords', __('blog_meta_keywords'))
@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div >
            <div class="particles_hero">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-8 h-100">
                            <div
                                class="d-flex align-items-start justify-content-center h-100"
                            >
                                <div>

                                    <h2
                                        class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                        data-aos="fade-up"
                                        data-aos-duration="800"
                                        style="margin-top: 150px"
                                    >
                                        {{$blogItem->blog->webMenu->getTranslatedAttribute('name', session('locale'))}} {{ __('details') }}
                                    </h2>
                                    <h4 class="text-white fs-three fw-semibold mt-4 mt-md-8 mb-2">
                                        {{ $blogItem->getTranslatedAttribute('title', session('locale')) }}
                                    </h4>
                                    <p
                                        class="p6-color fs-ten"
                                        data-aos="fade-down"
                                        data-aos-duration="800"
                                    >
                                        {{ $blogItem->getTranslatedAttribute('description', session('locale')) }}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero section end -->

    <section class="pt-120 pb-120 blog_details_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div>
                        <div>
                            <img src="{{ \TCG\Voyager\Facades\Voyager::image($blogItem->images) }}" alt="..." class="w-full">
                        </div>
                        <h4 class="p4-color fs-three fw-semibold mt-4 mt-md-8 mb-2">
                            {{ $blogItem->getTranslatedAttribute('title', session('locale')) }}
                        </h4>
                        <span class="p4-color fs-eleven">
                            <img src="../images/logo.jpg" alt="{{ $blogItem->getTranslatedAttribute('title', session('locale')) }}" width="40" height="40" class="rounded-pill">
                            WellSoft
                            <br> {{ \Carbon\Carbon::parse($blogItem->created_at)->format('F Y') }}
                        </span>
                        <div class="blog_info mt-5">
                            {!! $blogItem->getTranslatedAttribute('blog_info', session('locale')) !!}
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="blog_sticky">
                        <h3 class="p4-color mb-3 mb-md-6">{{ $blogItem->getTranslatedAttribute('title', session('locale')) }}</h3>
                        <p class="p4-color mb-3">
                            {{ $blogItem->getTranslatedAttribute('description', session('locale')) }}
                        </p>
                        <div class="my-3 my-md-6 rounded p-3 p-md-6">
                            <h3 class="p4-color mb-3 mb-md-6">{{ __('categories') }}</h3>
                            <div class="row">
                                @foreach($blogItem->services as $service)
                                    <a href="{{ url('/services') }}" class="p4-color fw-semibold pb-4">
                                        {{ $service->getTranslatedAttribute('title', session('locale')) }}
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
