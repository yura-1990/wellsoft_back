<?php

use App\Http\Controllers\Web\AboutUsController;
use App\Http\Controllers\Web\PortfolioController;
use App\Http\Controllers\Web\PrivacyPolicyController;
use App\Http\Controllers\Web\TermConditionalController;
use App\Http\Controllers\Web\WebMenuController;
use App\Http\Controllers\Web\ServiceController;
use App\Http\Controllers\Web\BlogController;
use App\Http\Controllers\Web\TeamController;
use App\Http\Controllers\Web\ContactController;
use App\Http\Controllers\GeoLandingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\SitemapIndex;
use Spatie\Sitemap\Tags\Url;

Route::get('/sitemap.xml', function () {
    return SitemapIndex::create()
        ->add('/sitemap-pages.xml')
        ->add('/sitemap-blog.xml')
        ->add('/sitemap-geo.xml');
});

Route::get('/sitemap-pages.xml', function (Request $request) {
    $sitemap = Sitemap::create();
    $locales = ['ru', 'en'];
    $pages = ['/', '/about', '/services', '/blog', '/team', '/contact', '/portfolio', '/terms', '/privacy', '/testimonials', '/faqs'];
    
    foreach ($locales as $locale) {
        foreach ($pages as $page) {
            $url = $page === '/' ? "/$locale" : "/$locale$page";
            $sitemap->add(Url::create($url)
                ->setChangeFrequency(Url::CHANGE_FREQUENCY_WEEKLY)
                ->setPriority($page === '/' ? 1.0 : 0.8)
            );
        }
    }
    return $sitemap->toResponse($request);
});

Route::get('/sitemap-blog.xml', function (Request $request) {
    $sitemap = Sitemap::create();
    $locales = ['ru', 'en'];
    
    try {
        \App\Models\BlogItem::all()->each(function ($blogItem) use ($sitemap, $locales) {
            foreach ($locales as $locale) {
                $sitemap->add(
                    Url::create("/$locale/blog-items/{$blogItem->id}")
                        ->setLastModificationDate($blogItem->updated_at)
                        ->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)
                        ->setPriority(0.8)
                );
            }
        });
    } catch (\Exception $e) {}

    return $sitemap->toResponse($request);
});

Route::get('/sitemap-geo.xml', function (Request $request) {
    $sitemap = Sitemap::create();
    $locales = ['ru', 'en'];
    $cities = array_keys(config('seo_cities', []));

    foreach ($locales as $locale) {
        foreach ($cities as $citySlug) {
            $sitemap->add(
                Url::create("/$locale/web-development/$citySlug")
                    ->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)
                    ->setPriority(0.7)
            );
        }
    }
    return $sitemap->toResponse($request);
});

Route::get('/', function () {
    return redirect('/ru');
});

Route::get('/locales/{locale}', function ($locale) {
    $availableLocales = config('voyager.multilingual.locales', ['ru', 'en']);
    if (in_array($locale, $availableLocales)) {
        Session::put('locale', $locale);
        $referer = request()->headers->get('referer');
        if ($referer) {
            $parsed = parse_url($referer);
            $path = $parsed['path'] ?? '/';
            $pathParts = explode('/', ltrim($path, '/'));
            if (isset($pathParts[0]) && in_array($pathParts[0], $availableLocales)) {
                $pathParts[0] = $locale;
                $newPath = '/' . implode('/', $pathParts);
                return redirect($newPath);
            }
        }
        return redirect("/$locale");
    }
    return redirect()->back();
});

Route::group(['prefix' => '{locale}', 'where' => ['locale' => 'ru|en'], 'middleware' => [\App\Http\Middleware\SetLocaleMiddleware::class]], function () {
        Route::get('/', [WebMenuController::class, 'index']);
        Route::controller(AboutUsController::class)->group(function () { Route::get('/about', 'aboutUs'); });
        Route::controller(ServiceController::class)->group(function () { Route::get('/services', 'services'); });
        Route::controller(BlogController::class)->group(function () { Route::get('/blog', 'blog'); Route::get('/blog-items/{blogItem}', 'blogItem'); });
        Route::controller(TeamController::class)->group(function () { Route::get('/team', 'team'); Route::get('/team-member/{teamMemeber}', 'teamMemeber'); });
        Route::controller(ContactController::class)->group(function () { Route::get('/contact', 'contact'); Route::post('/contact', 'contactClient'); });
        Route::get('/testimonials', function () { return view('pages.testimonials'); });
        Route::get('/faqs', function () { return view('pages.faqs'); });
        Route::controller(PortfolioController::class)->group(function () { Route::get('/portfolio', 'portfolio'); });
        Route::controller(TermConditionalController::class)->group(function () { Route::get('/terms', 'terms'); });
        Route::controller(PrivacyPolicyController::class)->group(function () { Route::get('/privacy', 'privacy'); });
        Route::get('/web-development/{citySlug}', [GeoLandingController::class, 'show']);
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});