
@extends('.layouts.app')
@section('title', __('faqs_meta_title'))
@section('description', __('faqs_meta_description'))
@section('keywords', __('faqs_meta_keywords'))

@section('main')
    <!-- Hero section start -->
    <section class="particial-bg">
        <div id="particles-js">
            <div class="particles_hero">
                <div class="container h-100">
                    <div class="row home-sizing">
                        <div class="col-lg-8 h-100">
                            <div
                                class="d-flex align-items-start justify-content-center h-100"
                            >
                                <div>

                                    <h1
                                        class="fs-three p6-color fw-bold mb-3"
                                        data-aos="fade-up"
                                        data-aos-duration="800"
                                        style="margin-top: calc(100vh / 2.5)"
                                    >
                                        {{ __('faqs_meta_title') }}
                                    </h1>
                                    <p
                                        class="p6-color home-sizing-five fs-six mb-3"
                                        data-aos="fade-up"
                                        data-aos-duration="800"
                                    >
                                        Нашли ответы на самые частые вопросы о разработке сайтов, ценах и сроках выполнения.
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

    <section class="pt-120 pb-120">
        <div class="container">
            <div class="process_heading w-100 text-center aos-init aos-animate" data-aos="fade-down">
                <span class="fs-ten fw-semibold p2-color mb-2 text-center">FAQ</span>
                <h2 class="fs-two fw-semibold p8-color mb-3 mb-lg-6">
                    Часто задаваемые вопросы
                </h2>
                <p class="fs-ten p4-color">
                    Всё, что вы хотели знать о сотрудничестве с WELLSOFT.
                </p>
            </div>
            <div class="row g-2 g-md-6 mt-5 mt-md-10">
                <div class="col-lg-6">
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center rounded-2">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    Can you provide of all IT Managenment services?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center rounded-2">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    Can I change plans later on?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center rounded-2 cursor-pointer">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    Can I try before I buy?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center rounded-2">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    Will I Receive Future Updates?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    Is this Servies work in my Country?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">How much I will pay?</h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    how can i sign up the contract?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                    <div data-aos="fade-up" class="p-4 p-md-8 border cus-border border-six mb-2 mb-md-4 cursor-pointer faq aos-init">
                        <div class="question d-flex gap-3 justify-content-between align-items-center">
                            <div class="d-flex gap-2 align-items-center">
                                <div class="faq_icon_width d-flex flex-shrink-0 align-items-center justify-content-center">
                                    <i class="ph ph-arrow-right p5-color"></i>
                                </div>
                                <h3 class="p1-color fs-ten fw-bold">
                                    Can you handle ongoing maintenance?
                                </h3>
                            </div>
                            <div class="position-relative">
                                <i class="ph ph-minus p1-color fs-five"></i>
                                <i class="ph ph-minus fs-five position-absolute rotate-90 faqIcon ms-5 p1-color end-0"></i>
                            </div>
                        </div>
                        <div class="answer max-h-0 overflow-hidden">
                            <p class="p4-color text-base font-medium leading-[150%] pt-3 pt-md-5">
                                This is the first item's accordion body.&nbsp;It is hidden by
                                default, until the collapse plugin adds the appropriate
                                classes that we use to style each element. These classes
                                control the overall appearance, as well as the showing and
                                hiding via CSS transitions. You can modify any of this with
                                custom CSS or overriding our default variables. It's also
                                worth noting that just about any HTML can go within
                                the&nbsp;.accordion-body, though the transition does limit
                                overflow.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQPage Schema for Google Rich Results -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "FAQPage",
        "mainEntity": [
            {
                "@type": "Question",
                "name": "Can you provide all IT Management services?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes! WELLSOFT provides a full range of IT services including website development, mobile apps, CRM systems, e-commerce platforms, SEO optimization, and ongoing technical support."
                }
            },
            {
                "@type": "Question",
                "name": "Can I change plans later on?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Absolutely. You can upgrade or adjust your project scope at any time. We work with flexible contracts designed to adapt to your growing business needs."
                }
            },
            {
                "@type": "Question",
                "name": "Can I try before I buy?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes! We offer a free initial consultation and project scoping session. You can see our previous work in our portfolio before making any decision."
                }
            },
            {
                "@type": "Question",
                "name": "Will I receive future updates?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes. All projects include a warranty period with free bug fixes. We also offer long-term maintenance plans to keep your site updated and secure."
                }
            },
            {
                "@type": "Question",
                "name": "Does this service work in my country?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "WELLSOFT serves clients worldwide, with a focus on Uzbekistan, Russia, Kazakhstan, Tajikistan and Kyrgyzstan. We work fully remotely and can support any timezone."
                }
            },
            {
                "@type": "Question",
                "name": "How much will I pay?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "The cost depends on the complexity and scope of your project. A simple landing page starts from $300, while a full e-commerce or corporate platform can range from $1,000 to $10,000+. Contact us for a free quote."
                }
            },
            {
                "@type": "Question",
                "name": "How can I sign the contract?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "We can sign contracts electronically or in person at our office in Tashkent. Simply reach out via our contact page and we will guide you through the process."
                }
            },
            {
                "@type": "Question",
                "name": "Can you handle ongoing maintenance?",
                "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes! We offer monthly maintenance packages that include security updates, performance monitoring, content updates and technical support."
                }
            }
        ]
    }
    </script>
@endsection
