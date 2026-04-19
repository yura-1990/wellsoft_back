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
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

Route::get('/sitemap.xml', function (Request $request) {
    $sitemap = Sitemap::create()
        ->add(
            Url::create('/')
                ->setChangeFrequency(Url::CHANGE_FREQUENCY_WEEKLY)
                ->setPriority(1.0)
        )
        ->add(Url::create('/about')->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)->setPriority(0.8))
        ->add(Url::create('/services')->setChangeFrequency(Url::CHANGE_FREQUENCY_WEEKLY)->setPriority(0.9))
        ->add(Url::create('/blog')->setChangeFrequency(Url::CHANGE_FREQUENCY_WEEKLY)->setPriority(0.9))
        ->add(Url::create('/team')->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)->setPriority(0.7))
        ->add(Url::create('/contact')->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)->setPriority(0.8))
        ->add(Url::create('/portfolio')->setChangeFrequency(Url::CHANGE_FREQUENCY_WEEKLY)->setPriority(0.9))
        ->add(Url::create('/terms')->setChangeFrequency(Url::CHANGE_FREQUENCY_YEARLY)->setPriority(0.3))
        ->add(Url::create('/privacy')->setChangeFrequency(Url::CHANGE_FREQUENCY_YEARLY)->setPriority(0.3))
        ->add(Url::create('/testimonials')->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)->setPriority(0.6))
        ->add(Url::create('/price')->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)->setPriority(0.7))
        ->add(Url::create('/faqs')->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)->setPriority(0.6));

    // Add dynamic blog items
    try {
        \App\Models\BlogItem::all()->each(function ($blogItem) use ($sitemap) {
            $sitemap->add(
                Url::create("/blog-items/{$blogItem->id}")
                    ->setLastModificationDate($blogItem->updated_at)
                    ->setChangeFrequency(Url::CHANGE_FREQUENCY_MONTHLY)
                    ->setPriority(0.8)
            );
        });
    } catch (\Exception $e) {
        // Fallback if model doesn't exist or other issue
    }

    return $sitemap->toResponse($request);
});

Route::get('/locales/{locale}', function ($locale) {
    $availableLocales = config('voyager.multilingual.locales');

    if (in_array($locale, $availableLocales)) {
        App::setLocale($locale);
        Session::put('locale', $locale);
    }

    return redirect()->back();
});

Route::get('/', [WebMenuController::class, 'index']);

Route::controller(AboutUsController::class)->group(function () {
    Route::get('/about', 'aboutUs');
});

Route::controller(ServiceController::class)->group(function () {
    Route::get('/services', 'services');
});

Route::controller(BlogController::class)->group(function () {
    Route::get('/blog', 'blog');
    Route::get('/blog-items/{blogItem}', 'blogItem');
});

Route::controller(TeamController::class)->group(function () {
    Route::get('/team', 'team');
    Route::get('/team-member/{teamMemeber}', 'teamMemeber');
});

Route::controller(ContactController::class)->group(function () {
    Route::get('/contact', 'contact');
    Route::post('/contact', 'contactClient');
});

Route::get('/testimonials', function () {
    return view('pages.testimonials');
});

Route::get('/price', function () {
    return view('pages.price');
});

Route::get('/faqs', function () {
    return view('pages.faqs');
});

Route::controller(PortfolioController::class)->group(function () {
    Route::get('/portfolio', 'portfolio');
});

Route::controller(TermConditionalController::class)->group(function () {
    Route::get('/terms', 'terms');
});

Route::controller(PrivacyPolicyController::class)->group(function () {
    Route::get('/privacy', 'privacy');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});