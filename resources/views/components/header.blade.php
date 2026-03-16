@php use Illuminate\Support\Facades\Request; @endphp
    <!-- header-section start -->
<header class="header-section header-menu w-100 pt-1 pt-lg-0 pb-3 pb-lg-0">
    <div class="navbar_mainhead header-fixed w-100">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <nav
                        class="navbar navbar-expand-lg position-relative d-flex align-items-center"
                    >
                        <div>
                            <a
                                href="/"
                                class="navbar-brand d-none d-sm-flex align-items-center gap-2"
                            >
                                <img
                                    src="{{ asset('/images/logodark.png') }}"
                                    class="logo"
                                    alt="logo"
                                    width="150"
                                />
                            </a>
                            <a
                                href="/"
                                class="navbar-brand d-sm-none d-flex align-items-center gap-2"
                            >
                                <img
                                    src="{{ asset('/images/logodark.png') }}"
                                    class="logo"
                                    alt="logo"
                                    width="100"
                                />
                            </a>
                        </div>

                        <div class="collapse navbar-collapse" id="navbar-content">
                            <ul
                                class="navbar-nav d-flex align-items-lg-center gap-5 gap-lg-1 gap-xl-4 gap-xxl-5 py-2 py-lg-0 ms-2 ms-xl-10 ms-xxl-20 ps-0 ps-xxl-10 align-self-center"
                            >
                                @foreach($webmenus as $webmenu)
                                    @if(count($webmenu->children) > 0)
                                        @php
                                            $isDropdownActive = collect($webmenu->children)->contains(fn($link) => Request::is(ltrim(parse_url($link['url'], PHP_URL_PATH), '/')));
                                        @endphp
                                        <li class="dropdown show-dropdown dropdown_btn">
                                            <button
                                                type="button"
                                                aria-label="Navbar Dropdown Button"
                                                class=" {{ $isDropdownActive ? 'active' : '' }} dropdown-toggle dropdown-nav d-flex gap-1 align-items-center fs-ten"
                                            >
                                                {{ $webmenu->getTranslatedAttribute('name', session('locale')) }} <i class="ph-bold ph-caret-down"></i>
                                            </button>
                                            <ul class="dropdown-menu drop_menu">
                                                @foreach($webmenu->children as $child)
                                                    <li>
                                                        <a class="dropdown-item fs-ten  {{ Request::is("$child->url") ? 'active' : '' }} "
                                                           href="/{{ $child->url }}"
                                                        >{{ $child->getTranslatedAttribute('name', session('locale')) }}</a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </li>
                                    @else
                                        <li class="dropdown show-dropdown ">
                                            <a href="/{{ $webmenu->url }}"
                                               class="fs-ten m-0 p-0 {{ Request::is("$webmenu->url") ? 'active' : '' }}">{{ $webmenu->getTranslatedAttribute('name', session('locale')) }}</a>
                                        </li>
                                    @endif

                                @endforeach

                            </ul>

                        </div>
                        <div class="d-flex">

                            <div
                                class="right-area custom-pos position-relative d-flex gap-4 gap-xl-5 align-items-center ms-auto"
                            >
                                <button
                                    id="toggle"
                                    class="dark_btn d-flex justify-content-center align-items-center fs-three p6-color mood_toggle"
                                >
                                    <i class="ph-fill ph-moon fs-five" id="mood_icon"></i>
                                </button>

                                @foreach($languages as $language)
                                    @if(session('locale') !== $language)
                                    <div class="dark_btn  d-flex justify-content-center align-items-center fs-three p6-color mood_toggle">
                                        <a href="{{ url("/locales/$language") }}" class="text-uppercase ">{{ $language }}</a>
                                    </div>
                                    @endif
                                @endforeach


                            </div>


                            <button
                                class="navbar-toggler "
                                type="button"
                                data-bs-toggle="collapse"
                                aria-label="Navbar Toggler"
                                data-bs-target="#navbar-content"
                                aria-expanded="true"
                                id="nav-icon3"
                            >
                                <span></span><span></span><span></span><span></span>
                            </button>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header-section end -->
