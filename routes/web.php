<?php

use App\Http\Controllers\Web\AboutUsController;
use App\Http\Controllers\Web\PortfolioController;
use App\Http\Controllers\Web\PrivacyPolicyController;
use App\Http\Controllers\Web\TermConditionalController;
use App\Http\Controllers\Web\WebMenuController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Web\ServiceController;
use App\Http\Controllers\Web\BlogController;
use App\Http\Controllers\Web\TeamController;
use App\Http\Controllers\Web\ContactController;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/sitemap.xml', function (Request $request) {
    $sitemap = Sitemap::create();

    // Add URLs to the sitemap
    $sitemap->add(Url::create('/'));
    $sitemap->add(Url::create('/about'));
    $sitemap->add(Url::create('/services'));
    $sitemap->add(Url::create('/blog'));
    $sitemap->add(Url::create('/team'));
    $sitemap->add(Url::create('/contact'));
    $sitemap->add(Url::create('/portfolio'));
    $sitemap->add(Url::create('/terms'));
    $sitemap->add(Url::create('/privacy'));


    // Generate the sitemap
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
