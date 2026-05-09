<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Service;
use App\Models\AboutUs;
use App\Models\Portfolio;
use App\Models\Partner;
use App\Models\Blog;
use App\Models\Contact;
use App\Models\ContactInfo;
use App\Models\Team;

class GeoLandingController extends Controller
{
    public function show($locale, $citySlug)
    {
        $cities = config('seo_cities');

        if (!isset($cities[$citySlug])) {
            abort(404);
        }

        $cityData = $cities[$citySlug][$locale] ?? $cities[$citySlug]['en'];
        $cityName = $cityData['name'];

        $geoSeo = new \stdClass();
        if ($locale === 'ru') {
            $geoSeo->title       = "Разработка и создание сайтов под ключ в {$cityName} | WELLSOFT";
            $geoSeo->description = "Профессиональная разработка сайтов, интернет-магазинов и корпоративных порталов в {$cityName}. Закажите качественный веб-сайт от экспертов WELLSOFT.";
            $geoSeo->keywords    = "создание сайтов {$cityName}, разработка сайтов {$cityName}, заказать сайт {$cityName}, веб студия";
            $geoSeo->h1          = "Разработка сайтов под ключ в {$cityName}";
        } else {
            $geoSeo->title       = "Website Development & Web Design in {$cityName} | WELLSOFT";
            $geoSeo->description = "Top-tier website development, e-commerce solutions, and custom software in {$cityName}. Hire WELLSOFT experts.";
            $geoSeo->keywords    = "website development {$cityName}, web design {$cityName}, hire web developers {$cityName}";
            $geoSeo->h1          = "Custom Website Development in {$cityName}";
        }

        // Pass exact same variables as WebMenuController@index
        $services     = Service::query()->with(['serviceItems'])->get();
        $aboutUs      = AboutUs::query()->with(['aboutItems.aboutUsItemChildren'])->get();
        $portfolios   = Portfolio::query()->with(['portfolioItems.children'])->get();
        $teams        = Team::query()->with(['teamMembers'])->get();
        $blogs        = Blog::query()->with(['blogItems.services'])->get();
        $contacts     = Contact::query()->get();
        $contactInfos = ContactInfo::query()->whereNull('parent_id')->with('children')->get();
        $partners     = Partner::query()->with(['partnerInfo'])->where('type', 'clients')->get();

        return view('welcome', compact(
            'services', 'aboutUs', 'portfolios', 'partners',
            'teams', 'blogs', 'contacts', 'contactInfos', 'geoSeo'
        ));
    }
}
