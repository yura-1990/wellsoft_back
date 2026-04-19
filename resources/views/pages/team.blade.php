
@extends('.layouts.app')
@section('title', __('team_meta_title'))
@section('description', __('team_meta_description'))
@section('keywords', __('team_meta_keywords'))
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
                                @foreach($teams as $team)
                                    <div>
                                        <h1
                                            class="fs-one fw-bold mb-3 mb-lg-5 p3-color"
                                            data-aos="fade-up"
                                            data-aos-duration="800"
                                            style="margin-top: 250px"
                                        >
                                            {{ __('team_meta_title') }}
                                        </h1>
                                        <p
                                            class="p6-color fs-ten"
                                            data-aos="fade-down"
                                            data-aos-duration="800"
                                        >
                                            {{ $team->getTranslatedAttribute('description', session('locale')) }}
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

    @foreach($teams as $team)
        <section class="pt-120 pb-120 bg7-color ">
            <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-up" data-aos-duration="800">
                <span class="fs-ten fw-semibold p2-color mb-2 text-center">{{ $team->getTranslatedAttribute('subtitle', session('locale')) }}</span>
                <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">
                    {{ $team->getTranslatedAttribute('title', session('locale')) }}
                </h2>
                <p class="fs-ten p4-color">
                    {{ $team->getTranslatedAttribute('description', session('locale')) }}
                </p>
            </div>
            <div class="mt-8 mt-md-15 container">
                <div class="row justify-content-center g-1">
                    @foreach($team->teamMembers as $key => $teamMember)
                        <div class="col-sm-6 col-md-4 col-xl-3 aos-init aos-animate" data-aos-delay="{{ ($key+10) * 10 }}" data-aos="fade-up">
                            <div class="single_team position-relative z-1 h-100">
                                <div>
                                    <img src="{{ \TCG\Voyager\Facades\Voyager::image($teamMember->photo) }}" alt="team" height="480">
                                </div>
                                <div class="team-content p-3 p-md-5 position-absolute bottom-0 bg12-color">
                                    <div class="position-absolute bottom-0 pb-6 pb-md-12">
                                        <span class="p3-color fs-ten fw-semibold mb-2">{{ $teamMember->getTranslatedAttribute('position', session('locale')) }}</span>
                                        <h4 class="p4-color fs-five mb-2 mb-md-3">{{ $teamMember->name }}</h4>
                                        <span class="p4-color fs-seven">{{ $teamMember->surname }}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </section>
    @endforeach

@endsection
