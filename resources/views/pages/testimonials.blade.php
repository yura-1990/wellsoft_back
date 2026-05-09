@extends('.layouts.app')
@section('title', __('testimonials_meta_title'))
@section('description', __('testimonials_meta_description'))
@section('keywords', __('testimonials_meta_keywords'))

@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div>
            <div class="particles_hero">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-8 h-100">
                            <div class="d-flex align-items-start justify-content-center h-100">
                                <div>

                                    <h1 class="fs-three p6-color fw-bold mb-3" data-aos="fade-up" data-aos-duration="800"
                                        style="margin-top: calc(100vh / 2.5)">
                                        {{ __('testimonials_meta_title') }}
                                    </h1>
                                    <p class="p6-color home-sizing-five fs-six mb-3" data-aos="fade-up"
                                        data-aos-duration="800">
                                        Более 150 клиентов по всему СНГ доверяют WELLSOFT создание и развитие своих цифровых
                                        продуктов.
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

    <section class="testimonial pt-120 pb-120">
        <div class="process_heading w-100 text-center">
            <span class="fs-ten fw-semibold p3-color mb-2 text-center">Testimonials</span>
            <h2 class="fs-two fw-semibold p6-color mb-6">
                Our Client Recent Feedback
            </h2>
        </div>
        <div class="mt-8 mt-lg-15 container">
            <div class="swiper testimonial_slider swiper-initialized swiper-horizontal swiper-backface-hidden">
                <div class="swiper-wrapper" id="swiper-wrapper-26a8be5e6ad0cf73" aria-live="off"
                    style="transition-duration: 2500ms; transform: translate3d(-438px, 0px, 0px);">




                    <div class="swiper-slide swiper-slide-prev" role="group" aria-label="2 / 4" data-swiper-slide-index="1"
                        style="width: 408px; margin-right: 30px;">
                        <div class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4">
                            <div class="d-flex gap-4 gap-lg-8">
                                <div class="">
                                    <img src="../images/team1.webp" alt="testimonial" class="testimonial_img">
                                </div>
                                <div>
                                    <h4 class="fs-five p6-color">Olivia Jon</h4>
                                    <span class="fs-eleven d-block mb-3">Digital Marketing</span>
                                    <div class="d-flex gap-1">
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="p6-color mt-4 mt-lg-8">
                                "Команда WELLSOFT разработала для нас современный интернет-магазин, который не только круто
                                выглядит, но и приносит реальные продажи. Огромное спасибо за профессиональный подход и
                                SEO-оптимизацию!"
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide swiper-slide-active" role="group" aria-label="3 / 4"
                        data-swiper-slide-index="2" style="width: 408px; margin-right: 30px;">
                        <div class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4">
                            <div class="d-flex gap-4 gap-lg-8">
                                <div class="">
                                    <img src="../images/team7.webp" alt="testimonial" class="testimonial_img">
                                </div>
                                <div>
                                    <h4 class="fs-five p6-color">Russel Doe</h4>
                                    <span class="fs-eleven d-block mb-3">Web Designer</span>
                                    <div class="d-flex gap-1">
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="p6-color mt-4 mt-lg-8">
                                "Как дизайнер, я очень требователен к деталям. Специалисты WELLSOFT превзошли мои ожидания:
                                код чистый, верстка пиксель-в-пиксель, а скорость загрузки сайта просто потрясающая.
                                Рекомендую!"
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide swiper-slide-next" role="group" aria-label="4 / 4" data-swiper-slide-index="3"
                        style="width: 408px; margin-right: 30px;">
                        <div class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4">
                            <div class="d-flex gap-4 gap-lg-8">
                                <div class="">
                                    <img src="../images/team3.webp" alt="testimonial" class="testimonial_img">
                                </div>
                                <div>
                                    <h4 class="fs-five p6-color">James Jon</h4>
                                    <span class="fs-eleven d-block mb-3">Store Owner</span>
                                    <div class="d-flex gap-1">
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="p6-color mt-4 mt-lg-8">
                                "Благодаря WELLSOFT наш бизнес вышел на новый уровень. Они разработали для нас удобный
                                корпоративный портал и настроили рекламные кампании, которые увеличили поток клиентов в 3
                                раза."
                            </p>
                        </div>
                    </div>
                    <div class="swiper-slide" role="group" aria-label="1 / 4" data-swiper-slide-index="0"
                        style="width: 408px; margin-right: 30px;">
                        <div class="px-4 px-sm-8 py-5 py-sm-10 border cus-border second bg10-color rounded-4">
                            <div class="d-flex gap-4 gap-lg-8">
                                <div class="">
                                    <img src="../images/team8.webp" alt="testimonial" class="testimonial_img">
                                </div>
                                <div>
                                    <h4 class="fs-five p6-color">Jhone Doe</h4>
                                    <span class="fs-eleven d-block mb-3">Freelancer</span>
                                    <div class="d-flex gap-1">
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                        <i class="ph-fill ph-star p3-color"></i>
                                    </div>
                                </div>
                            </div>
                            <p class="p6-color mt-4 mt-lg-8">
                                "Отличная веб-студия в Ташкенте! Заказывали лендинг под ключ — всё сделали в срок,
                                предложили классные креативные идеи и обеспечили полную техническую поддержку после
                                запуска."
                            </p>
                        </div>
                    </div>
                </div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
        </div>
    </section>

@endsection